(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g266489_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266496_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266498_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266500_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266502_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266504_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266516_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266518_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266520_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266522_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266524_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx259947%_)
        (let* ((_%g259951259969%_
                (lambda (_%g259952259965%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259952259965%_))))
               (_%g259950260024%_
                (lambda (_%g259952259973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259952259973%_))
                      (let ((_%e259955259976%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259952259973%_))))
                        (let ((_%hd259956259980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259955259976%_)))
                              (_%tl259957259983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259955259976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259957259983%_))
                              (let ((_%e259958259986%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259957259983%_))))
                                (let ((_%hd259959259990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259958259986%_)))
                                      (_%tl259960259993%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259958259986%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259960259993%_))
                                      (let ((_%e259961259996%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259960259993%_))))
                                        (let ((_%hd259962260000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259961259996%_)))
                                              (_%tl259963260003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259961259996%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259963260003%_))
                                              ((lambda (_%g259953260006%_
                                                        _%g259954260008%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g259954260008%_))
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
                               (cons _%g259954260008%_ '()))
                         (cons _%g259953260006%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g259951259969%_
                                                      _%g259952259973%_)))
                                               _%hd259962260000%_
                                               _%hd259959259990%_)
                                              (_%g259951259969%_
                                               _%g259952259973%_))))
                                      (_%g259951259969%_ _%g259952259973%_))))
                              (_%g259951259969%_ _%g259952259973%_))))
                      (_%g259951259969%_ _%g259952259973%_)))))
          (_%g259950260024%_ _%$stx259947%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx260028%_)
        (let* ((_%g260032260050%_
                (lambda (_%g260033260046%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260033260046%_))))
               (_%g260031260105%_
                (lambda (_%g260033260054%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260033260054%_))
                      (let ((_%e260036260057%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260033260054%_))))
                        (let ((_%hd260037260061%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260036260057%_)))
                              (_%tl260038260064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260036260057%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260038260064%_))
                              (let ((_%e260039260067%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260038260064%_))))
                                (let ((_%hd260040260071%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260039260067%_)))
                                      (_%tl260041260074%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260039260067%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260041260074%_))
                                      (let ((_%e260042260077%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260041260074%_))))
                                        (let ((_%hd260043260081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260042260077%_)))
                                              (_%tl260044260084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260042260077%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260044260084%_))
                                              ((lambda (_%g260034260087%_
                                                        _%g260035260089%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g260035260089%_))
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
                               (cons _%g260035260089%_ '()))
                         (cons _%g260034260087%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g260032260050%_
                                                      _%g260033260054%_)))
                                               _%hd260043260081%_
                                               _%hd260040260071%_)
                                              (_%g260032260050%_
                                               _%g260033260054%_))))
                                      (_%g260032260050%_ _%g260033260054%_))))
                              (_%g260032260050%_ _%g260033260054%_))))
                      (_%g260032260050%_ _%g260033260054%_)))))
          (_%g260031260105%_ _%$stx260028%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx260109%_)
        (let* ((_%g260113260142%_
                (lambda (_%g260114260138%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260114260138%_))))
               (_%g260112260238%_
                (lambda (_%g260114260146%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260114260146%_))
                      (let ((_%e260117260149%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260114260146%_))))
                        (let ((_%hd260118260153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260117260149%_)))
                              (_%tl260119260156%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260117260149%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260119260156%_))
                              (let ((_g266467_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl260119260156%_
                                        '0))))
                                (begin
                                  (let ((_g266468_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266467_)
                                               (##values-length _g266467_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266468_ 2)))
                                        (error "Context expects 2 values"
                                               _g266468_)))
                                  (let ((_%target260120260159%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266467_ 0)))
                                        (_%tl260122260162%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266467_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260122260162%_))
                                        (letrec ((_%loop260123260165%_
                                                  (lambda (_%hd260121260169%_
                                                           _%type260127260172%_
                                                           _%symbol260128260173%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd260121260169%_))
                                                        (let ((_%e260124260175%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd260121260169%_))))
                  (let ((_%lp-hd260125260179%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260124260175%_)))
                        (_%lp-tl260126260182%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260124260175%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd260125260179%_))
                        (let ((_%e260131260185%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd260125260179%_))))
                          (let ((_%hd260132260189%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260131260185%_)))
                                (_%tl260133260192%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260131260185%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260133260192%_))
                                (let ((_%e260134260195%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260133260192%_))))
                                  (let ((_%hd260135260199%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260134260195%_)))
                                        (_%tl260136260202%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260134260195%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260136260202%_))
                                        (_%loop260123260165%_
                                         _%lp-tl260126260182%_
                                         (cons _%hd260135260199%_
                                               _%type260127260172%_)
                                         (cons _%hd260132260189%_
                                               _%symbol260128260173%_))
                                        (_%g260113260142%_
                                         _%g260114260146%_))))
                                (_%g260113260142%_ _%g260114260146%_))))
                        (_%g260113260142%_ _%g260114260146%_))))
                (let ((_%type260129260205%_ (reverse _%type260127260172%_))
                      (_%symbol260130260207%_
                       (reverse _%symbol260128260173%_)))
                  ((lambda (_%g260115260209%_ _%g260116260211%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g260115260209%_
                                _%g260116260211%_))
                             (let ((__tmp266469
                                    (lambda (_%g260226260230%_
                                             _%g260227260233%_
                                             _%g260228260235%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g260227260233%_
                                                        (cons _%g260226260230%_
                                                              '())))
                                            _%g260228260235%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp266469
                                '()
                                _%g260115260209%_
                                _%g260116260211%_)))))
                   _%type260129260205%_
                   _%symbol260130260207%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop260123260165%_
                                           _%target260120260159%_
                                           '()
                                           '()))
                                        (_%g260113260142%_
                                         _%g260114260146%_)))))
                              (_%g260113260142%_ _%g260114260146%_))))
                      (_%g260113260142%_ _%g260114260146%_)))))
          (_%g260112260238%_ _%$stx260109%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx260243%_)
        (let* ((_%__stx265778265779%_ _%$stx260243%_)
               (_%g260248260290%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265778265779%_)))))
          (let ((_%__kont265781265782%_
                 (lambda (_%g260250260418%_
                          _%g260251260420%_
                          _%g260252260421%_
                          _%g260253260422%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260253260422%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260252260421%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g260251260420%_ '()))
                                           (cons _%g260250260418%_ '())))))))
                (_%__kont265783265784%_
                 (lambda (_%g260269260337%_
                          _%g260270260339%_
                          _%g260271260340%_
                          _%g260272260341%_)
                   (cons _%g260272260341%_
                         (cons _%g260271260340%_
                               (cons _%g260270260339%_
                                     (cons _%g260269260337%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match265817265818%_
                   (lambda (_%e260254260368%_
                            _%hd260255260372%_
                            _%tl260256260375%_
                            _%e260257260378%_
                            _%hd260258260382%_
                            _%tl260259260385%_
                            _%e260260260388%_
                            _%hd260261260392%_
                            _%tl260262260395%_
                            _%e260263260398%_
                            _%hd260264260402%_
                            _%tl260265260405%_
                            _%e260266260408%_
                            _%hd260267260412%_
                            _%tl260268260415%_)
                     (let ((_%g260250260418%_ _%hd260267260412%_)
                           (_%g260251260420%_ _%hd260264260402%_)
                           (_%g260252260421%_ _%hd260261260392%_)
                           (_%g260253260422%_ _%hd260258260382%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260253260422%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260252260421%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260251260420%_)))
                           (_%__kont265781265782%_
                            _%g260250260418%_
                            _%g260251260420%_
                            _%g260252260421%_
                            _%g260253260422%_)
                           (let ()
                             (declare (not safe))
                             (_%g260248260290%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx265778265779%_))
                  (let ((_%e260254260368%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx265778265779%_))))
                    (let ((_%tl260256260375%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260254260368%_)))
                          (_%hd260255260372%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260254260368%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260256260375%_))
                          (let ((_%e260257260378%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl260256260375%_))))
                            (let ((_%tl260259260385%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260257260378%_)))
                                  (_%hd260258260382%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260257260378%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl260259260385%_))
                                  (let ((_%e260260260388%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl260259260385%_))))
                                    (let ((_%tl260262260395%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e260260260388%_)))
                                          (_%hd260261260392%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e260260260388%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl260262260395%_))
                                          (let ((_%e260263260398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl260262260395%_))))
                                            (let ((_%tl260265260405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e260263260398%_)))
                                                  (_%hd260264260402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e260263260398%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl260265260405%_))
                                                  (let ((_%e260266260408%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl260265260405%_))))
                                                    (let ((_%tl260268260415%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e260266260408%_)))
                                                          (_%hd260267260412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e260266260408%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl260268260415%_))
                                                          (_%__match265817265818%_
                                                           _%e260254260368%_
                                                           _%hd260255260372%_
                                                           _%tl260256260375%_
                                                           _%e260257260378%_
                                                           _%hd260258260382%_
                                                           _%tl260259260385%_
                                                           _%e260260260388%_
                                                           _%hd260261260392%_
                                                           _%tl260262260395%_
                                                           _%e260263260398%_
                                                           _%hd260264260402%_
                                                           _%tl260265260405%_
                                                           _%e260266260408%_
                                                           _%hd260267260412%_
                                                           _%tl260268260415%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g260248260290%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260265260405%_))
                                                      (_%__kont265783265784%_
                                                       _%hd260264260402%_
                                                       _%hd260261260392%_
                                                       _%hd260258260382%_
                                                       _%hd260255260372%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g260248260290%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g260248260290%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g260248260290%_)))))
                          (let () (declare (not safe)) (_%g260248260290%_)))))
                  (let () (declare (not safe)) (_%g260248260290%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx260447%_)
        (let* ((_%g260451260486%_
                (lambda (_%g260452260482%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260452260482%_))))
               (_%g260450260599%_
                (lambda (_%g260452260490%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260452260490%_))
                      (let ((_%e260456260493%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260452260490%_))))
                        (let ((_%hd260457260497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260456260493%_)))
                              (_%tl260458260500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260456260493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260458260500%_))
                              (let ((_g266470_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl260458260500%_
                                        '0))))
                                (begin
                                  (let ((_g266471_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266470_)
                                               (##values-length _g266470_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266471_ 2)))
                                        (error "Context expects 2 values"
                                               _g266471_)))
                                  (let ((_%target260459260503%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266470_ 0)))
                                        (_%tl260461260506%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266470_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260461260506%_))
                                        (letrec ((_%loop260462260509%_
                                                  (lambda (_%hd260460260513%_
                                                           _%symbol260466260516%_
                                                           _%method260467260517%_
                                                           _%type-t260468260518%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd260460260513%_))
                                                        (let ((_%e260463260520%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd260460260513%_))))
                  (let ((_%lp-hd260464260524%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260463260520%_)))
                        (_%lp-tl260465260527%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260463260520%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd260464260524%_))
                        (let ((_%e260472260530%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd260464260524%_))))
                          (let ((_%hd260473260534%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260472260530%_)))
                                (_%tl260474260537%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260472260530%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260474260537%_))
                                (let ((_%e260475260540%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260474260537%_))))
                                  (let ((_%hd260476260544%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260475260540%_)))
                                        (_%tl260477260547%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260475260540%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl260477260547%_))
                                        (let ((_%e260478260550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl260477260547%_))))
                                          (let ((_%hd260479260554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e260478260550%_)))
                                                (_%tl260480260557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e260478260550%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260480260557%_))
                                                (_%loop260462260509%_
                                                 _%lp-tl260465260527%_
                                                 (cons _%hd260479260554%_
                                                       _%symbol260466260516%_)
                                                 (cons _%hd260476260544%_
                                                       _%method260467260517%_)
                                                 (cons _%hd260473260534%_
                                                       _%type-t260468260518%_))
                                                (_%g260451260486%_
                                                 _%g260452260490%_))))
                                        (_%g260451260486%_
                                         _%g260452260490%_))))
                                (_%g260451260486%_ _%g260452260490%_))))
                        (_%g260451260486%_ _%g260452260490%_))))
                (let ((_%symbol260469260560%_ (reverse _%symbol260466260516%_))
                      (_%method260470260562%_ (reverse _%method260467260517%_))
                      (_%type-t260471260563%_
                       (reverse _%type-t260468260518%_)))
                  ((lambda (_%g260453260565%_
                            _%g260454260567%_
                            _%g260455260568%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g260453260565%_
                                _%g260454260567%_
                                _%g260455260568%_))
                             (let ((__tmp266472
                                    (lambda (_%g260584260589%_
                                             _%g260585260592%_
                                             _%g260586260594%_
                                             _%g260587260596%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g260586260594%_
                                                        (cons _%g260585260592%_
                                                              (cons _%g260584260589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g260587260596%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp266472
                                '()
                                _%g260453260565%_
                                _%g260454260567%_
                                _%g260455260568%_)))))
                   _%symbol260469260560%_
                   _%method260470260562%_
                   _%type-t260471260563%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop260462260509%_
                                           _%target260459260503%_
                                           '()
                                           '()
                                           '()))
                                        (_%g260451260486%_
                                         _%g260452260490%_)))))
                              (_%g260451260486%_ _%g260452260490%_))))
                      (_%g260451260486%_ _%g260452260490%_)))))
          (_%g260450260599%_ _%$stx260447%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx260604%_)
        (let* ((_%g260608260641%_
                (lambda (_%g260609260637%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260609260637%_))))
               (_%g260607260751%_
                (lambda (_%g260609260645%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260609260645%_))
                      (let ((_%e260613260648%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260609260645%_))))
                        (let ((_%hd260614260652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260613260648%_)))
                              (_%tl260615260655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260613260648%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260615260655%_))
                              (let ((_%e260616260658%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260615260655%_))))
                                (let ((_%hd260617260662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260616260658%_)))
                                      (_%tl260618260665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260616260658%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl260618260665%_))
                                      (let ((_g266473_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl260618260665%_
                                                '0))))
                                        (begin
                                          (let ((_g266474_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g266473_)
                                                       (##values-length
                                                        _g266473_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g266474_ 2)))
                                                (error "Context expects 2 values"
                                                       _g266474_)))
                                          (let ((_%target260619260668%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g266473_ 0)))
                                                (_%tl260621260671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g266473_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260621260671%_))
                                                (letrec ((_%loop260622260674%_
                                                          (lambda (_%hd260620260678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol260626260681%_
                           _%method260627260682%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd260620260678%_))
                        (let ((_%e260623260684%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd260620260678%_))))
                          (let ((_%lp-hd260624260688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260623260684%_)))
                                (_%lp-tl260625260691%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260623260684%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd260624260688%_))
                                (let ((_%e260630260694%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd260624260688%_))))
                                  (let ((_%hd260631260698%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260630260694%_)))
                                        (_%tl260632260701%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260630260694%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl260632260701%_))
                                        (let ((_%e260633260704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl260632260701%_))))
                                          (let ((_%hd260634260708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e260633260704%_)))
                                                (_%tl260635260711%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e260633260704%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260635260711%_))
                                                (_%loop260622260674%_
                                                 _%lp-tl260625260691%_
                                                 (cons _%hd260634260708%_
                                                       _%symbol260626260681%_)
                                                 (cons _%hd260631260698%_
                                                       _%method260627260682%_))
                                                (_%g260608260641%_
                                                 _%g260609260645%_))))
                                        (_%g260608260641%_
                                         _%g260609260645%_))))
                                (_%g260608260641%_ _%g260609260645%_))))
                        (let ((_%symbol260628260714%_
                               (reverse _%symbol260626260681%_))
                              (_%method260629260716%_
                               (reverse _%method260627260682%_)))
                          ((lambda (_%g260610260718%_
                                    _%g260611260720%_
                                    _%g260612260721%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g260610260718%_
                                        _%g260611260720%_))
                                     (let ((__tmp266475
                                            (lambda (_%g260739260743%_
                                                     _%g260740260746%_
                                                     _%g260741260748%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g260612260721%_
                                                                (cons _%g260740260746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g260739260743%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g260741260748%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp266475
                                        '()
                                        _%g260610260718%_
                                        _%g260611260720%_)))))
                           _%symbol260628260714%_
                           _%method260629260716%_
                           _%hd260617260662%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop260622260674%_
                                                   _%target260619260668%_
                                                   '()
                                                   '()))
                                                (_%g260608260641%_
                                                 _%g260609260645%_)))))
                                      (_%g260608260641%_ _%g260609260645%_))))
                              (_%g260608260641%_ _%g260609260645%_))))
                      (_%g260608260641%_ _%g260609260645%_)))))
          (_%g260607260751%_ _%$stx260604%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx260756%_)
        (let* ((_%g260760260774%_
                (lambda (_%g260761260770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260761260770%_))))
               (_%g260759260815%_
                (lambda (_%g260761260778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260761260778%_))
                      (let ((_%e260763260781%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260761260778%_))))
                        (let ((_%hd260764260785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260763260781%_)))
                              (_%tl260765260788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260763260781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260765260788%_))
                              (let ((_%e260766260791%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260765260788%_))))
                                (let ((_%hd260767260795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260766260791%_)))
                                      (_%tl260768260798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260766260791%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260768260798%_))
                                      ((lambda (_%g260762260801%_)
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
                                                           (cons _%g260762260801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd260767260795%_)
                                      (_%g260760260774%_ _%g260761260778%_))))
                              (_%g260760260774%_ _%g260761260778%_))))
                      (_%g260760260774%_ _%g260761260778%_)))))
          (_%g260759260815%_ _%$stx260756%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx260819%_)
        (let* ((_%g260823260877%_
                (lambda (_%g260824260873%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260824260873%_))))
               (_%g260822261058%_
                (lambda (_%g260824260881%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260824260881%_))
                      (let ((_%e260836260884%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260824260881%_))))
                        (let ((_%hd260837260888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260836260884%_)))
                              (_%tl260838260891%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260836260884%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260838260891%_))
                              (let ((_%e260839260894%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260838260891%_))))
                                (let ((_%hd260840260898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260839260894%_)))
                                      (_%tl260841260901%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260839260894%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260841260901%_))
                                      (let ((_%e260842260904%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260841260901%_))))
                                        (let ((_%hd260843260908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260842260904%_)))
                                              (_%tl260844260911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260842260904%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260844260911%_))
                                              (let ((_%e260845260914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl260844260911%_))))
                                                (let ((_%hd260846260918%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260845260914%_)))
                                                      (_%tl260847260921%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260845260914%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl260847260921%_))
                                                      (let ((_%e260848260924%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl260847260921%_))))
                (let ((_%hd260849260928%_
                       (let () (declare (not safe)) (##car _%e260848260924%_)))
                      (_%tl260850260931%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e260848260924%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl260850260931%_))
                      (let ((_%e260851260934%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl260850260931%_))))
                        (let ((_%hd260852260938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260851260934%_)))
                              (_%tl260853260941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260851260934%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260853260941%_))
                              (let ((_%e260854260944%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260853260941%_))))
                                (let ((_%hd260855260948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260854260944%_)))
                                      (_%tl260856260951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260854260944%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260856260951%_))
                                      (let ((_%e260857260954%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260856260951%_))))
                                        (let ((_%hd260858260958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260857260954%_)))
                                              (_%tl260859260961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260857260954%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260859260961%_))
                                              (let ((_%e260860260964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl260859260961%_))))
                                                (let ((_%hd260861260968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260860260964%_)))
                                                      (_%tl260862260971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260860260964%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl260862260971%_))
                                                      (let ((_%e260863260974%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl260862260971%_))))
                (let ((_%hd260864260978%_
                       (let () (declare (not safe)) (##car _%e260863260974%_)))
                      (_%tl260865260981%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e260863260974%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl260865260981%_))
                      (let ((_%e260866260984%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl260865260981%_))))
                        (let ((_%hd260867260988%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260866260984%_)))
                              (_%tl260868260991%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260866260984%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260868260991%_))
                              (let ((_%e260869260994%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260868260991%_))))
                                (let ((_%hd260870260998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260869260994%_)))
                                      (_%tl260871261001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260869260994%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260871261001%_))
                                      ((lambda (_%g260825261004%_
                                                _%g260826261006%_
                                                _%g260827261007%_
                                                _%g260828261008%_
                                                _%g260829261009%_
                                                _%g260830261010%_
                                                _%g260831261011%_
                                                _%g260832261012%_
                                                _%g260833261013%_
                                                _%g260834261014%_
                                                _%g260835261015%_)
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
                                                           (cons _%g260835261015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g260834261014%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g260833261013%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260832261012%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260831261011%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g260830261010%_ '()))
                                           (cons _%g260829261009%_
                                                 (cons _%g260828261008%_
                                                       (cons _%g260827261007%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g260826261006%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g260825261004%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd260870260998%_
                                       _%hd260867260988%_
                                       _%hd260864260978%_
                                       _%hd260861260968%_
                                       _%hd260858260958%_
                                       _%hd260855260948%_
                                       _%hd260852260938%_
                                       _%hd260849260928%_
                                       _%hd260846260918%_
                                       _%hd260843260908%_
                                       _%hd260840260898%_)
                                      (_%g260823260877%_ _%g260824260881%_))))
                              (_%g260823260877%_ _%g260824260881%_))))
                      (_%g260823260877%_ _%g260824260881%_))))
              (_%g260823260877%_ _%g260824260881%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g260823260877%_
                                               _%g260824260881%_))))
                                      (_%g260823260877%_ _%g260824260881%_))))
                              (_%g260823260877%_ _%g260824260881%_))))
                      (_%g260823260877%_ _%g260824260881%_))))
              (_%g260823260877%_ _%g260824260881%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g260823260877%_
                                               _%g260824260881%_))))
                                      (_%g260823260877%_ _%g260824260881%_))))
                              (_%g260823260877%_ _%g260824260881%_))))
                      (_%g260823260877%_ _%g260824260881%_)))))
          (_%g260822261058%_ _%$stx260819%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx261062%_)
        (let* ((_%g261066261080%_
                (lambda (_%g261067261076%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261067261076%_))))
               (_%g261065261121%_
                (lambda (_%g261067261084%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261067261084%_))
                      (let ((_%e261069261087%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261067261084%_))))
                        (let ((_%hd261070261091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261069261087%_)))
                              (_%tl261071261094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261069261087%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261071261094%_))
                              (let ((_%e261072261097%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261071261094%_))))
                                (let ((_%hd261073261101%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261072261097%_)))
                                      (_%tl261074261104%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261072261097%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261074261104%_))
                                      ((lambda (_%g261068261107%_)
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
                                                           (cons _%g261068261107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261073261101%_)
                                      (_%g261066261080%_ _%g261067261084%_))))
                              (_%g261066261080%_ _%g261067261084%_))))
                      (_%g261066261080%_ _%g261067261084%_)))))
          (_%g261065261121%_ _%$stx261062%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx261125%_)
        (let* ((_%g261129261143%_
                (lambda (_%g261130261139%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261130261139%_))))
               (_%g261128261184%_
                (lambda (_%g261130261147%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261130261147%_))
                      (let ((_%e261132261150%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261130261147%_))))
                        (let ((_%hd261133261154%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261132261150%_)))
                              (_%tl261134261157%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261132261150%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261134261157%_))
                              (let ((_%e261135261160%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261134261157%_))))
                                (let ((_%hd261136261164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261135261160%_)))
                                      (_%tl261137261167%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261135261160%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261137261167%_))
                                      ((lambda (_%g261131261170%_)
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
                                                           (cons _%g261131261170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261136261164%_)
                                      (_%g261129261143%_ _%g261130261147%_))))
                              (_%g261129261143%_ _%g261130261147%_))))
                      (_%g261129261143%_ _%g261130261147%_)))))
          (_%g261128261184%_ _%$stx261125%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx261188%_)
        (let* ((_%g261192261214%_
                (lambda (_%g261193261210%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261193261210%_))))
               (_%g261191261283%_
                (lambda (_%g261193261218%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261193261218%_))
                      (let ((_%e261197261221%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261193261218%_))))
                        (let ((_%hd261198261225%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261197261221%_)))
                              (_%tl261199261228%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261197261221%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261199261228%_))
                              (let ((_%e261200261231%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261199261228%_))))
                                (let ((_%hd261201261235%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261200261231%_)))
                                      (_%tl261202261238%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261200261231%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261202261238%_))
                                      (let ((_%e261203261241%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261202261238%_))))
                                        (let ((_%hd261204261245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261203261241%_)))
                                              (_%tl261205261248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261203261241%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261205261248%_))
                                              (let ((_%e261206261251%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261205261248%_))))
                                                (let ((_%hd261207261255%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261206261251%_)))
                                                      (_%tl261208261258%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261206261251%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261208261258%_))
                                                      ((lambda (_%g261194261261%_
                                                                _%g261195261263%_
                                                                _%g261196261264%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261196261264%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g261195261263%_ '()))
                                   (cons _%g261194261261%_ '())))))
               _%hd261207261255%_
               _%hd261204261245%_
               _%hd261201261235%_)
              (_%g261192261214%_ _%g261193261218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261192261214%_
                                               _%g261193261218%_))))
                                      (_%g261192261214%_ _%g261193261218%_))))
                              (_%g261192261214%_ _%g261193261218%_))))
                      (_%g261192261214%_ _%g261193261218%_)))))
          (_%g261191261283%_ _%$stx261188%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx261287%_)
        (let* ((_%g261291261313%_
                (lambda (_%g261292261309%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261292261309%_))))
               (_%g261290261382%_
                (lambda (_%g261292261317%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261292261317%_))
                      (let ((_%e261296261320%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261292261317%_))))
                        (let ((_%hd261297261324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261296261320%_)))
                              (_%tl261298261327%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261296261320%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261298261327%_))
                              (let ((_%e261299261330%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261298261327%_))))
                                (let ((_%hd261300261334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261299261330%_)))
                                      (_%tl261301261337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261299261330%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261301261337%_))
                                      (let ((_%e261302261340%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261301261337%_))))
                                        (let ((_%hd261303261344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261302261340%_)))
                                              (_%tl261304261347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261302261340%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261304261347%_))
                                              (let ((_%e261305261350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261304261347%_))))
                                                (let ((_%hd261306261354%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261305261350%_)))
                                                      (_%tl261307261357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261305261350%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261307261357%_))
                                                      ((lambda (_%g261293261360%_
                                                                _%g261294261362%_
                                                                _%g261295261363%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261295261363%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g261294261362%_ '()))
                                   (cons _%g261293261360%_ '())))))
               _%hd261306261354%_
               _%hd261303261344%_
               _%hd261300261334%_)
              (_%g261291261313%_ _%g261292261317%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261291261313%_
                                               _%g261292261317%_))))
                                      (_%g261291261313%_ _%g261292261317%_))))
                              (_%g261291261313%_ _%g261292261317%_))))
                      (_%g261291261313%_ _%g261292261317%_)))))
          (_%g261290261382%_ _%$stx261287%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx261386%_)
        (let* ((_%g261390261404%_
                (lambda (_%g261391261400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261391261400%_))))
               (_%g261389261445%_
                (lambda (_%g261391261408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261391261408%_))
                      (let ((_%e261393261411%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261391261408%_))))
                        (let ((_%hd261394261415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261393261411%_)))
                              (_%tl261395261418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261393261411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261395261418%_))
                              (let ((_%e261396261421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261395261418%_))))
                                (let ((_%hd261397261425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261396261421%_)))
                                      (_%tl261398261428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261396261421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261398261428%_))
                                      ((lambda (_%g261392261431%_)
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
                                                           (cons _%g261392261431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261397261425%_)
                                      (_%g261390261404%_ _%g261391261408%_))))
                              (_%g261390261404%_ _%g261391261408%_))))
                      (_%g261390261404%_ _%g261391261408%_)))))
          (_%g261389261445%_ _%$stx261386%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx261449%_)
        (let* ((_%g261453261471%_
                (lambda (_%g261454261467%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261454261467%_))))
               (_%g261452261526%_
                (lambda (_%g261454261475%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261454261475%_))
                      (let ((_%e261457261478%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261454261475%_))))
                        (let ((_%hd261458261482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261457261478%_)))
                              (_%tl261459261485%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261457261478%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261459261485%_))
                              (let ((_%e261460261488%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261459261485%_))))
                                (let ((_%hd261461261492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261460261488%_)))
                                      (_%tl261462261495%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261460261488%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261462261495%_))
                                      (let ((_%e261463261498%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261462261495%_))))
                                        (let ((_%hd261464261502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261463261498%_)))
                                              (_%tl261465261505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261463261498%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261465261505%_))
                                              ((lambda (_%g261455261508%_
                                                        _%g261456261510%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g261456261510%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261455261508%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd261464261502%_
                                               _%hd261461261492%_)
                                              (_%g261453261471%_
                                               _%g261454261475%_))))
                                      (_%g261453261471%_ _%g261454261475%_))))
                              (_%g261453261471%_ _%g261454261475%_))))
                      (_%g261453261471%_ _%g261454261475%_)))))
          (_%g261452261526%_ _%$stx261449%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx261530%_)
        (let* ((_%__stx265846265847%_ _%$stx261530%_)
               (_%g261537261598%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265846265847%_)))))
          (let ((_%__kont265849265850%_
                 (lambda (_%g261539261836%_ _%g261540261838%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261540261838%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261539261836%_ '()))
                                     '())))))
                (_%__kont265851265852%_
                 (lambda (_%g261550261775%_
                          _%g261551261777%_
                          _%g261552261778%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261552261778%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261551261777%_ '()))
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
                                 (cons _%g261550261775%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont265853265854%_
                 (lambda (_%g261569261699%_ _%g261570261701%_)
                   (cons _%g261570261701%_
                         (cons _%g261569261699%_ (cons '#f '())))))
                (_%__kont265855265856%_
                 (lambda (_%g261577261649%_
                          _%g261578261651%_
                          _%g261579261652%_)
                   (cons _%g261579261652%_
                         (cons _%g261578261651%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g261577261649%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx265846265847%_))
                (let ((_%e261541261806%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx265846265847%_))))
                  (let ((_%tl261543261813%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261541261806%_)))
                        (_%hd261542261810%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261541261806%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl261543261813%_))
                        (let ((_%e261544261816%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl261543261813%_))))
                          (let ((_%tl261546261823%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261544261816%_)))
                                (_%hd261545261820%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261544261816%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261546261823%_))
                                (let ((_%e261547261826%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261546261823%_))))
                                  (let ((_%tl261549261833%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261547261826%_)))
                                        (_%hd261548261830%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261547261826%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261549261833%_))
                                        (_%__kont265849265850%_
                                         _%hd261548261830%_
                                         _%hd261545261820%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl261549261833%_))
                                            (let ((_%e261562261751%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl261549261833%_))))
                                              (let ((_%tl261564261758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e261562261751%_)))
                                                    (_%hd261563261755%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e261562261751%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd261563261755%_))
                                                    (let ((_%e261565261761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd261563261755%_))))
                                                      (if (equal? _%e261565261761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261564261758%_))
                      (let ((_%e261566261765%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261564261758%_))))
                        (let ((_%tl261568261772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261566261765%_)))
                              (_%hd261567261769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261566261765%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl261568261772%_))
                              (_%__kont265851265852%_
                               _%hd261567261769%_
                               _%hd261548261830%_
                               _%hd261545261820%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd261548261830%_))
                                  (let ((_%e261589261635%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd261548261830%_))))
                                    (declare (not safe))
                                    (_%g261537261598%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g261537261598%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd261548261830%_))
                          (let ((_%e261589261635%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd261548261830%_))))
                            (if (equal? _%e261589261635%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl261564261758%_))
                                    (_%__kont265855265856%_
                                     _%hd261563261755%_
                                     _%hd261545261820%_
                                     _%hd261542261810%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g261537261598%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g261537261598%_))))
                          (let () (declare (not safe)) (_%g261537261598%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd261548261830%_))
                      (let ((_%e261589261635%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd261548261830%_))))
                        (if (equal? _%e261589261635%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl261564261758%_))
                                (_%__kont265855265856%_
                                 _%hd261563261755%_
                                 _%hd261545261820%_
                                 _%hd261542261810%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g261537261598%_)))
                            (let () (declare (not safe)) (_%g261537261598%_))))
                      (let () (declare (not safe)) (_%g261537261598%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd261548261830%_))
                                                        (let ((_%e261589261635%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd261548261830%_))))
                  (if (equal? _%e261589261635%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl261564261758%_))
                          (_%__kont265855265856%_
                           _%hd261563261755%_
                           _%hd261545261820%_
                           _%hd261542261810%_)
                          (let () (declare (not safe)) (_%g261537261598%_)))
                      (let () (declare (not safe)) (_%g261537261598%_))))
                (let () (declare (not safe)) (_%g261537261598%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd261548261830%_))
                                                (let ((_%e261589261635%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd261548261830%_))))
                                                  (declare (not safe))
                                                  (_%g261537261598%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g261537261598%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl261546261823%_))
                                    (_%__kont265853265854%_
                                     _%hd261545261820%_
                                     _%hd261542261810%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g261537261598%_))))))
                        (let () (declare (not safe)) (_%g261537261598%_)))))
                (let () (declare (not safe)) (_%g261537261598%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx261857%_)
        (let* ((_%g261861261890%_
                (lambda (_%g261862261886%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261862261886%_))))
               (_%g261860261995%_
                (lambda (_%g261862261894%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261862261894%_))
                      (let ((_%e261864261897%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261862261894%_))))
                        (let ((_%hd261865261901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261864261897%_)))
                              (_%tl261866261904%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261864261897%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl261866261904%_))
                              (let ((_g266476_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl261866261904%_
                                        '0))))
                                (begin
                                  (let ((_g266477_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266476_)
                                               (##values-length _g266476_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266477_ 2)))
                                        (error "Context expects 2 values"
                                               _g266477_)))
                                  (let ((_%target261867261907%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266476_ 0)))
                                        (_%tl261869261910%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266476_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261869261910%_))
                                        (letrec ((_%loop261870261913%_
                                                  (lambda (_%hd261868261917%_
                                                           _%clause261874261920%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261868261917%_))
                                                        (let ((_%e261871261922%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261868261917%_))))
                  (let ((_%lp-hd261872261926%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261871261922%_)))
                        (_%lp-tl261873261929%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261871261922%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd261872261926%_))
                        (let ((_g266478_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd261872261926%_
                                  '0))))
                          (begin
                            (let ((_g266479_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g266478_)
                                         (##values-length _g266478_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g266479_ 2)))
                                  (error "Context expects 2 values"
                                         _g266479_)))
                            (let ((_%target261876261932%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g266478_ 0)))
                                  (_%tl261878261935%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g266478_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl261878261935%_))
                                  (letrec ((_%loop261879261938%_
                                            (lambda (_%hd261877261942%_
                                                     _%clause261883261945%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd261877261942%_))
                                                  (let ((_%e261880261947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd261877261942%_))))
                                                    (let ((_%lp-hd261881261951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e261880261947%_)))
                                                          (_%lp-tl261882261954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e261880261947%_))))
                                                      (_%loop261879261938%_
                                                       _%lp-tl261882261954%_
                                                       (cons _%lp-hd261881261951%_
                                                             _%clause261883261945%_))))
                                                  (let ((_%clause261884261957%_
                                                         (reverse _%clause261883261945%_)))
                                                    (_%loop261870261913%_
                                                     _%lp-tl261873261929%_
                                                     (cons _%clause261884261957%_
                                                           _%clause261874261920%_)))))))
                                    (_%loop261879261938%_
                                     _%target261876261932%_
                                     '()))
                                  (_%g261861261890%_ _%g261862261894%_)))))
                        (_%g261861261890%_ _%g261862261894%_))))
                (let ((_%clause261875261960%_
                       (reverse _%clause261874261920%_)))
                  ((lambda (_%g261863261963%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp266480
                                              (lambda (_%g261978261983%_
                                                       _%g261979261986%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp266481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g261980261989%_ _%g261981261992%_)
                             (cons _%g261980261989%_ _%g261981261992%_))))
                      (declare (not safe))
                      (foldr__0 __tmp266481 '() _%g261978261983%_)))
              _%g261979261986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp266480
                                          '()
                                          _%g261863261963%_)))
                                 '())))
                   _%clause261875261960%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop261870261913%_
                                           _%target261867261907%_
                                           '()))
                                        (_%g261861261890%_
                                         _%g261862261894%_)))))
                              (_%g261861261890%_ _%g261862261894%_))))
                      (_%g261861261890%_ _%g261862261894%_)))))
          (_%g261860261995%_ _%$stx261857%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx262001%_)
        (let* ((_%g262005262023%_
                (lambda (_%g262006262019%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262006262019%_))))
               (_%g262004262078%_
                (lambda (_%g262006262027%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262006262027%_))
                      (let ((_%e262009262030%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262006262027%_))))
                        (let ((_%hd262010262034%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262009262030%_)))
                              (_%tl262011262037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262009262030%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262011262037%_))
                              (let ((_%e262012262040%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262011262037%_))))
                                (let ((_%hd262013262044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262012262040%_)))
                                      (_%tl262014262047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262012262040%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262014262047%_))
                                      (let ((_%e262015262050%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262014262047%_))))
                                        (let ((_%hd262016262054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262015262050%_)))
                                              (_%tl262017262057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262015262050%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262017262057%_))
                                              ((lambda (_%g262007262060%_
                                                        _%g262008262062%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262008262062%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262007262060%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262016262054%_
                                               _%hd262013262044%_)
                                              (_%g262005262023%_
                                               _%g262006262027%_))))
                                      (_%g262005262023%_ _%g262006262027%_))))
                              (_%g262005262023%_ _%g262006262027%_))))
                      (_%g262005262023%_ _%g262006262027%_)))))
          (_%g262004262078%_ _%$stx262001%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx262082%_)
        (let* ((_%g262086262104%_
                (lambda (_%g262087262100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262087262100%_))))
               (_%g262085262159%_
                (lambda (_%g262087262108%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262087262108%_))
                      (let ((_%e262090262111%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262087262108%_))))
                        (let ((_%hd262091262115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262090262111%_)))
                              (_%tl262092262118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262090262111%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262092262118%_))
                              (let ((_%e262093262121%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262092262118%_))))
                                (let ((_%hd262094262125%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262093262121%_)))
                                      (_%tl262095262128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262093262121%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262095262128%_))
                                      (let ((_%e262096262131%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262095262128%_))))
                                        (let ((_%hd262097262135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262096262131%_)))
                                              (_%tl262098262138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262096262131%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262098262138%_))
                                              ((lambda (_%g262088262141%_
                                                        _%g262089262143%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262089262143%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262088262141%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262097262135%_
                                               _%hd262094262125%_)
                                              (_%g262086262104%_
                                               _%g262087262108%_))))
                                      (_%g262086262104%_ _%g262087262108%_))))
                              (_%g262086262104%_ _%g262087262108%_))))
                      (_%g262086262104%_ _%g262087262108%_)))))
          (_%g262085262159%_ _%$stx262082%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx262163%_)
        (let* ((_%g262167262196%_
                (lambda (_%g262168262192%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262168262192%_))))
               (_%g262166262292%_
                (lambda (_%g262168262200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262168262200%_))
                      (let ((_%e262171262203%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262168262200%_))))
                        (let ((_%hd262172262207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262171262203%_)))
                              (_%tl262173262210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262171262203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262173262210%_))
                              (let ((_g266482_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262173262210%_
                                        '0))))
                                (begin
                                  (let ((_g266483_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266482_)
                                               (##values-length _g266482_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266483_ 2)))
                                        (error "Context expects 2 values"
                                               _g266483_)))
                                  (let ((_%target262174262213%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266482_ 0)))
                                        (_%tl262176262216%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266482_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262176262216%_))
                                        (letrec ((_%loop262177262219%_
                                                  (lambda (_%hd262175262223%_
                                                           _%rule262181262226%_
                                                           _%proc262182262227%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262175262223%_))
                                                        (let ((_%e262178262229%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262175262223%_))))
                  (let ((_%lp-hd262179262233%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262178262229%_)))
                        (_%lp-tl262180262236%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262178262229%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd262179262233%_))
                        (let ((_%e262185262239%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd262179262233%_))))
                          (let ((_%hd262186262243%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262185262239%_)))
                                (_%tl262187262246%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262185262239%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262187262246%_))
                                (let ((_%e262188262249%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262187262246%_))))
                                  (let ((_%hd262189262253%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262188262249%_)))
                                        (_%tl262190262256%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262188262249%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262190262256%_))
                                        (_%loop262177262219%_
                                         _%lp-tl262180262236%_
                                         (cons _%hd262189262253%_
                                               _%rule262181262226%_)
                                         (cons _%hd262186262243%_
                                               _%proc262182262227%_))
                                        (_%g262167262196%_
                                         _%g262168262200%_))))
                                (_%g262167262196%_ _%g262168262200%_))))
                        (_%g262167262196%_ _%g262168262200%_))))
                (let ((_%rule262183262259%_ (reverse _%rule262181262226%_))
                      (_%proc262184262261%_ (reverse _%proc262182262227%_)))
                  ((lambda (_%g262169262263%_ _%g262170262265%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g262169262263%_
                                _%g262170262265%_))
                             (let ((__tmp266484
                                    (lambda (_%g262280262284%_
                                             _%g262281262287%_
                                             _%g262282262289%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g262281262287%_
                                                        (cons _%g262280262284%_
                                                              '())))
                                            _%g262282262289%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp266484
                                '()
                                _%g262169262263%_
                                _%g262170262265%_)))))
                   _%rule262183262259%_
                   _%proc262184262261%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262177262219%_
                                           _%target262174262213%_
                                           '()
                                           '()))
                                        (_%g262167262196%_
                                         _%g262168262200%_)))))
                              (_%g262167262196%_ _%g262168262200%_))))
                      (_%g262167262196%_ _%g262168262200%_)))))
          (_%g262166262292%_ _%$stx262163%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx262297%_)
        (let* ((_%g262301262319%_
                (lambda (_%g262302262315%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262302262315%_))))
               (_%g262300262374%_
                (lambda (_%g262302262323%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262302262323%_))
                      (let ((_%e262305262326%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262302262323%_))))
                        (let ((_%hd262306262330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262305262326%_)))
                              (_%tl262307262333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262305262326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262307262333%_))
                              (let ((_%e262308262336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262307262333%_))))
                                (let ((_%hd262309262340%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262308262336%_)))
                                      (_%tl262310262343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262308262336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262310262343%_))
                                      (let ((_%e262311262346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262310262343%_))))
                                        (let ((_%hd262312262350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262311262346%_)))
                                              (_%tl262313262353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262311262346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262313262353%_))
                                              ((lambda (_%g262303262356%_
                                                        _%g262304262358%_)
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
                                                   (cons _%g262304262358%_
                                                         '()))
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
                 (cons _%g262303262356%_ '())))
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
                                   (cons _%g262304262358%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262312262350%_
                                               _%hd262309262340%_)
                                              (_%g262301262319%_
                                               _%g262302262323%_))))
                                      (_%g262301262319%_ _%g262302262323%_))))
                              (_%g262301262319%_ _%g262302262323%_))))
                      (_%g262301262319%_ _%g262302262323%_)))))
          (_%g262300262374%_ _%$stx262297%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx262378%_)
        (let* ((_%__stx265964265965%_ _%$stx262378%_)
               (_%g262383262408%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265964265965%_)))))
          (let ((_%__kont265967265968%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont265969265970%_
                 (lambda (_%g262388262455%_
                          _%g262389262457%_
                          _%g262390262458%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g262390262458%_
                                           (cons _%g262389262457%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g262388262455%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx265964265965%_))
                (let ((_%e262385262484%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx265964265965%_))))
                  (let ((_%tl262387262491%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262385262484%_)))
                        (_%hd262386262488%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262385262484%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl262387262491%_))
                        (_%__kont265967265968%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl262387262491%_))
                            (let ((_%e262394262425%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl262387262491%_))))
                              (let ((_%tl262396262432%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e262394262425%_)))
                                    (_%hd262395262429%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e262394262425%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd262395262429%_))
                                    (let ((_%e262397262435%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd262395262429%_))))
                                      (let ((_%tl262399262442%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e262397262435%_)))
                                            (_%hd262398262439%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e262397262435%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262399262442%_))
                                            (let ((_%e262400262445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262399262442%_))))
                                              (let ((_%tl262402262452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262400262445%_)))
                                                    (_%hd262401262449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262400262445%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl262402262452%_))
                                                    (_%__kont265969265970%_
                                                     _%tl262396262432%_
                                                     _%hd262401262449%_
                                                     _%hd262398262439%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g262383262408%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g262383262408%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g262383262408%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g262383262408%_))))))
                (let () (declare (not safe)) (_%g262383262408%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx262502%_)
        (let* ((_%__stx266008266009%_ _%$stx262502%_)
               (_%g262507262538%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266008266009%_)))))
          (let ((_%__kont266011266012%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont266013266014%_
                 (lambda (_%g262512262603%_
                          _%g262513262605%_
                          _%g262514262606%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g262514262606%_
                                           (let ((__tmp266485
                                                  (lambda (_%g262626262629%_
                                                           _%g262627262632%_)
                                                    (cons _%g262626262629%_
                                                          _%g262627262632%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp266485
                                              '()
                                              _%g262513262605%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g262512262603%_)
                                     '()))))))
            (let ((_%__match266051266052%_
                   (lambda (_%e262515262545%_
                            _%hd262516262549%_
                            _%tl262517262552%_
                            _%e262518262555%_
                            _%hd262519262559%_
                            _%tl262520262562%_
                            _%e262521262565%_
                            _%hd262522262569%_
                            _%tl262523262572%_
                            _%__splice266015266016%_
                            _%target262524262575%_
                            _%tl262526262578%_)
                     (letrec ((_%loop262527262581%_
                               (lambda (_%hd262525262585%_ _%sig262531262588%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd262525262585%_))
                                     (let ((_%e262528262590%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd262525262585%_))))
                                       (let ((_%lp-tl262530262597%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e262528262590%_)))
                                             (_%lp-hd262529262594%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e262528262590%_))))
                                         (_%loop262527262581%_
                                          _%lp-tl262530262597%_
                                          (cons _%lp-hd262529262594%_
                                                _%sig262531262588%_))))
                                     (let ((_%sig262532262600%_
                                            (reverse _%sig262531262588%_)))
                                       (_%__kont266013266014%_
                                        _%tl262520262562%_
                                        _%sig262532262600%_
                                        _%hd262522262569%_))))))
                       (_%loop262527262581%_ _%target262524262575%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266008266009%_))
                  (let ((_%e262509262642%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266008266009%_))))
                    (let ((_%tl262511262649%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262509262642%_)))
                          (_%hd262510262646%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262509262642%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262511262649%_))
                          (_%__kont266011266012%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262511262649%_))
                              (let ((_%e262518262555%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262511262649%_))))
                                (let ((_%tl262520262562%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262518262555%_)))
                                      (_%hd262519262559%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262518262555%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262519262559%_))
                                      (let ((_%e262521262565%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd262519262559%_))))
                                        (let ((_%tl262523262572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262521262565%_)))
                                              (_%hd262522262569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262521262565%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl262523262572%_))
                                              (let ((_%__splice266015266016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl262523262572%_
                                                        '0))))
                                                (let ((_%tl262526262578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266015266016%_
                                                          '1)))
                                                      (_%target262524262575%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266015266016%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262526262578%_))
                                                      (_%__match266051266052%_
                                                       _%e262509262642%_
                                                       _%hd262510262646%_
                                                       _%tl262511262649%_
                                                       _%e262518262555%_
                                                       _%hd262519262559%_
                                                       _%tl262520262562%_
                                                       _%e262521262565%_
                                                       _%hd262522262569%_
                                                       _%tl262523262572%_
                                                       _%__splice266015266016%_
                                                       _%target262524262575%_
                                                       _%tl262526262578%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g262507262538%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g262507262538%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g262507262538%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g262507262538%_))))))
                  (let () (declare (not safe)) (_%g262507262538%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx262661%_)
        (let* ((_%__stx266054266055%_ _%$stx262661%_)
               (_%g262666262713%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266054266055%_)))))
          (let ((_%__kont266057266058%_
                 (lambda (_%g262668262871%_ _%g262669262873%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g262669262873%_
                               (let ((__tmp266486
                                      (lambda (_%g262893262896%_
                                               _%g262894262899%_)
                                        (cons _%g262893262896%_
                                              _%g262894262899%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp266486
                                  '()
                                  _%g262668262871%_))))))
                (_%__kont266061266062%_
                 (lambda (_%g262691262768%_ _%g262692262770%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g262692262770%_
                               (let ((__tmp266487
                                      (lambda (_%g262787262790%_
                                               _%g262788262793%_)
                                        (cons _%g262787262790%_
                                              _%g262788262793%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp266487
                                  '()
                                  _%g262691262768%_)))))))
            (let* ((_%__match266121266122%_
                    (lambda (_%e262693262720%_
                             _%hd262694262724%_
                             _%tl262695262727%_
                             _%e262696262730%_
                             _%hd262697262734%_
                             _%tl262698262737%_
                             _%__splice266063266064%_
                             _%target262699262740%_
                             _%tl262701262743%_)
                      (letrec ((_%loop262702262746%_
                                (lambda (_%hd262700262750%_
                                         _%sig262706262753%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262700262750%_))
                                      (let ((_%e262703262755%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd262700262750%_))))
                                        (let ((_%lp-tl262705262762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262703262755%_)))
                                              (_%lp-hd262704262759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262703262755%_))))
                                          (_%loop262702262746%_
                                           _%lp-tl262705262762%_
                                           (cons _%lp-hd262704262759%_
                                                 _%sig262706262753%_))))
                                      (let ((_%sig262707262765%_
                                             (reverse _%sig262706262753%_)))
                                        (_%__kont266061266062%_
                                         _%sig262707262765%_
                                         _%hd262697262734%_))))))
                        (_%loop262702262746%_ _%target262699262740%_ '()))))
                   (_%__match266113266114%_
                    (lambda (_%e262693262720%_
                             _%hd262694262724%_
                             _%tl262695262727%_
                             _%e262696262730%_
                             _%hd262697262734%_
                             _%tl262698262737%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl262698262737%_))
                          (let ((_%__splice266063266064%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl262698262737%_
                                    '0))))
                            (let ((_%tl262701262743%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice266063266064%_
                                      '1)))
                                  (_%target262699262740%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice266063266064%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262701262743%_))
                                  (_%__match266121266122%_
                                   _%e262693262720%_
                                   _%hd262694262724%_
                                   _%tl262695262727%_
                                   _%e262696262730%_
                                   _%hd262697262734%_
                                   _%tl262698262737%_
                                   _%__splice266063266064%_
                                   _%target262699262740%_
                                   _%tl262701262743%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g262666262713%_)))))
                          (let () (declare (not safe)) (_%g262666262713%_)))))
                   (_%__match266101266102%_
                    (lambda (_%e262670262803%_
                             _%hd262671262807%_
                             _%tl262672262810%_
                             _%e262673262813%_
                             _%hd262674262817%_
                             _%tl262675262820%_
                             _%e262676262823%_
                             _%hd262677262827%_
                             _%tl262678262830%_
                             _%e262679262833%_
                             _%hd262680262837%_
                             _%tl262681262840%_
                             _%__splice266059266060%_
                             _%target262682262843%_
                             _%tl262684262846%_)
                      (letrec ((_%loop262685262849%_
                                (lambda (_%hd262683262853%_
                                         _%sig262689262856%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262683262853%_))
                                      (let ((_%e262686262858%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd262683262853%_))))
                                        (let ((_%lp-tl262688262865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262686262858%_)))
                                              (_%lp-hd262687262862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262686262858%_))))
                                          (_%loop262685262849%_
                                           _%lp-tl262688262865%_
                                           (cons _%lp-hd262687262862%_
                                                 _%sig262689262856%_))))
                                      (let ((_%sig262690262868%_
                                             (reverse _%sig262689262856%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl262678262830%_))
                                            (_%__kont266057266058%_
                                             _%sig262690262868%_
                                             _%hd262674262817%_)
                                            (_%__match266113266114%_
                                             _%e262670262803%_
                                             _%hd262671262807%_
                                             _%tl262672262810%_
                                             _%e262673262813%_
                                             _%hd262674262817%_
                                             _%tl262675262820%_)))))))
                        (_%loop262685262849%_ _%target262682262843%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266054266055%_))
                  (let ((_%e262670262803%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266054266055%_))))
                    (let ((_%tl262672262810%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262670262803%_)))
                          (_%hd262671262807%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262670262803%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl262672262810%_))
                          (let ((_%e262673262813%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl262672262810%_))))
                            (let ((_%tl262675262820%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e262673262813%_)))
                                  (_%hd262674262817%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e262673262813%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl262675262820%_))
                                  (let ((_%e262676262823%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl262675262820%_))))
                                    (let ((_%tl262678262830%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e262676262823%_)))
                                          (_%hd262677262827%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e262676262823%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd262677262827%_))
                                          (let ((_%e262679262833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd262677262827%_))))
                                            (let ((_%tl262681262840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e262679262833%_)))
                                                  (_%hd262680262837%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e262679262833%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd262680262837%_))
                                                  (if (let ((__tmp266488
                                                             |gxc[1]#_g266489_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp266488
                                                         _%hd262680262837%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl262681262840%_))
                                                          (let ((_%__splice266059266060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl262681262840%_
                            '0))))
                    (let ((_%tl262684262846%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266059266060%_ '1)))
                          (_%target262682262843%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266059266060%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262684262846%_))
                          (_%__match266101266102%_
                           _%e262670262803%_
                           _%hd262671262807%_
                           _%tl262672262810%_
                           _%e262673262813%_
                           _%hd262674262817%_
                           _%tl262675262820%_
                           _%e262676262823%_
                           _%hd262677262827%_
                           _%tl262678262830%_
                           _%e262679262833%_
                           _%hd262680262837%_
                           _%tl262681262840%_
                           _%__splice266059266060%_
                           _%target262682262843%_
                           _%tl262684262846%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262675262820%_))
                              (let ((_%__splice266063266064%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl262675262820%_
                                        '0))))
                                (let ((_%tl262701262743%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice266063266064%_
                                          '1)))
                                      (_%target262699262740%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice266063266064%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262701262743%_))
                                      (_%__match266121266122%_
                                       _%e262670262803%_
                                       _%hd262671262807%_
                                       _%tl262672262810%_
                                       _%e262673262813%_
                                       _%hd262674262817%_
                                       _%tl262675262820%_
                                       _%__splice266063266064%_
                                       _%target262699262740%_
                                       _%tl262701262743%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g262666262713%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g262666262713%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl262675262820%_))
                      (let ((_%__splice266063266064%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl262675262820%_
                                '0))))
                        (let ((_%tl262701262743%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice266063266064%_ '1)))
                              (_%target262699262740%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice266063266064%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262701262743%_))
                              (_%__match266121266122%_
                               _%e262670262803%_
                               _%hd262671262807%_
                               _%tl262672262810%_
                               _%e262673262813%_
                               _%hd262674262817%_
                               _%tl262675262820%_
                               _%__splice266063266064%_
                               _%target262699262740%_
                               _%tl262701262743%_)
                              (let ()
                                (declare (not safe))
                                (_%g262666262713%_)))))
                      (let () (declare (not safe)) (_%g262666262713%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl262675262820%_))
                  (let ((_%__splice266063266064%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl262675262820%_
                            '0))))
                    (let ((_%tl262701262743%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266063266064%_ '1)))
                          (_%target262699262740%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266063266064%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262701262743%_))
                          (_%__match266121266122%_
                           _%e262670262803%_
                           _%hd262671262807%_
                           _%tl262672262810%_
                           _%e262673262813%_
                           _%hd262674262817%_
                           _%tl262675262820%_
                           _%__splice266063266064%_
                           _%target262699262740%_
                           _%tl262701262743%_)
                          (let () (declare (not safe)) (_%g262666262713%_)))))
                  (let () (declare (not safe)) (_%g262666262713%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl262675262820%_))
                                                      (let ((_%__splice266063266064%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl262675262820%_
                        '0))))
                (let ((_%tl262701262743%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice266063266064%_ '1)))
                      (_%target262699262740%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice266063266064%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl262701262743%_))
                      (_%__match266121266122%_
                       _%e262670262803%_
                       _%hd262671262807%_
                       _%tl262672262810%_
                       _%e262673262813%_
                       _%hd262674262817%_
                       _%tl262675262820%_
                       _%__splice266063266064%_
                       _%target262699262740%_
                       _%tl262701262743%_)
                      (let () (declare (not safe)) (_%g262666262713%_)))))
              (let () (declare (not safe)) (_%g262666262713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl262675262820%_))
                                              (let ((_%__splice266063266064%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl262675262820%_
                                                        '0))))
                                                (let ((_%tl262701262743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266063266064%_
                                                          '1)))
                                                      (_%target262699262740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266063266064%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262701262743%_))
                                                      (_%__match266121266122%_
                                                       _%e262670262803%_
                                                       _%hd262671262807%_
                                                       _%tl262672262810%_
                                                       _%e262673262813%_
                                                       _%hd262674262817%_
                                                       _%tl262675262820%_
                                                       _%__splice266063266064%_
                                                       _%target262699262740%_
                                                       _%tl262701262743%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g262666262713%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g262666262713%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl262675262820%_))
                                      (let ((_%__splice266063266064%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl262675262820%_
                                                '0))))
                                        (let ((_%tl262701262743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice266063266064%_
                                                  '1)))
                                              (_%target262699262740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice266063266064%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262701262743%_))
                                              (_%__match266121266122%_
                                               _%e262670262803%_
                                               _%hd262671262807%_
                                               _%tl262672262810%_
                                               _%e262673262813%_
                                               _%hd262674262817%_
                                               _%tl262675262820%_
                                               _%__splice266063266064%_
                                               _%target262699262740%_
                                               _%tl262701262743%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g262666262713%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g262666262713%_))))))
                          (let () (declare (not safe)) (_%g262666262713%_)))))
                  (let () (declare (not safe)) (_%g262666262713%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx264056%_ _%id264058%_)
        (let ((_%proc264062%_
               (let ((__tmp266490
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id264058%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp266490))))
          (if (procedure? _%proc264062%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx264056%_
                 _%id264058%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx264047%_ _%id264049%_)
        (let ((_%klass264053%_
               (let ((__tmp266491
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id264049%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp266491))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass264053%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx264047%_
                 _%id264049%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx263297%_ _%proc263299%_ _%sig263300%_)
        (letrec ((_%signature-arity263302%_
                  (lambda (_%args263979%_)
                    (let _%loop263982%_ ((_%rest263985%_ _%args263979%_)
                                         (_%count263987%_ '0))
                      (let* ((_%rest263988263999%_ _%rest263985%_)
                             (_%E263992264005%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest263988263999%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K263995264036%_
                               (lambda (_%rest264033%_)
                                 (_%loop263982%_
                                  _%rest264033%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count263987%_ '1)))))
                              (_%K263994264025%_ (lambda () _%count263987%_))
                              (_%K263993264013%_
                               (lambda () (cons _%count263987%_ '()))))
                          (let ((_%try-match263990264029%_
                                 (lambda ()
                                   (if (null? _%rest263988263999%_)
                                       (_%K263994264025%_)
                                       (_%K263993264013%_)))))
                            (if (pair? _%rest263988263999%_)
                                (let* ((_%tl263997264040%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest263988263999%_)))
                                       (_%rest264044%_ _%tl263997264040%_))
                                  (_%K263995264036%_ _%rest264044%_))
                                (_%try-match263990264029%_))))))))
                 (_%make-signature263304%_
                  (lambda (_%args263861%_
                           _%return263863%_
                           _%effect263864%_
                           _%unchecked263865%_)
                    (let ((__tmp266492
                           (lambda (_%g263866263868%_)
                             (|gxc[1]#verify-class!|
                              _%ctx263297%_
                              _%g263866263868%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp266492 _%args263861%_))
                    (|gxc[1]#verify-class!| _%ctx263297%_ _%return263863%_)
                    (if _%unchecked263865%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx263297%_
                         _%unchecked263865%_)
                        '#!void)
                    (let ((_%arity263872%_
                           (_%signature-arity263302%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args263861%_)))))
                      (if _%effect263864%_
                          (let ((_%effect263875%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect263864%_))))
                            (if (and (list? _%effect263875%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect263875%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx263297%_
                                   _%proc263299%_
                                   _%effect263875%_))))
                          '#!void)
                      (cons _%arity263872%_
                            (cons (let* ((_%g263878263901%_
                                          (lambda (_%g263879263897%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g263879263897%_))))
                                         (_%g263877263975%_
                                          (lambda (_%g263879263905%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g263879263905%_))
                                                (let ((_%e263884263908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g263879263905%_))))
                                                  (let ((_%hd263885263912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e263884263908%_)))
                                                        (_%tl263886263915%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e263884263908%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl263886263915%_))
                                                        (let ((_%e263887263918%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl263886263915%_))))
                  (let ((_%hd263888263922%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263887263918%_)))
                        (_%tl263889263925%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263887263918%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl263889263925%_))
                        (let ((_%e263890263928%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263889263925%_))))
                          (let ((_%hd263891263932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263890263928%_)))
                                (_%tl263892263935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263890263928%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263892263935%_))
                                (let ((_%e263893263938%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263892263935%_))))
                                  (let ((_%hd263894263942%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263893263938%_)))
                                        (_%tl263895263945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263893263938%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263895263945%_))
                                        ((lambda (_%g263880263948%_
                                                  _%g263881263950%_
                                                  _%g263882263951%_
                                                  _%g263883263952%_)
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
                           (cons _%g263883263952%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g263882263951%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g263881263950%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g263880263948%_ '()))
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
                                         _%hd263894263942%_
                                         _%hd263891263932%_
                                         _%hd263888263922%_
                                         _%hd263885263912%_)
                                        (_%g263878263901%_
                                         _%g263879263905%_))))
                                (_%g263878263901%_ _%g263879263905%_))))
                        (_%g263878263901%_ _%g263879263905%_))))
                (_%g263878263901%_ _%g263879263905%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263878263901%_
                                                 _%g263879263905%_)))))
                                    (_%g263877263975%_
                                     (list _%args263861%_
                                           _%return263863%_
                                           _%effect263864%_
                                           _%unchecked263865%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx263297%_ _%proc263299%_)
          (let* ((_%__stx266132266133%_ _%sig263300%_)
                 (_%g263311263414%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx266132266133%_)))))
            (let ((_%__kont266135266136%_
                   (lambda (_%g263313263842%_ _%g263314263844%_)
                     (_%make-signature263304%_
                      _%g263314263844%_
                      _%g263313263842%_
                      '#f
                      '#f)))
                  (_%__kont266137266138%_
                   (lambda (_%g263321263793%_
                            _%g263322263795%_
                            _%g263323263796%_)
                     (_%make-signature263304%_
                      _%g263323263796%_
                      _%g263322263795%_
                      _%g263321263793%_
                      '#f)))
                  (_%__kont266139266140%_
                   (lambda (_%g263337263717%_
                            _%g263338263719%_
                            _%g263339263720%_)
                     (_%make-signature263304%_
                      _%g263339263720%_
                      _%g263338263719%_
                      _%g263337263717%_
                      (let ((__tmp266493
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc263299%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp266493)))))
                  (_%__kont266141266142%_
                   (lambda (_%g263357263623%_
                            _%g263358263625%_
                            _%g263359263626%_
                            _%g263360263627%_)
                     (_%make-signature263304%_
                      _%g263360263627%_
                      _%g263359263626%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g263357263623%_)))))
                  (_%__kont266143266144%_
                   (lambda (_%g263381263530%_ _%g263382263532%_)
                     (_%make-signature263304%_
                      _%g263382263532%_
                      _%g263381263530%_
                      '#f
                      (let ((__tmp266494
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc263299%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp266494)))))
                  (_%__kont266145266146%_
                   (lambda (_%g263393263465%_
                            _%g263394263467%_
                            _%g263395263468%_)
                     (_%make-signature263304%_
                      _%g263395263468%_
                      _%g263394263467%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g263393263465%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266132266133%_))
                  (let ((_%e263315263822%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266132266133%_))))
                    (let ((_%tl263317263829%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263315263822%_)))
                          (_%hd263316263826%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263315263822%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263317263829%_))
                          (let ((_%e263318263832%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263317263829%_))))
                            (let ((_%tl263320263839%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263318263832%_)))
                                  (_%hd263319263836%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263318263832%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263320263839%_))
                                  (_%__kont266135266136%_
                                   _%hd263319263836%_
                                   _%hd263316263826%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263320263839%_))
                                      (let ((_%e263330263769%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263320263839%_))))
                                        (let ((_%tl263332263776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263330263769%_)))
                                              (_%hd263331263773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263330263769%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd263331263773%_))
                                              (let ((_%e263333263779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd263331263773%_))))
                                                (if (equal? _%e263333263779%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl263332263776%_))
                                                        (let ((_%e263334263783%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl263332263776%_))))
                  (let ((_%tl263336263790%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263334263783%_)))
                        (_%hd263335263787%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263334263783%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl263336263790%_))
                        (_%__kont266137266138%_
                         _%hd263335263787%_
                         _%hd263319263836%_
                         _%hd263316263826%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl263336263790%_))
                            (let ((_%e263353263703%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl263336263790%_))))
                              (let ((_%tl263355263710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e263353263703%_)))
                                    (_%hd263354263707%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e263353263703%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd263354263707%_))
                                    (let ((_%e263356263713%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd263354263707%_))))
                                      (if (equal? _%e263356263713%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263355263710%_))
                                              (_%__kont266139266140%_
                                               _%hd263335263787%_
                                               _%hd263319263836%_
                                               _%hd263316263826%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263355263710%_))
                                                  (let ((_%e263378263613%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263355263710%_))))
                                                    (let ((_%tl263380263620%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263378263613%_)))
                                                          (_%hd263379263617%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263378263613%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl263380263620%_))
                                                          (_%__kont266141266142%_
                                                           _%hd263379263617%_
                                                           _%hd263335263787%_
                                                           _%hd263319263836%_
                                                           _%hd263316263826%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g263311263414%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g263311263414%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g263311263414%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g263311263414%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g263311263414%_))))))
                (let () (declare (not safe)) (_%g263311263414%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e263333263779%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl263332263776%_))
                                                            (_%__kont266143266144%_
                                                             _%hd263319263836%_
                                                             _%hd263316263826%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl263332263776%_))
                        (let ((_%e263406263455%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263332263776%_))))
                          (let ((_%tl263408263462%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263406263455%_)))
                                (_%hd263407263459%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263406263455%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl263408263462%_))
                                (_%__kont266145266146%_
                                 _%hd263407263459%_
                                 _%hd263319263836%_
                                 _%hd263316263826%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g263311263414%_)))))
                        (let () (declare (not safe)) (_%g263311263414%_))))
                (let () (declare (not safe)) (_%g263311263414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g263311263414%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263311263414%_))))))
                          (let () (declare (not safe)) (_%g263311263414%_)))))
                  (let () (declare (not safe)) (_%g263311263414%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig262908%_)
        (let* ((_%g262911262991%_
                (lambda (_%g262912262987%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262912262987%_))))
               (_%g262910263293%_
                (lambda (_%g262912262995%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262912262995%_))
                      (let ((_%e262918262998%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262912262995%_))))
                        (let ((_%hd262919263002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262918262998%_)))
                              (_%tl262920263005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262918262998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262920263005%_))
                              (let ((_%e262921263008%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262920263005%_))))
                                (let ((_%hd262922263012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262921263008%_)))
                                      (_%tl262923263015%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262921263008%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd262922263012%_))
                                      (let ((_%e262924263018%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd262922263012%_))))
                                        (if (equal? _%e262924263018%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl262923263015%_))
                                                (let ((_%e262925263022%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl262923263015%_))))
                                                  (let ((_%hd262926263026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e262925263022%_)))
                                                        (_%tl262927263029%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e262925263022%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262926263026%_))
                                                        (let ((_%e262928263032%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262926263026%_))))
                  (let ((_%hd262929263036%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262928263032%_)))
                        (_%tl262930263039%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262928263032%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd262929263036%_))
                        (if (let ((__tmp266495 |gxc[1]#_g266496_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp266495
                               _%hd262929263036%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262930263039%_))
                                (let ((_%e262931263042%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262930263039%_))))
                                  (let ((_%hd262932263046%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262931263042%_)))
                                        (_%tl262933263049%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262931263042%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262933263049%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262927263029%_))
                                            (let ((_%e262934263052%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262927263029%_))))
                                              (let ((_%hd262935263056%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262934263052%_)))
                                                    (_%tl262936263059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262934263052%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd262935263056%_))
                                                    (let ((_%e262937263062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd262935263056%_))))
                                                      (if (equal? _%e262937263062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262936263059%_))
                      (let ((_%e262938263066%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262936263059%_))))
                        (let ((_%hd262939263070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262938263066%_)))
                              (_%tl262940263073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262938263066%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd262939263070%_))
                              (let ((_%e262941263076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd262939263070%_))))
                                (let ((_%hd262942263080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262941263076%_)))
                                      (_%tl262943263083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262941263076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd262942263080%_))
                                      (if (let ((__tmp266497
                                                 |gxc[1]#_g266498_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp266497
                                             _%hd262942263080%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262943263083%_))
                                              (let ((_%e262944263086%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262943263083%_))))
                                                (let ((_%hd262945263090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262944263086%_)))
                                                      (_%tl262946263093%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262944263086%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262946263093%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl262940263073%_))
                                                          (let ((_%e262947263096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl262940263073%_))))
                    (let ((_%hd262948263100%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262947263096%_)))
                          (_%tl262949263103%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262947263096%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd262948263100%_))
                          (let ((_%e262950263106%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd262948263100%_))))
                            (if (equal? _%e262950263106%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl262949263103%_))
                                    (let ((_%e262951263110%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl262949263103%_))))
                                      (let ((_%hd262952263114%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e262951263110%_)))
                                            (_%tl262953263117%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e262951263110%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd262952263114%_))
                                            (let ((_%e262954263120%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd262952263114%_))))
                                              (let ((_%hd262955263124%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262954263120%_)))
                                                    (_%tl262956263127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262954263120%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd262955263124%_))
                                                    (if (let ((__tmp266499
                                                               |gxc[1]#_g266500_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp266499
                                                           _%hd262955263124%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl262956263127%_))
                                                            (let ((_%e262957263130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl262956263127%_))))
                      (let ((_%hd262958263134%_
                             (let ()
                               (declare (not safe))
                               (##car _%e262957263130%_)))
                            (_%tl262959263137%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e262957263130%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl262959263137%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262953263117%_))
                                (let ((_%e262960263140%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262953263117%_))))
                                  (let ((_%hd262961263144%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262960263140%_)))
                                        (_%tl262962263147%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262960263140%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd262961263144%_))
                                        (let ((_%e262963263150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd262961263144%_))))
                                          (if (equal? _%e262963263150%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262962263147%_))
                                                  (let ((_%e262964263154%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl262962263147%_))))
                                                    (let ((_%hd262965263158%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262964263154%_)))
                                                          (_%tl262966263161%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262964263154%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd262965263158%_))
                                                          (let ((_%e262967263164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd262965263158%_))))
                    (let ((_%hd262968263168%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262967263164%_)))
                          (_%tl262969263171%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262967263164%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd262968263168%_))
                          (if (let ((__tmp266501 |gxc[1]#_g266502_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp266501
                                 _%hd262968263168%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl262969263171%_))
                                  (let ((_%e262970263174%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl262969263171%_))))
                                    (let ((_%hd262971263178%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e262970263174%_)))
                                          (_%tl262972263181%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e262970263174%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl262972263181%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262966263161%_))
                                              (let ((_%e262973263184%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262966263161%_))))
                                                (let ((_%hd262974263188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262973263184%_)))
                                                      (_%tl262975263191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262973263184%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd262974263188%_))
                                                      (let ((_%e262976263194%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd262974263188%_))))
                (if (equal? _%e262976263194%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl262975263191%_))
                        (let ((_%e262977263198%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262975263191%_))))
                          (let ((_%hd262978263202%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262977263198%_)))
                                (_%tl262979263205%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262977263198%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd262978263202%_))
                                (let ((_%e262980263208%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd262978263202%_))))
                                  (let ((_%hd262981263212%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262980263208%_)))
                                        (_%tl262982263215%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262980263208%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd262981263212%_))
                                        (if (let ((__tmp266503
                                                   |gxc[1]#_g266504_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp266503
                                               _%hd262981263212%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl262982263215%_))
                                                (let ((_%e262983263218%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl262982263215%_))))
                                                  (let ((_%hd262984263222%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e262983263218%_)))
                                                        (_%tl262985263225%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e262983263218%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl262985263225%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl262979263205%_))
                                                            ((lambda (_%g262913263228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g262914263230%_
                              _%g262915263231%_
                              _%g262916263232%_
                              _%g262917263233%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g262914263230%_))
                           (cons _%g262914263230%_
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
                       (cons _%g262916263232%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262913263228%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd262984263222%_
                     _%hd262971263178%_
                     _%hd262958263134%_
                     _%hd262945263090%_
                     _%hd262932263046%_)
                    (_%g262911262991%_ _%g262912262995%_))
                (_%g262911262991%_ _%g262912262995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g262911262991%_
                                                 _%g262912262995%_))
                                            (_%g262911262991%_
                                             _%g262912262995%_))
                                        (_%g262911262991%_
                                         _%g262912262995%_))))
                                (_%g262911262991%_ _%g262912262995%_))))
                        (_%g262911262991%_ _%g262912262995%_))
                    (_%g262911262991%_ _%g262912262995%_)))
              (_%g262911262991%_ _%g262912262995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262911262991%_
                                               _%g262912262995%_))
                                          (_%g262911262991%_
                                           _%g262912262995%_))))
                                  (_%g262911262991%_ _%g262912262995%_))
                              (_%g262911262991%_ _%g262912262995%_))
                          (_%g262911262991%_ _%g262912262995%_))))
                  (_%g262911262991%_ _%g262912262995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g262911262991%_
                                                   _%g262912262995%_))
                                              (_%g262911262991%_
                                               _%g262912262995%_)))
                                        (_%g262911262991%_
                                         _%g262912262995%_))))
                                (_%g262911262991%_ _%g262912262995%_))
                            (_%g262911262991%_ _%g262912262995%_))))
                    (_%g262911262991%_ _%g262912262995%_))
                (_%g262911262991%_ _%g262912262995%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g262911262991%_
                                                     _%g262912262995%_))))
                                            (_%g262911262991%_
                                             _%g262912262995%_))))
                                    (_%g262911262991%_ _%g262912262995%_))
                                (_%g262911262991%_ _%g262912262995%_)))
                          (_%g262911262991%_ _%g262912262995%_))))
                  (_%g262911262991%_ _%g262912262995%_))
              (_%g262911262991%_ _%g262912262995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262911262991%_
                                               _%g262912262995%_))
                                          (_%g262911262991%_
                                           _%g262912262995%_))
                                      (_%g262911262991%_ _%g262912262995%_))))
                              (_%g262911262991%_ _%g262912262995%_))))
                      (_%g262911262991%_ _%g262912262995%_))
                  (_%g262911262991%_ _%g262912262995%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g262911262991%_
                                                     _%g262912262995%_))))
                                            (_%g262911262991%_
                                             _%g262912262995%_))
                                        (_%g262911262991%_
                                         _%g262912262995%_))))
                                (_%g262911262991%_ _%g262912262995%_))
                            (_%g262911262991%_ _%g262912262995%_))
                        (_%g262911262991%_ _%g262912262995%_))))
                (_%g262911262991%_ _%g262912262995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g262911262991%_
                                                 _%g262912262995%_))
                                            (_%g262911262991%_
                                             _%g262912262995%_)))
                                      (_%g262911262991%_ _%g262912262995%_))))
                              (_%g262911262991%_ _%g262912262995%_))))
                      (_%g262911262991%_ _%g262912262995%_)))))
          (_%g262910263293%_ _%sig262908%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx264065%_)
        (let* ((_%g264068264086%_
                (lambda (_%g264069264082%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264069264082%_))))
               (_%g264067264141%_
                (lambda (_%g264069264090%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264069264090%_))
                      (let ((_%e264072264093%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264069264090%_))))
                        (let ((_%hd264073264097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264072264093%_)))
                              (_%tl264074264100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264072264093%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264074264100%_))
                              (let ((_%e264075264103%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264074264100%_))))
                                (let ((_%hd264076264107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264075264103%_)))
                                      (_%tl264077264110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264075264103%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264077264110%_))
                                      (let ((_%e264078264113%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264077264110%_))))
                                        (let ((_%hd264079264117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264078264113%_)))
                                              (_%tl264080264120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264078264113%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264080264120%_))
                                              ((lambda (_%g264070264123%_
                                                        _%g264071264125%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g264071264125%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g264070264123%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx264065%_
                                                        _%g264071264125%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx264065%_
                                                        _%g264070264123%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g264071264125%_
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
                                                   (cons _%g264070264123%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264068264086%_
                                                      _%g264069264090%_)))
                                               _%hd264079264117%_
                                               _%hd264076264107%_)
                                              (_%g264068264086%_
                                               _%g264069264090%_))))
                                      (_%g264068264086%_ _%g264069264090%_))))
                              (_%g264068264086%_ _%g264069264090%_))))
                      (_%g264068264086%_ _%g264069264090%_)))))
          (_%g264067264141%_ _%stx264065%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx264145%_)
        (let* ((_%g264148264172%_
                (lambda (_%g264149264168%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264149264168%_))))
               (_%g264147264453%_
                (lambda (_%g264149264176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264149264176%_))
                      (let ((_%e264152264179%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264149264176%_))))
                        (let ((_%hd264153264183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264152264179%_)))
                              (_%tl264154264186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264152264179%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264154264186%_))
                              (let ((_%e264155264189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264154264186%_))))
                                (let ((_%hd264156264193%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264155264189%_)))
                                      (_%tl264157264196%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264155264189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl264157264196%_))
                                      (let ((_g266505_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl264157264196%_
                                                '0))))
                                        (begin
                                          (let ((_g266506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g266505_)
                                                       (##values-length
                                                        _g266505_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g266506_ 2)))
                                                (error "Context expects 2 values"
                                                       _g266506_)))
                                          (let ((_%target264158264199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g266505_ 0)))
                                                (_%tl264160264202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g266505_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl264160264202%_))
                                                (letrec ((_%loop264161264205%_
                                                          (lambda (_%hd264159264209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature264165264212%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd264159264209%_))
                        (let ((_%e264162264214%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd264159264209%_))))
                          (let ((_%lp-hd264163264218%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264162264214%_)))
                                (_%lp-tl264164264221%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264162264214%_))))
                            (_%loop264161264205%_
                             _%lp-tl264164264221%_
                             (cons _%lp-hd264163264218%_
                                   _%signature264165264212%_))))
                        (let ((_%signature264166264224%_
                               (reverse _%signature264165264212%_)))
                          ((lambda (_%g264150264227%_ _%g264151264229%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g264151264229%_))
                                 (let* ((_%g264247264262%_
                                         (lambda (_%g264248264258%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g264248264258%_))))
                                        (_%g264246264441%_
                                         (lambda (_%g264248264266%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g264248264266%_))
                                               (let ((_%e264251264269%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g264248264266%_))))
                                                 (let ((_%hd264252264273%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264251264269%_)))
                                                       (_%tl264253264276%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264251264269%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl264253264276%_))
                                                       (let ((_%e264254264279%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl264253264276%_))))
                 (let ((_%hd264255264283%_
                        (let ()
                          (declare (not safe))
                          (##car _%e264254264279%_)))
                       (_%tl264256264286%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e264254264279%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl264256264286%_))
                       ((lambda (_%g264249264289%_ _%g264250264291%_)
                          (let* ((_%g264307264315%_
                                  (lambda (_%g264308264311%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g264308264311%_))))
                                 (_%g264306264437%_
                                  (lambda (_%g264308264319%_)
                                    ((lambda (_%g264309264322%_)
                                       (let* ((_%unchecked264335%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g264249264289%_))
                                              (_%g264338264346%_
                                               (lambda (_%g264339264342%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g264339264342%_))))
                                              (_%g264337264369%_
                                               (lambda (_%g264339264350%_)
                                                 ((lambda (_%g264340264353%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g264309264322%_
                                                                (cons _%g264340264353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g264339264350%_))))
                                         (_%g264337264369%_
                                          (if _%unchecked264335%_
                                              (let* ((_%g264373264388%_
                                                      (lambda (_%g264374264384%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g264374264384%_))))
                                                     (_%g264372264433%_
                                                      (lambda (_%g264374264392%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g264374264392%_))
                                                            (let ((_%e264377264395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g264374264392%_))))
                      (let ((_%hd264378264399%_
                             (let ()
                               (declare (not safe))
                               (##car _%e264377264395%_)))
                            (_%tl264379264402%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e264377264395%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl264379264402%_))
                            (let ((_%e264380264405%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl264379264402%_))))
                              (let ((_%hd264381264409%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e264380264405%_)))
                                    (_%tl264382264412%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e264380264405%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl264382264412%_))
                                    ((lambda (_%g264375264415%_
                                              _%g264376264417%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g264376264417%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g264250264291%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g264375264415%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd264381264409%_
                                     _%hd264378264399%_)
                                    (_%g264373264388%_ _%g264374264392%_))))
                            (_%g264373264388%_ _%g264374264392%_))))
                    (_%g264373264388%_ _%g264374264392%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g264372264433%_
                                                 _%unchecked264335%_))
                                              '(begin)))))
                                     _%g264308264319%_))))
                            (_%g264306264437%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g264151264229%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g264250264291%_ '()))
                   (cons '#f (cons 'signature: (cons _%g264249264289%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd264255264283%_
                        _%hd264252264273%_)
                       (_%g264247264262%_ _%g264248264266%_))))
               (_%g264247264262%_ _%g264248264266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264247264262%_
                                                _%g264248264266%_)))))
                                   (_%g264246264441%_
                                    (|gxc[1]#parse-signature|
                                     _%stx264145%_
                                     _%g264151264229%_
                                     (let ((__tmp266507
                                            (lambda (_%g264444264447%_
                                                     _%g264445264450%_)
                                              (cons _%g264444264447%_
                                                    _%g264445264450%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp266507
                                        '()
                                        _%g264150264227%_)))))
                                 (_%g264148264172%_ _%g264149264176%_)))
                           _%signature264166264224%_
                           _%hd264156264193%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop264161264205%_
                                                   _%target264158264199%_
                                                   '()))
                                                (_%g264148264172%_
                                                 _%g264149264176%_)))))
                                      (_%g264148264172%_ _%g264149264176%_))))
                              (_%g264148264172%_ _%g264149264176%_))))
                      (_%g264148264172%_ _%g264149264176%_)))))
          (_%g264147264453%_ _%stx264145%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx264458%_)
        (let* ((_%g264461264485%_
                (lambda (_%g264462264481%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264462264481%_))))
               (_%g264460265360%_
                (lambda (_%g264462264489%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264462264489%_))
                      (let ((_%e264465264492%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264462264489%_))))
                        (let ((_%hd264466264496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264465264492%_)))
                              (_%tl264467264499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264465264492%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264467264499%_))
                              (let ((_%e264468264502%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264467264499%_))))
                                (let ((_%hd264469264506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264468264502%_)))
                                      (_%tl264470264509%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264468264502%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl264470264509%_))
                                      (let ((_g266508_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl264470264509%_
                                                '0))))
                                        (begin
                                          (let ((_g266509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g266508_)
                                                       (##values-length
                                                        _g266508_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g266509_ 2)))
                                                (error "Context expects 2 values"
                                                       _g266509_)))
                                          (let ((_%target264471264512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g266508_ 0)))
                                                (_%tl264473264515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g266508_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl264473264515%_))
                                                (letrec ((_%loop264474264518%_
                                                          (lambda (_%hd264472264522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature264478264525%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd264472264522%_))
                        (let ((_%e264475264527%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd264472264522%_))))
                          (let ((_%lp-hd264476264531%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264475264527%_)))
                                (_%lp-tl264477264534%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264475264527%_))))
                            (_%loop264474264518%_
                             _%lp-tl264477264534%_
                             (cons _%lp-hd264476264531%_
                                   _%case-signature264478264525%_))))
                        (let ((_%case-signature264479264537%_
                               (reverse _%case-signature264478264525%_)))
                          ((lambda (_%g264463264540%_ _%g264464264542%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g264464264542%_))
                                 (let* ((_%signatures264573%_
                                         (map (lambda (_%g264559264561%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx264458%_
                                                 _%g264464264542%_
                                                 _%g264559264561%_))
                                              (let ((__tmp266510
                                                     (lambda (_%g264564264567%_
                                                              _%g264565264570%_)
                                                       (cons _%g264564264567%_
                                                             _%g264565264570%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp266510
                                                 '()
                                                 _%g264463264540%_))))
                                        (_%g264576264602%_
                                         (lambda (_%g264577264598%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g264577264598%_))))
                                        (_%g264575265356%_
                                         (lambda (_%g264577264606%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g264577264606%_))
                                               (let ((_g266511_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g264577264606%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g266512_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g266511_)
                        (##values-length _g266511_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g266512_ 2)))
                 (error "Context expects 2 values" _g266512_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target264580264609%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g266511_
                                                             0)))
                                                         (_%tl264582264612%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g266511_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl264582264612%_))
                                                         (letrec ((_%loop264583264615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd264581264619%_
                                    _%sig264587264622%_
                                    _%arity264588264623%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd264581264619%_))
                                 (let ((_%e264584264625%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd264581264619%_))))
                                   (let ((_%lp-hd264585264629%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264584264625%_)))
                                         (_%lp-tl264586264632%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264584264625%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd264585264629%_))
                                         (let ((_%e264591264635%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd264585264629%_))))
                                           (let ((_%hd264592264639%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e264591264635%_)))
                                                 (_%tl264593264642%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e264591264635%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl264593264642%_))
                                                 (let ((_%e264594264645%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl264593264642%_))))
                                                   (let ((_%hd264595264649%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e264594264645%_)))
                                                         (_%tl264596264652%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e264594264645%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl264596264652%_))
                                                         (_%loop264583264615%_
                                                          _%lp-tl264586264632%_
                                                          (cons _%hd264595264649%_
                                                                _%sig264587264622%_)
                                                          (cons _%hd264592264639%_
                                                                _%arity264588264623%_))
                                                         (_%g264576264602%_
                                                          _%g264577264606%_))))
                                                 (_%g264576264602%_
                                                  _%g264577264606%_))))
                                         (_%g264576264602%_
                                          _%g264577264606%_))))
                                 (let ((_%sig264589264655%_
                                        (reverse _%sig264587264622%_))
                                       (_%arity264590264657%_
                                        (reverse _%arity264588264623%_)))
                                   ((lambda (_%g264578264659%_
                                             _%g264579264661%_)
                                      (let* ((_%g264678264686%_
                                              (lambda (_%g264679264682%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g264679264682%_))))
                                             (_%g264677265341%_
                                              (lambda (_%g264679264690%_)
                                                ((lambda (_%g264680264693%_)
                                                   (let* ((_%g264706264714%_
                                                           (lambda (_%g264707264710%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g264707264710%_))))
                  (_%g264705264736%_
                   (lambda (_%g264707264718%_)
                     ((lambda (_%g264708264721%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g264680264693%_
                                    (cons _%g264708264721%_ '()))))
                      _%g264707264718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264705264736%_
                                                      (let ((_g266513_
                                                             (let _%loop264740%_ ((_%rest264743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures264573%_)
                                          (_%unchecked-proc264745%_ '#f)
                                          (_%unchecked-clauses264746%_ '()))
                       (let* ((_%rest264747264755%_ _%rest264743%_)
                              (_%else264749264767%_
                               (lambda ()
                                 (values _%unchecked-proc264745%_
                                         (reverse!
                                          _%unchecked-clauses264746%_))))
                              (_%K264751265208%_
                               (lambda (_%rest264771%_ _%hd264773%_)
                                 (let* ((_%g264775264862%_
                                         (lambda (_%g264776264858%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g264776264858%_))))
                                        (_%g264774265204%_
                                         (lambda (_%g264776264866%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g264776264866%_))
                                               (let ((_%e264783264869%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g264776264866%_))))
                                                 (let ((_%hd264784264873%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264783264869%_)))
                                                       (_%tl264785264876%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264783264869%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl264785264876%_))
                                                       (let ((_%e264786264879%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl264785264876%_))))
                 (let ((_%hd264787264883%_
                        (let ()
                          (declare (not safe))
                          (##car _%e264786264879%_)))
                       (_%tl264788264886%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e264786264879%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd264787264883%_))
                       (let ((_%e264789264889%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd264787264883%_))))
                         (let ((_%hd264790264893%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e264789264889%_)))
                               (_%tl264791264896%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e264789264889%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl264791264896%_))
                               (let ((_%e264792264899%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl264791264896%_))))
                                 (let ((_%hd264793264903%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e264792264899%_)))
                                       (_%tl264794264906%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e264792264899%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd264793264903%_))
                                       (let ((_%e264795264909%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd264793264903%_))))
                                         (if (equal? _%e264795264909%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl264794264906%_))
                                                 (let ((_%e264796264913%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl264794264906%_))))
                                                   (let ((_%hd264797264917%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e264796264913%_)))
                                                         (_%tl264798264920%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e264796264913%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd264797264917%_))
                                                         (let ((_%e264799264923%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd264797264917%_))))
                   (let ((_%hd264800264927%_
                          (let ()
                            (declare (not safe))
                            (##car _%e264799264923%_)))
                         (_%tl264801264930%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e264799264923%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd264800264927%_))
                         (if (let ((__tmp266515 |gxc[1]#_g266516_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp266515
                                _%hd264800264927%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl264801264930%_))
                                 (let ((_%e264802264933%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl264801264930%_))))
                                   (let ((_%hd264803264937%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264802264933%_)))
                                         (_%tl264804264940%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264802264933%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl264804264940%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl264798264920%_))
                                             (let ((_%e264805264943%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl264798264920%_))))
                                               (let ((_%hd264806264947%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e264805264943%_)))
                                                     (_%tl264807264950%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e264805264943%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd264806264947%_))
                                                     (let ((_%e264808264953%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd264806264947%_))))
                                                       (if (equal? _%e264808264953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl264807264950%_))
                       (let ((_%e264809264957%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl264807264950%_))))
                         (let ((_%hd264810264961%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e264809264957%_)))
                               (_%tl264811264964%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e264809264957%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd264810264961%_))
                               (let ((_%e264812264967%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd264810264961%_))))
                                 (let ((_%hd264813264971%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e264812264967%_)))
                                       (_%tl264814264974%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e264812264967%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd264813264971%_))
                                       (if (let ((__tmp266517
                                                  |gxc[1]#_g266518_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp266517
                                              _%hd264813264971%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl264814264974%_))
                                               (let ((_%e264815264977%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl264814264974%_))))
                                                 (let ((_%hd264816264981%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264815264977%_)))
                                                       (_%tl264817264984%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264815264977%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl264817264984%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl264811264964%_))
                                                           (let ((_%e264818264987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl264811264964%_))))
                     (let ((_%hd264819264991%_
                            (let ()
                              (declare (not safe))
                              (##car _%e264818264987%_)))
                           (_%tl264820264994%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e264818264987%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd264819264991%_))
                           (let ((_%e264821264997%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd264819264991%_))))
                             (if (equal? _%e264821264997%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl264820264994%_))
                                     (let ((_%e264822265001%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl264820264994%_))))
                                       (let ((_%hd264823265005%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e264822265001%_)))
                                             (_%tl264824265008%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e264822265001%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd264823265005%_))
                                             (let ((_%e264825265011%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd264823265005%_))))
                                               (let ((_%hd264826265015%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e264825265011%_)))
                                                     (_%tl264827265018%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e264825265011%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd264826265015%_))
                                                     (if (let ((__tmp266519
                                                                |gxc[1]#_g266520_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp266519
                                                            _%hd264826265015%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl264827265018%_))
                     (let ((_%e264828265021%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl264827265018%_))))
                       (let ((_%hd264829265025%_
                              (let ()
                                (declare (not safe))
                                (##car _%e264828265021%_)))
                             (_%tl264830265028%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e264828265021%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl264830265028%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl264824265008%_))
                                 (let ((_%e264831265031%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl264824265008%_))))
                                   (let ((_%hd264832265035%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264831265031%_)))
                                         (_%tl264833265038%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264831265031%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd264832265035%_))
                                         (let ((_%e264834265041%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd264832265035%_))))
                                           (if (equal? _%e264834265041%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl264833265038%_))
                                                   (let ((_%e264835265045%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl264833265038%_))))
                                                     (let ((_%hd264836265049%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e264835265045%_)))
                                                           (_%tl264837265052%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e264835265045%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd264836265049%_))
                                                           (let ((_%e264838265055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd264836265049%_))))
                     (let ((_%hd264839265059%_
                            (let ()
                              (declare (not safe))
                              (##car _%e264838265055%_)))
                           (_%tl264840265062%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e264838265055%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd264839265059%_))
                           (if (let ((__tmp266521 |gxc[1]#_g266522_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp266521
                                  _%hd264839265059%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl264840265062%_))
                                   (let ((_%e264841265065%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl264840265062%_))))
                                     (let ((_%hd264842265069%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e264841265065%_)))
                                           (_%tl264843265072%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e264841265065%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl264843265072%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl264837265052%_))
                                               (let ((_%e264844265075%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl264837265052%_))))
                                                 (let ((_%hd264845265079%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264844265075%_)))
                                                       (_%tl264846265082%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264844265075%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd264845265079%_))
                                                       (let ((_%e264847265085%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd264845265079%_))))
                 (if (equal? _%e264847265085%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl264846265082%_))
                         (let ((_%e264848265089%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl264846265082%_))))
                           (let ((_%hd264849265093%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e264848265089%_)))
                                 (_%tl264850265096%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e264848265089%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd264849265093%_))
                                 (let ((_%e264851265099%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd264849265093%_))))
                                   (let ((_%hd264852265103%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264851265099%_)))
                                         (_%tl264853265106%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264851265099%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd264852265103%_))
                                         (if (let ((__tmp266523
                                                    |gxc[1]#_g266524_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp266523
                                                _%hd264852265103%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl264853265106%_))
                                                 (let ((_%e264854265109%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl264853265106%_))))
                                                   (let ((_%hd264855265113%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e264854265109%_)))
                                                         (_%tl264856265116%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e264854265109%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl264856265116%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl264850265096%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl264788264886%_))
                         ((lambda (_%g264777265119%_
                                   _%g264778265121%_
                                   _%g264779265122%_
                                   _%g264780265123%_
                                   _%g264781265124%_
                                   _%g264782265125%_)
                            (let ((_%clause265196%_
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
                                                     (cons _%g264782265125%_
                                                           '()))
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
                                                 (cons _%g264780265123%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g264777265119%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked265198%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g264778265121%_))))
                              (_%loop264740%_
                               _%rest264771%_
                               (let ((_%$e265200%_ _%unchecked265198%_))
                                 (if _%$e265200%_
                                     _%$e265200%_
                                     _%unchecked-proc264745%_))
                               (cons _%clause265196%_
                                     _%unchecked-clauses264746%_))))
                          _%hd264855265113%_
                          _%hd264842265069%_
                          _%hd264829265025%_
                          _%hd264816264981%_
                          _%hd264803264937%_
                          _%hd264784264873%_)
                         (_%g264775264862%_ _%g264776264866%_))
                     (_%g264775264862%_ _%g264776264866%_))
                 (_%g264775264862%_ _%g264776264866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g264775264862%_
                                                  _%g264776264866%_))
                                             (_%g264775264862%_
                                              _%g264776264866%_))
                                         (_%g264775264862%_
                                          _%g264776264866%_))))
                                 (_%g264775264862%_ _%g264776264866%_))))
                         (_%g264775264862%_ _%g264776264866%_))
                     (_%g264775264862%_ _%g264776264866%_)))
               (_%g264775264862%_ _%g264776264866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264775264862%_
                                                _%g264776264866%_))
                                           (_%g264775264862%_
                                            _%g264776264866%_))))
                                   (_%g264775264862%_ _%g264776264866%_))
                               (_%g264775264862%_ _%g264776264866%_))
                           (_%g264775264862%_ _%g264776264866%_))))
                   (_%g264775264862%_ _%g264776264866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g264775264862%_
                                                    _%g264776264866%_))
                                               (_%g264775264862%_
                                                _%g264776264866%_)))
                                         (_%g264775264862%_
                                          _%g264776264866%_))))
                                 (_%g264775264862%_ _%g264776264866%_))
                             (_%g264775264862%_ _%g264776264866%_))))
                     (_%g264775264862%_ _%g264776264866%_))
                 (_%g264775264862%_ _%g264776264866%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264775264862%_
                                                      _%g264776264866%_))))
                                             (_%g264775264862%_
                                              _%g264776264866%_))))
                                     (_%g264775264862%_ _%g264776264866%_))
                                 (_%g264775264862%_ _%g264776264866%_)))
                           (_%g264775264862%_ _%g264776264866%_))))
                   (_%g264775264862%_ _%g264776264866%_))
               (_%g264775264862%_ _%g264776264866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264775264862%_
                                                _%g264776264866%_))
                                           (_%g264775264862%_
                                            _%g264776264866%_))
                                       (_%g264775264862%_ _%g264776264866%_))))
                               (_%g264775264862%_ _%g264776264866%_))))
                       (_%g264775264862%_ _%g264776264866%_))
                   (_%g264775264862%_ _%g264776264866%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264775264862%_
                                                      _%g264776264866%_))))
                                             (_%g264775264862%_
                                              _%g264776264866%_))
                                         (_%g264775264862%_
                                          _%g264776264866%_))))
                                 (_%g264775264862%_ _%g264776264866%_))
                             (_%g264775264862%_ _%g264776264866%_))
                         (_%g264775264862%_ _%g264776264866%_))))
                 (_%g264775264862%_ _%g264776264866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g264775264862%_
                                                  _%g264776264866%_))
                                             (_%g264775264862%_
                                              _%g264776264866%_)))
                                       (_%g264775264862%_ _%g264776264866%_))))
                               (_%g264775264862%_ _%g264776264866%_))))
                       (_%g264775264862%_ _%g264776264866%_))))
               (_%g264775264862%_ _%g264776264866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264775264862%_
                                                _%g264776264866%_)))))
                                   (_%g264774265204%_ _%hd264773%_)))))
                         (if (pair? _%rest264747264755%_)
                             (let ((_%hd264752265212%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest264747264755%_)))
                                   (_%tl264753265215%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest264747264755%_))))
                               (let* ((_%hd265218%_ _%hd264752265212%_)
                                      (_%rest265221%_ _%tl264753265215%_))
                                 (_%K264751265208%_
                                  _%rest265221%_
                                  _%hd265218%_)))
                             (_%else264749264767%_))))))
                (begin
                  (let ((_g266514_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g266513_)
                               (##values-length _g266513_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g266514_ 2)))
                        (error "Context expects 2 values" _g266514_)))
                  (let ((_%unchecked-proc265224%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266513_ 0)))
                        (_%unchecked-clauses265226%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266513_ 1))))
                    (if _%unchecked-proc265224%_
                        (let* ((_%g265228265252%_
                                (lambda (_%g265229265248%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g265229265248%_))))
                               (_%g265227265337%_
                                (lambda (_%g265229265256%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g265229265256%_))
                                      (let ((_%e265232265259%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g265229265256%_))))
                                        (let ((_%hd265233265263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265232265259%_)))
                                              (_%tl265234265266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265232265259%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265234265266%_))
                                              (let ((_%e265235265269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265234265266%_))))
                                                (let ((_%hd265236265273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265235265269%_)))
                                                      (_%tl265237265276%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265235265269%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd265236265273%_))
                                                      (let ((_g266525_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd265236265273%_ '0))))
                (begin
                  (let ((_g266526_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g266525_)
                               (##values-length _g266525_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g266526_ 2)))
                        (error "Context expects 2 values" _g266526_)))
                  (let ((_%target265238265279%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266525_ 0)))
                        (_%tl265240265282%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266525_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl265240265282%_))
                        (letrec ((_%loop265241265285%_
                                  (lambda (_%hd265239265289%_
                                           _%clause265245265292%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd265239265289%_))
                                        (let ((_%e265242265294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd265239265289%_))))
                                          (let ((_%lp-hd265243265298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e265242265294%_)))
                                                (_%lp-tl265244265301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e265242265294%_))))
                                            (_%loop265241265285%_
                                             _%lp-tl265244265301%_
                                             (cons _%lp-hd265243265298%_
                                                   _%clause265245265292%_))))
                                        (let ((_%clause265246265304%_
                                               (reverse _%clause265245265292%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265237265276%_))
                                              ((lambda (_%g265230265307%_
                                                        _%g265231265309%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g265231265309%_
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
                                             (let ((__tmp266527
                                                    (lambda (_%g265328265331%_
                                                             _%g265329265334%_)
                                                      (cons _%g265328265331%_
                                                            _%g265329265334%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp266527
                                                '()
                                                _%g265230265307%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause265246265304%_
                                               _%hd265233265263%_)
                                              (_%g265228265252%_
                                               _%g265229265256%_)))))))
                          (_%loop265241265285%_ _%target265238265279%_ '()))
                        (_%g265228265252%_ _%g265229265256%_)))))
              (_%g265228265252%_ _%g265229265256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265228265252%_
                                               _%g265229265256%_))))
                                      (_%g265228265252%_ _%g265229265256%_)))))
                          (_%g265227265337%_
                           (list _%unchecked-proc265224%_
                                 _%unchecked-clauses265226%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g264679264690%_))))
                                        (_%g264677265341%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g264464264542%_
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
                                          _%g264578264659%_
                                          _%g264579264661%_))
                                       (let ((__tmp266528
                                              (lambda (_%g265344265348%_
                                                       _%g265345265351%_
                                                       _%g265346265353%_)
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
                                (cons _%g265345265351%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g265344265348%_ '())))))
              _%g265346265353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp266528
                                          '()
                                          _%g264578264659%_
                                          _%g264579264661%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig264589264655%_
                                    _%arity264590264657%_))))))
                   (_%loop264583264615%_ _%target264580264609%_ '() '()))
                 (_%g264576264602%_ _%g264577264606%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264576264602%_
                                                _%g264577264606%_)))))
                                   (_%g264575265356%_ _%signatures264573%_))
                                 (_%g264461264485%_ _%g264462264489%_)))
                           _%case-signature264479264537%_
                           _%hd264469264506%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop264474264518%_
                                                   _%target264471264512%_
                                                   '()))
                                                (_%g264461264485%_
                                                 _%g264462264489%_)))))
                                      (_%g264461264485%_ _%g264462264489%_))))
                              (_%g264461264485%_ _%g264462264489%_))))
                      (_%g264461264485%_ _%g264462264489%_)))))
          (_%g264460265360%_ _%stx264458%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx265368%_)
        (let* ((_%__stx266348266349%_ _%$stx265368%_)
               (_%g265374265434%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266348266349%_)))))
          (let ((_%__kont266351266352%_
                 (lambda (_%g265376265656%_ _%g265377265658%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265377265658%_ '()))
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
                                                       (cons _%g265377265658%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265376265656%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont266353266354%_
                 (lambda (_%g265391265581%_
                          _%g265392265583%_
                          _%g265393265584%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265393265584%_ '()))
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
                                                       (cons _%g265393265584%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265392265583%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g265391265581%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont266355266356%_
                 (lambda (_%g265410265495%_
                          _%g265411265497%_
                          _%g265412265498%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265412265498%_ '()))
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
                                                       (cons _%g265412265498%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265411265497%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g265410265495%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266348266349%_))
                (let ((_%e265378265612%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266348266349%_))))
                  (let ((_%tl265380265619%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265378265612%_)))
                        (_%hd265379265616%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265378265612%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl265380265619%_))
                        (let ((_%e265381265622%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl265380265619%_))))
                          (let ((_%tl265383265629%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265381265622%_)))
                                (_%hd265382265626%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265381265622%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd265382265626%_))
                                (let ((_%e265384265632%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd265382265626%_))))
                                  (if (equal? _%e265384265632%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl265383265629%_))
                                          (let ((_%e265385265636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl265383265629%_))))
                                            (let ((_%tl265387265643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e265385265636%_)))
                                                  (_%hd265386265640%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e265385265636%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265387265643%_))
                                                  (let ((_%e265388265646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl265387265643%_))))
                                                    (let ((_%tl265390265653%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265388265646%_)))
                                                          (_%hd265389265650%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265388265646%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl265390265653%_))
                                                          (_%__kont266351266352%_
                                                           _%hd265389265650%_
                                                           _%hd265386265640%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g265374265434%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g265374265434%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g265374265434%_)))
                                      (if (equal? _%e265384265632%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265383265629%_))
                                              (let ((_%e265401265551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265383265629%_))))
                                                (let ((_%tl265403265558%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265401265551%_)))
                                                      (_%hd265402265555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265401265551%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl265403265558%_))
                                                      (let ((_%e265404265561%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl265403265558%_))))
                (let ((_%tl265406265568%_
                       (let () (declare (not safe)) (##cdr _%e265404265561%_)))
                      (_%hd265405265565%_
                       (let ()
                         (declare (not safe))
                         (##car _%e265404265561%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl265406265568%_))
                      (let ((_%e265407265571%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl265406265568%_))))
                        (let ((_%tl265409265578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265407265571%_)))
                              (_%hd265408265575%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265407265571%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl265409265578%_))
                              (_%__kont266353266354%_
                               _%hd265408265575%_
                               _%hd265405265565%_
                               _%hd265402265555%_)
                              (let ()
                                (declare (not safe))
                                (_%g265374265434%_)))))
                      (let () (declare (not safe)) (_%g265374265434%_)))))
              (let () (declare (not safe)) (_%g265374265434%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g265374265434%_)))
                                          (if (equal? _%e265384265632%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265383265629%_))
                                                  (let ((_%e265420265465%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl265383265629%_))))
                                                    (let ((_%tl265422265472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265420265465%_)))
                                                          (_%hd265421265469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265420265465%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl265422265472%_))
                                                          (let ((_%e265423265475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl265422265472%_))))
                    (let ((_%tl265425265482%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265423265475%_)))
                          (_%hd265424265479%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265423265475%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl265425265482%_))
                          (let ((_%e265426265485%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl265425265482%_))))
                            (let ((_%tl265428265492%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e265426265485%_)))
                                  (_%hd265427265489%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e265426265485%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl265428265492%_))
                                  (_%__kont266355266356%_
                                   _%hd265427265489%_
                                   _%hd265424265479%_
                                   _%hd265421265469%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g265374265434%_)))))
                          (let () (declare (not safe)) (_%g265374265434%_)))))
                  (let () (declare (not safe)) (_%g265374265434%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g265374265434%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g265374265434%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g265374265434%_)))))
                        (let () (declare (not safe)) (_%g265374265434%_)))))
                (let () (declare (not safe)) (_%g265374265434%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx265680%_)
        (let* ((_%g265684265704%_
                (lambda (_%g265685265700%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265685265700%_))))
               (_%g265683265773%_
                (lambda (_%g265685265708%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265685265708%_))
                      (let ((_%e265687265711%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265685265708%_))))
                        (let ((_%hd265688265715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265687265711%_)))
                              (_%tl265689265718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265687265711%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl265689265718%_))
                              (let ((_g266529_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl265689265718%_
                                        '0))))
                                (begin
                                  (let ((_g266530_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266529_)
                                               (##values-length _g266529_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266530_ 2)))
                                        (error "Context expects 2 values"
                                               _g266530_)))
                                  (let ((_%target265690265721%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266529_ 0)))
                                        (_%tl265692265724%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266529_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265692265724%_))
                                        (letrec ((_%loop265693265727%_
                                                  (lambda (_%hd265691265731%_
                                                           _%decl265697265734%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd265691265731%_))
                                                        (let ((_%e265694265736%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd265691265731%_))))
                  (let ((_%lp-hd265695265740%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265694265736%_)))
                        (_%lp-tl265696265743%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265694265736%_))))
                    (_%loop265693265727%_
                     _%lp-tl265696265743%_
                     (cons _%lp-hd265695265740%_ _%decl265697265734%_))))
                (let ((_%decl265698265746%_ (reverse _%decl265697265734%_)))
                  ((lambda (_%g265686265749%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp266531
                                  (lambda (_%g265764265767%_ _%g265765265770%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g265764265767%_)
                                          _%g265765265770%_))))
                             (declare (not safe))
                             (foldr__0 __tmp266531 '() _%g265686265749%_))))
                   _%decl265698265746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop265693265727%_
                                           _%target265690265721%_
                                           '()))
                                        (_%g265684265704%_
                                         _%g265685265708%_)))))
                              (_%g265684265704%_ _%g265685265708%_))))
                      (_%g265684265704%_ _%g265685265708%_)))))
          (_%g265683265773%_ _%$stx265680%_))))))
