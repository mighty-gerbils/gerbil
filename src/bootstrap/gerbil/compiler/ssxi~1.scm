(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g266493_|
    (##structure
     gx#syntax-quote::t
     '@list
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
  (define |gxc[1]#_g266506_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266508_|
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
  (define |gxc[1]#_g266526_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266528_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx259951%_)
        (let* ((_%g259955259973%_
                (lambda (_%g259956259969%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259956259969%_))))
               (_%g259954260028%_
                (lambda (_%g259956259977%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259956259977%_))
                      (let ((_%e259959259980%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259956259977%_))))
                        (let ((_%hd259960259984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259959259980%_)))
                              (_%tl259961259987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259959259980%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259961259987%_))
                              (let ((_%e259962259990%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259961259987%_))))
                                (let ((_%hd259963259994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259962259990%_)))
                                      (_%tl259964259997%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259962259990%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259964259997%_))
                                      (let ((_%e259965260000%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259964259997%_))))
                                        (let ((_%hd259966260004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259965260000%_)))
                                              (_%tl259967260007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259965260000%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259967260007%_))
                                              ((lambda (_%g259957260010%_
                                                        _%g259958260012%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g259958260012%_))
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
                               (cons _%g259958260012%_ '()))
                         (cons _%g259957260010%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g259955259973%_
                                                      _%g259956259977%_)))
                                               _%hd259966260004%_
                                               _%hd259963259994%_)
                                              (_%g259955259973%_
                                               _%g259956259977%_))))
                                      (_%g259955259973%_ _%g259956259977%_))))
                              (_%g259955259973%_ _%g259956259977%_))))
                      (_%g259955259973%_ _%g259956259977%_)))))
          (_%g259954260028%_ _%$stx259951%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx260032%_)
        (let* ((_%g260036260054%_
                (lambda (_%g260037260050%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260037260050%_))))
               (_%g260035260109%_
                (lambda (_%g260037260058%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260037260058%_))
                      (let ((_%e260040260061%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260037260058%_))))
                        (let ((_%hd260041260065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260040260061%_)))
                              (_%tl260042260068%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260040260061%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260042260068%_))
                              (let ((_%e260043260071%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260042260068%_))))
                                (let ((_%hd260044260075%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260043260071%_)))
                                      (_%tl260045260078%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260043260071%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260045260078%_))
                                      (let ((_%e260046260081%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260045260078%_))))
                                        (let ((_%hd260047260085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260046260081%_)))
                                              (_%tl260048260088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260046260081%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260048260088%_))
                                              ((lambda (_%g260038260091%_
                                                        _%g260039260093%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g260039260093%_))
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
                               (cons _%g260039260093%_ '()))
                         (cons _%g260038260091%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g260036260054%_
                                                      _%g260037260058%_)))
                                               _%hd260047260085%_
                                               _%hd260044260075%_)
                                              (_%g260036260054%_
                                               _%g260037260058%_))))
                                      (_%g260036260054%_ _%g260037260058%_))))
                              (_%g260036260054%_ _%g260037260058%_))))
                      (_%g260036260054%_ _%g260037260058%_)))))
          (_%g260035260109%_ _%$stx260032%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx260113%_)
        (let* ((_%g260117260146%_
                (lambda (_%g260118260142%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260118260142%_))))
               (_%g260116260242%_
                (lambda (_%g260118260150%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260118260150%_))
                      (let ((_%e260121260153%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260118260150%_))))
                        (let ((_%hd260122260157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260121260153%_)))
                              (_%tl260123260160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260121260153%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260123260160%_))
                              (let ((_g266471_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl260123260160%_
                                        '0))))
                                (begin
                                  (let ((_g266472_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266471_)
                                               (##values-length _g266471_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266472_ 2)))
                                        (error "Context expects 2 values"
                                               _g266472_)))
                                  (let ((_%target260124260163%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266471_ 0)))
                                        (_%tl260126260166%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266471_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260126260166%_))
                                        (letrec ((_%loop260127260169%_
                                                  (lambda (_%hd260125260173%_
                                                           _%type260131260176%_
                                                           _%symbol260132260177%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd260125260173%_))
                                                        (let ((_%e260128260179%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd260125260173%_))))
                  (let ((_%lp-hd260129260183%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260128260179%_)))
                        (_%lp-tl260130260186%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260128260179%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd260129260183%_))
                        (let ((_%e260135260189%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd260129260183%_))))
                          (let ((_%hd260136260193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260135260189%_)))
                                (_%tl260137260196%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260135260189%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260137260196%_))
                                (let ((_%e260138260199%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260137260196%_))))
                                  (let ((_%hd260139260203%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260138260199%_)))
                                        (_%tl260140260206%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260138260199%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260140260206%_))
                                        (_%loop260127260169%_
                                         _%lp-tl260130260186%_
                                         (cons _%hd260139260203%_
                                               _%type260131260176%_)
                                         (cons _%hd260136260193%_
                                               _%symbol260132260177%_))
                                        (_%g260117260146%_
                                         _%g260118260150%_))))
                                (_%g260117260146%_ _%g260118260150%_))))
                        (_%g260117260146%_ _%g260118260150%_))))
                (let ((_%type260133260209%_ (reverse _%type260131260176%_))
                      (_%symbol260134260211%_
                       (reverse _%symbol260132260177%_)))
                  ((lambda (_%g260119260213%_ _%g260120260215%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g260119260213%_
                                _%g260120260215%_))
                             (let ((__tmp266473
                                    (lambda (_%g260230260234%_
                                             _%g260231260237%_
                                             _%g260232260239%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g260231260237%_
                                                        (cons _%g260230260234%_
                                                              '())))
                                            _%g260232260239%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp266473
                                '()
                                _%g260119260213%_
                                _%g260120260215%_)))))
                   _%type260133260209%_
                   _%symbol260134260211%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop260127260169%_
                                           _%target260124260163%_
                                           '()
                                           '()))
                                        (_%g260117260146%_
                                         _%g260118260150%_)))))
                              (_%g260117260146%_ _%g260118260150%_))))
                      (_%g260117260146%_ _%g260118260150%_)))))
          (_%g260116260242%_ _%$stx260113%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx260247%_)
        (let* ((_%__stx265782265783%_ _%$stx260247%_)
               (_%g260252260294%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265782265783%_)))))
          (let ((_%__kont265785265786%_
                 (lambda (_%g260254260422%_
                          _%g260255260424%_
                          _%g260256260425%_
                          _%g260257260426%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260257260426%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260256260425%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g260255260424%_ '()))
                                           (cons _%g260254260422%_ '())))))))
                (_%__kont265787265788%_
                 (lambda (_%g260273260341%_
                          _%g260274260343%_
                          _%g260275260344%_
                          _%g260276260345%_)
                   (cons _%g260276260345%_
                         (cons _%g260275260344%_
                               (cons _%g260274260343%_
                                     (cons _%g260273260341%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match265821265822%_
                   (lambda (_%e260258260372%_
                            _%hd260259260376%_
                            _%tl260260260379%_
                            _%e260261260382%_
                            _%hd260262260386%_
                            _%tl260263260389%_
                            _%e260264260392%_
                            _%hd260265260396%_
                            _%tl260266260399%_
                            _%e260267260402%_
                            _%hd260268260406%_
                            _%tl260269260409%_
                            _%e260270260412%_
                            _%hd260271260416%_
                            _%tl260272260419%_)
                     (let ((_%g260254260422%_ _%hd260271260416%_)
                           (_%g260255260424%_ _%hd260268260406%_)
                           (_%g260256260425%_ _%hd260265260396%_)
                           (_%g260257260426%_ _%hd260262260386%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260257260426%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260256260425%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260255260424%_)))
                           (_%__kont265785265786%_
                            _%g260254260422%_
                            _%g260255260424%_
                            _%g260256260425%_
                            _%g260257260426%_)
                           (let ()
                             (declare (not safe))
                             (_%g260252260294%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx265782265783%_))
                  (let ((_%e260258260372%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx265782265783%_))))
                    (let ((_%tl260260260379%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260258260372%_)))
                          (_%hd260259260376%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260258260372%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260260260379%_))
                          (let ((_%e260261260382%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl260260260379%_))))
                            (let ((_%tl260263260389%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260261260382%_)))
                                  (_%hd260262260386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260261260382%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl260263260389%_))
                                  (let ((_%e260264260392%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl260263260389%_))))
                                    (let ((_%tl260266260399%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e260264260392%_)))
                                          (_%hd260265260396%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e260264260392%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl260266260399%_))
                                          (let ((_%e260267260402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl260266260399%_))))
                                            (let ((_%tl260269260409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e260267260402%_)))
                                                  (_%hd260268260406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e260267260402%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl260269260409%_))
                                                  (let ((_%e260270260412%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl260269260409%_))))
                                                    (let ((_%tl260272260419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e260270260412%_)))
                                                          (_%hd260271260416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e260270260412%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl260272260419%_))
                                                          (_%__match265821265822%_
                                                           _%e260258260372%_
                                                           _%hd260259260376%_
                                                           _%tl260260260379%_
                                                           _%e260261260382%_
                                                           _%hd260262260386%_
                                                           _%tl260263260389%_
                                                           _%e260264260392%_
                                                           _%hd260265260396%_
                                                           _%tl260266260399%_
                                                           _%e260267260402%_
                                                           _%hd260268260406%_
                                                           _%tl260269260409%_
                                                           _%e260270260412%_
                                                           _%hd260271260416%_
                                                           _%tl260272260419%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g260252260294%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260269260409%_))
                                                      (_%__kont265787265788%_
                                                       _%hd260268260406%_
                                                       _%hd260265260396%_
                                                       _%hd260262260386%_
                                                       _%hd260259260376%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g260252260294%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g260252260294%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g260252260294%_)))))
                          (let () (declare (not safe)) (_%g260252260294%_)))))
                  (let () (declare (not safe)) (_%g260252260294%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx260451%_)
        (let* ((_%g260455260490%_
                (lambda (_%g260456260486%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260456260486%_))))
               (_%g260454260603%_
                (lambda (_%g260456260494%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260456260494%_))
                      (let ((_%e260460260497%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260456260494%_))))
                        (let ((_%hd260461260501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260460260497%_)))
                              (_%tl260462260504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260460260497%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260462260504%_))
                              (let ((_g266474_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl260462260504%_
                                        '0))))
                                (begin
                                  (let ((_g266475_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266474_)
                                               (##values-length _g266474_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266475_ 2)))
                                        (error "Context expects 2 values"
                                               _g266475_)))
                                  (let ((_%target260463260507%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266474_ 0)))
                                        (_%tl260465260510%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266474_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260465260510%_))
                                        (letrec ((_%loop260466260513%_
                                                  (lambda (_%hd260464260517%_
                                                           _%symbol260470260520%_
                                                           _%method260471260521%_
                                                           _%type-t260472260522%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd260464260517%_))
                                                        (let ((_%e260467260524%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd260464260517%_))))
                  (let ((_%lp-hd260468260528%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260467260524%_)))
                        (_%lp-tl260469260531%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260467260524%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd260468260528%_))
                        (let ((_%e260476260534%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd260468260528%_))))
                          (let ((_%hd260477260538%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260476260534%_)))
                                (_%tl260478260541%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260476260534%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260478260541%_))
                                (let ((_%e260479260544%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260478260541%_))))
                                  (let ((_%hd260480260548%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260479260544%_)))
                                        (_%tl260481260551%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260479260544%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl260481260551%_))
                                        (let ((_%e260482260554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl260481260551%_))))
                                          (let ((_%hd260483260558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e260482260554%_)))
                                                (_%tl260484260561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e260482260554%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260484260561%_))
                                                (_%loop260466260513%_
                                                 _%lp-tl260469260531%_
                                                 (cons _%hd260483260558%_
                                                       _%symbol260470260520%_)
                                                 (cons _%hd260480260548%_
                                                       _%method260471260521%_)
                                                 (cons _%hd260477260538%_
                                                       _%type-t260472260522%_))
                                                (_%g260455260490%_
                                                 _%g260456260494%_))))
                                        (_%g260455260490%_
                                         _%g260456260494%_))))
                                (_%g260455260490%_ _%g260456260494%_))))
                        (_%g260455260490%_ _%g260456260494%_))))
                (let ((_%symbol260473260564%_ (reverse _%symbol260470260520%_))
                      (_%method260474260566%_ (reverse _%method260471260521%_))
                      (_%type-t260475260567%_
                       (reverse _%type-t260472260522%_)))
                  ((lambda (_%g260457260569%_
                            _%g260458260571%_
                            _%g260459260572%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g260457260569%_
                                _%g260458260571%_
                                _%g260459260572%_))
                             (let ((__tmp266476
                                    (lambda (_%g260588260593%_
                                             _%g260589260596%_
                                             _%g260590260598%_
                                             _%g260591260600%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g260590260598%_
                                                        (cons _%g260589260596%_
                                                              (cons _%g260588260593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g260591260600%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp266476
                                '()
                                _%g260457260569%_
                                _%g260458260571%_
                                _%g260459260572%_)))))
                   _%symbol260473260564%_
                   _%method260474260566%_
                   _%type-t260475260567%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop260466260513%_
                                           _%target260463260507%_
                                           '()
                                           '()
                                           '()))
                                        (_%g260455260490%_
                                         _%g260456260494%_)))))
                              (_%g260455260490%_ _%g260456260494%_))))
                      (_%g260455260490%_ _%g260456260494%_)))))
          (_%g260454260603%_ _%$stx260451%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx260608%_)
        (let* ((_%g260612260645%_
                (lambda (_%g260613260641%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260613260641%_))))
               (_%g260611260755%_
                (lambda (_%g260613260649%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260613260649%_))
                      (let ((_%e260617260652%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260613260649%_))))
                        (let ((_%hd260618260656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260617260652%_)))
                              (_%tl260619260659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260617260652%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260619260659%_))
                              (let ((_%e260620260662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260619260659%_))))
                                (let ((_%hd260621260666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260620260662%_)))
                                      (_%tl260622260669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260620260662%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl260622260669%_))
                                      (let ((_g266477_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl260622260669%_
                                                '0))))
                                        (begin
                                          (let ((_g266478_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g266477_)
                                                       (##values-length
                                                        _g266477_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g266478_ 2)))
                                                (error "Context expects 2 values"
                                                       _g266478_)))
                                          (let ((_%target260623260672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g266477_ 0)))
                                                (_%tl260625260675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g266477_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260625260675%_))
                                                (letrec ((_%loop260626260678%_
                                                          (lambda (_%hd260624260682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol260630260685%_
                           _%method260631260686%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd260624260682%_))
                        (let ((_%e260627260688%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd260624260682%_))))
                          (let ((_%lp-hd260628260692%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260627260688%_)))
                                (_%lp-tl260629260695%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260627260688%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd260628260692%_))
                                (let ((_%e260634260698%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd260628260692%_))))
                                  (let ((_%hd260635260702%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260634260698%_)))
                                        (_%tl260636260705%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260634260698%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl260636260705%_))
                                        (let ((_%e260637260708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl260636260705%_))))
                                          (let ((_%hd260638260712%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e260637260708%_)))
                                                (_%tl260639260715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e260637260708%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260639260715%_))
                                                (_%loop260626260678%_
                                                 _%lp-tl260629260695%_
                                                 (cons _%hd260638260712%_
                                                       _%symbol260630260685%_)
                                                 (cons _%hd260635260702%_
                                                       _%method260631260686%_))
                                                (_%g260612260645%_
                                                 _%g260613260649%_))))
                                        (_%g260612260645%_
                                         _%g260613260649%_))))
                                (_%g260612260645%_ _%g260613260649%_))))
                        (let ((_%symbol260632260718%_
                               (reverse _%symbol260630260685%_))
                              (_%method260633260720%_
                               (reverse _%method260631260686%_)))
                          ((lambda (_%g260614260722%_
                                    _%g260615260724%_
                                    _%g260616260725%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g260614260722%_
                                        _%g260615260724%_))
                                     (let ((__tmp266479
                                            (lambda (_%g260743260747%_
                                                     _%g260744260750%_
                                                     _%g260745260752%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g260616260725%_
                                                                (cons _%g260744260750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g260743260747%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g260745260752%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp266479
                                        '()
                                        _%g260614260722%_
                                        _%g260615260724%_)))))
                           _%symbol260632260718%_
                           _%method260633260720%_
                           _%hd260621260666%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop260626260678%_
                                                   _%target260623260672%_
                                                   '()
                                                   '()))
                                                (_%g260612260645%_
                                                 _%g260613260649%_)))))
                                      (_%g260612260645%_ _%g260613260649%_))))
                              (_%g260612260645%_ _%g260613260649%_))))
                      (_%g260612260645%_ _%g260613260649%_)))))
          (_%g260611260755%_ _%$stx260608%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx260760%_)
        (let* ((_%g260764260778%_
                (lambda (_%g260765260774%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260765260774%_))))
               (_%g260763260819%_
                (lambda (_%g260765260782%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260765260782%_))
                      (let ((_%e260767260785%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260765260782%_))))
                        (let ((_%hd260768260789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260767260785%_)))
                              (_%tl260769260792%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260767260785%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260769260792%_))
                              (let ((_%e260770260795%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260769260792%_))))
                                (let ((_%hd260771260799%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260770260795%_)))
                                      (_%tl260772260802%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260770260795%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260772260802%_))
                                      ((lambda (_%g260766260805%_)
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
                                                           (cons _%g260766260805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd260771260799%_)
                                      (_%g260764260778%_ _%g260765260782%_))))
                              (_%g260764260778%_ _%g260765260782%_))))
                      (_%g260764260778%_ _%g260765260782%_)))))
          (_%g260763260819%_ _%$stx260760%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx260823%_)
        (let* ((_%g260827260881%_
                (lambda (_%g260828260877%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260828260877%_))))
               (_%g260826261062%_
                (lambda (_%g260828260885%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260828260885%_))
                      (let ((_%e260840260888%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260828260885%_))))
                        (let ((_%hd260841260892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260840260888%_)))
                              (_%tl260842260895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260840260888%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260842260895%_))
                              (let ((_%e260843260898%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260842260895%_))))
                                (let ((_%hd260844260902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260843260898%_)))
                                      (_%tl260845260905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260843260898%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260845260905%_))
                                      (let ((_%e260846260908%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260845260905%_))))
                                        (let ((_%hd260847260912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260846260908%_)))
                                              (_%tl260848260915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260846260908%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260848260915%_))
                                              (let ((_%e260849260918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl260848260915%_))))
                                                (let ((_%hd260850260922%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260849260918%_)))
                                                      (_%tl260851260925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260849260918%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl260851260925%_))
                                                      (let ((_%e260852260928%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl260851260925%_))))
                (let ((_%hd260853260932%_
                       (let () (declare (not safe)) (##car _%e260852260928%_)))
                      (_%tl260854260935%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e260852260928%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl260854260935%_))
                      (let ((_%e260855260938%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl260854260935%_))))
                        (let ((_%hd260856260942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260855260938%_)))
                              (_%tl260857260945%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260855260938%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260857260945%_))
                              (let ((_%e260858260948%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260857260945%_))))
                                (let ((_%hd260859260952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260858260948%_)))
                                      (_%tl260860260955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260858260948%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260860260955%_))
                                      (let ((_%e260861260958%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260860260955%_))))
                                        (let ((_%hd260862260962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260861260958%_)))
                                              (_%tl260863260965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260861260958%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260863260965%_))
                                              (let ((_%e260864260968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl260863260965%_))))
                                                (let ((_%hd260865260972%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260864260968%_)))
                                                      (_%tl260866260975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260864260968%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl260866260975%_))
                                                      (let ((_%e260867260978%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl260866260975%_))))
                (let ((_%hd260868260982%_
                       (let () (declare (not safe)) (##car _%e260867260978%_)))
                      (_%tl260869260985%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e260867260978%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl260869260985%_))
                      (let ((_%e260870260988%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl260869260985%_))))
                        (let ((_%hd260871260992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260870260988%_)))
                              (_%tl260872260995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260870260988%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260872260995%_))
                              (let ((_%e260873260998%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260872260995%_))))
                                (let ((_%hd260874261002%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260873260998%_)))
                                      (_%tl260875261005%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260873260998%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl260875261005%_))
                                      ((lambda (_%g260829261008%_
                                                _%g260830261010%_
                                                _%g260831261011%_
                                                _%g260832261012%_
                                                _%g260833261013%_
                                                _%g260834261014%_
                                                _%g260835261015%_
                                                _%g260836261016%_
                                                _%g260837261017%_
                                                _%g260838261018%_
                                                _%g260839261019%_)
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
                                                           (cons _%g260839261019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g260838261018%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g260837261017%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260836261016%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260835261015%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g260834261014%_ '()))
                                           (cons _%g260833261013%_
                                                 (cons _%g260832261012%_
                                                       (cons _%g260831261011%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g260830261010%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g260829261008%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd260874261002%_
                                       _%hd260871260992%_
                                       _%hd260868260982%_
                                       _%hd260865260972%_
                                       _%hd260862260962%_
                                       _%hd260859260952%_
                                       _%hd260856260942%_
                                       _%hd260853260932%_
                                       _%hd260850260922%_
                                       _%hd260847260912%_
                                       _%hd260844260902%_)
                                      (_%g260827260881%_ _%g260828260885%_))))
                              (_%g260827260881%_ _%g260828260885%_))))
                      (_%g260827260881%_ _%g260828260885%_))))
              (_%g260827260881%_ _%g260828260885%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g260827260881%_
                                               _%g260828260885%_))))
                                      (_%g260827260881%_ _%g260828260885%_))))
                              (_%g260827260881%_ _%g260828260885%_))))
                      (_%g260827260881%_ _%g260828260885%_))))
              (_%g260827260881%_ _%g260828260885%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g260827260881%_
                                               _%g260828260885%_))))
                                      (_%g260827260881%_ _%g260828260885%_))))
                              (_%g260827260881%_ _%g260828260885%_))))
                      (_%g260827260881%_ _%g260828260885%_)))))
          (_%g260826261062%_ _%$stx260823%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx261066%_)
        (let* ((_%g261070261084%_
                (lambda (_%g261071261080%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261071261080%_))))
               (_%g261069261125%_
                (lambda (_%g261071261088%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261071261088%_))
                      (let ((_%e261073261091%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261071261088%_))))
                        (let ((_%hd261074261095%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261073261091%_)))
                              (_%tl261075261098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261073261091%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261075261098%_))
                              (let ((_%e261076261101%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261075261098%_))))
                                (let ((_%hd261077261105%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261076261101%_)))
                                      (_%tl261078261108%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261076261101%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261078261108%_))
                                      ((lambda (_%g261072261111%_)
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
                                                           (cons _%g261072261111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261077261105%_)
                                      (_%g261070261084%_ _%g261071261088%_))))
                              (_%g261070261084%_ _%g261071261088%_))))
                      (_%g261070261084%_ _%g261071261088%_)))))
          (_%g261069261125%_ _%$stx261066%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx261129%_)
        (let* ((_%g261133261147%_
                (lambda (_%g261134261143%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261134261143%_))))
               (_%g261132261188%_
                (lambda (_%g261134261151%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261134261151%_))
                      (let ((_%e261136261154%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261134261151%_))))
                        (let ((_%hd261137261158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261136261154%_)))
                              (_%tl261138261161%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261136261154%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261138261161%_))
                              (let ((_%e261139261164%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261138261161%_))))
                                (let ((_%hd261140261168%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261139261164%_)))
                                      (_%tl261141261171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261139261164%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261141261171%_))
                                      ((lambda (_%g261135261174%_)
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
                                                           (cons _%g261135261174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261140261168%_)
                                      (_%g261133261147%_ _%g261134261151%_))))
                              (_%g261133261147%_ _%g261134261151%_))))
                      (_%g261133261147%_ _%g261134261151%_)))))
          (_%g261132261188%_ _%$stx261129%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx261192%_)
        (let* ((_%g261196261218%_
                (lambda (_%g261197261214%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261197261214%_))))
               (_%g261195261287%_
                (lambda (_%g261197261222%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261197261222%_))
                      (let ((_%e261201261225%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261197261222%_))))
                        (let ((_%hd261202261229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261201261225%_)))
                              (_%tl261203261232%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261201261225%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261203261232%_))
                              (let ((_%e261204261235%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261203261232%_))))
                                (let ((_%hd261205261239%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261204261235%_)))
                                      (_%tl261206261242%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261204261235%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261206261242%_))
                                      (let ((_%e261207261245%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261206261242%_))))
                                        (let ((_%hd261208261249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261207261245%_)))
                                              (_%tl261209261252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261207261245%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261209261252%_))
                                              (let ((_%e261210261255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261209261252%_))))
                                                (let ((_%hd261211261259%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261210261255%_)))
                                                      (_%tl261212261262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261210261255%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261212261262%_))
                                                      ((lambda (_%g261198261265%_
                                                                _%g261199261267%_
                                                                _%g261200261268%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261200261268%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g261199261267%_ '()))
                                   (cons _%g261198261265%_ '())))))
               _%hd261211261259%_
               _%hd261208261249%_
               _%hd261205261239%_)
              (_%g261196261218%_ _%g261197261222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261196261218%_
                                               _%g261197261222%_))))
                                      (_%g261196261218%_ _%g261197261222%_))))
                              (_%g261196261218%_ _%g261197261222%_))))
                      (_%g261196261218%_ _%g261197261222%_)))))
          (_%g261195261287%_ _%$stx261192%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx261291%_)
        (let* ((_%g261295261317%_
                (lambda (_%g261296261313%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261296261313%_))))
               (_%g261294261386%_
                (lambda (_%g261296261321%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261296261321%_))
                      (let ((_%e261300261324%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261296261321%_))))
                        (let ((_%hd261301261328%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261300261324%_)))
                              (_%tl261302261331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261300261324%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261302261331%_))
                              (let ((_%e261303261334%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261302261331%_))))
                                (let ((_%hd261304261338%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261303261334%_)))
                                      (_%tl261305261341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261303261334%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261305261341%_))
                                      (let ((_%e261306261344%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261305261341%_))))
                                        (let ((_%hd261307261348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261306261344%_)))
                                              (_%tl261308261351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261306261344%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261308261351%_))
                                              (let ((_%e261309261354%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261308261351%_))))
                                                (let ((_%hd261310261358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261309261354%_)))
                                                      (_%tl261311261361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261309261354%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261311261361%_))
                                                      ((lambda (_%g261297261364%_
                                                                _%g261298261366%_
                                                                _%g261299261367%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261299261367%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g261298261366%_ '()))
                                   (cons _%g261297261364%_ '())))))
               _%hd261310261358%_
               _%hd261307261348%_
               _%hd261304261338%_)
              (_%g261295261317%_ _%g261296261321%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261295261317%_
                                               _%g261296261321%_))))
                                      (_%g261295261317%_ _%g261296261321%_))))
                              (_%g261295261317%_ _%g261296261321%_))))
                      (_%g261295261317%_ _%g261296261321%_)))))
          (_%g261294261386%_ _%$stx261291%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx261390%_)
        (let* ((_%g261394261408%_
                (lambda (_%g261395261404%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261395261404%_))))
               (_%g261393261449%_
                (lambda (_%g261395261412%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261395261412%_))
                      (let ((_%e261397261415%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261395261412%_))))
                        (let ((_%hd261398261419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261397261415%_)))
                              (_%tl261399261422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261397261415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261399261422%_))
                              (let ((_%e261400261425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261399261422%_))))
                                (let ((_%hd261401261429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261400261425%_)))
                                      (_%tl261402261432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261400261425%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261402261432%_))
                                      ((lambda (_%g261396261435%_)
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
                                                           (cons _%g261396261435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261401261429%_)
                                      (_%g261394261408%_ _%g261395261412%_))))
                              (_%g261394261408%_ _%g261395261412%_))))
                      (_%g261394261408%_ _%g261395261412%_)))))
          (_%g261393261449%_ _%$stx261390%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx261453%_)
        (let* ((_%g261457261475%_
                (lambda (_%g261458261471%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261458261471%_))))
               (_%g261456261530%_
                (lambda (_%g261458261479%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261458261479%_))
                      (let ((_%e261461261482%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261458261479%_))))
                        (let ((_%hd261462261486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261461261482%_)))
                              (_%tl261463261489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261461261482%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261463261489%_))
                              (let ((_%e261464261492%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261463261489%_))))
                                (let ((_%hd261465261496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261464261492%_)))
                                      (_%tl261466261499%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261464261492%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261466261499%_))
                                      (let ((_%e261467261502%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261466261499%_))))
                                        (let ((_%hd261468261506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261467261502%_)))
                                              (_%tl261469261509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261467261502%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261469261509%_))
                                              ((lambda (_%g261459261512%_
                                                        _%g261460261514%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g261460261514%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261459261512%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd261468261506%_
                                               _%hd261465261496%_)
                                              (_%g261457261475%_
                                               _%g261458261479%_))))
                                      (_%g261457261475%_ _%g261458261479%_))))
                              (_%g261457261475%_ _%g261458261479%_))))
                      (_%g261457261475%_ _%g261458261479%_)))))
          (_%g261456261530%_ _%$stx261453%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx261534%_)
        (let* ((_%__stx265850265851%_ _%$stx261534%_)
               (_%g261541261602%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265850265851%_)))))
          (let ((_%__kont265853265854%_
                 (lambda (_%g261543261840%_ _%g261544261842%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261544261842%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261543261840%_ '()))
                                     '())))))
                (_%__kont265855265856%_
                 (lambda (_%g261554261779%_
                          _%g261555261781%_
                          _%g261556261782%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261556261782%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261555261781%_ '()))
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
                                 (cons _%g261554261779%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont265857265858%_
                 (lambda (_%g261573261703%_ _%g261574261705%_)
                   (cons _%g261574261705%_
                         (cons _%g261573261703%_ (cons '#f '())))))
                (_%__kont265859265860%_
                 (lambda (_%g261581261653%_
                          _%g261582261655%_
                          _%g261583261656%_)
                   (cons _%g261583261656%_
                         (cons _%g261582261655%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g261581261653%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx265850265851%_))
                (let ((_%e261545261810%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx265850265851%_))))
                  (let ((_%tl261547261817%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261545261810%_)))
                        (_%hd261546261814%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261545261810%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl261547261817%_))
                        (let ((_%e261548261820%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl261547261817%_))))
                          (let ((_%tl261550261827%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261548261820%_)))
                                (_%hd261549261824%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261548261820%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261550261827%_))
                                (let ((_%e261551261830%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261550261827%_))))
                                  (let ((_%tl261553261837%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261551261830%_)))
                                        (_%hd261552261834%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261551261830%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261553261837%_))
                                        (_%__kont265853265854%_
                                         _%hd261552261834%_
                                         _%hd261549261824%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl261553261837%_))
                                            (let ((_%e261566261755%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl261553261837%_))))
                                              (let ((_%tl261568261762%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e261566261755%_)))
                                                    (_%hd261567261759%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e261566261755%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd261567261759%_))
                                                    (let ((_%e261569261765%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd261567261759%_))))
                                                      (if (equal? _%e261569261765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261568261762%_))
                      (let ((_%e261570261769%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261568261762%_))))
                        (let ((_%tl261572261776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261570261769%_)))
                              (_%hd261571261773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261570261769%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl261572261776%_))
                              (_%__kont265855265856%_
                               _%hd261571261773%_
                               _%hd261552261834%_
                               _%hd261549261824%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd261552261834%_))
                                  (let ((_%e261593261639%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd261552261834%_))))
                                    (declare (not safe))
                                    (_%g261541261602%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g261541261602%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd261552261834%_))
                          (let ((_%e261593261639%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd261552261834%_))))
                            (if (equal? _%e261593261639%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl261568261762%_))
                                    (_%__kont265859265860%_
                                     _%hd261567261759%_
                                     _%hd261549261824%_
                                     _%hd261546261814%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g261541261602%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g261541261602%_))))
                          (let () (declare (not safe)) (_%g261541261602%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd261552261834%_))
                      (let ((_%e261593261639%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd261552261834%_))))
                        (if (equal? _%e261593261639%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl261568261762%_))
                                (_%__kont265859265860%_
                                 _%hd261567261759%_
                                 _%hd261549261824%_
                                 _%hd261546261814%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g261541261602%_)))
                            (let () (declare (not safe)) (_%g261541261602%_))))
                      (let () (declare (not safe)) (_%g261541261602%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd261552261834%_))
                                                        (let ((_%e261593261639%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd261552261834%_))))
                  (if (equal? _%e261593261639%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl261568261762%_))
                          (_%__kont265859265860%_
                           _%hd261567261759%_
                           _%hd261549261824%_
                           _%hd261546261814%_)
                          (let () (declare (not safe)) (_%g261541261602%_)))
                      (let () (declare (not safe)) (_%g261541261602%_))))
                (let () (declare (not safe)) (_%g261541261602%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd261552261834%_))
                                                (let ((_%e261593261639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd261552261834%_))))
                                                  (declare (not safe))
                                                  (_%g261541261602%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g261541261602%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl261550261827%_))
                                    (_%__kont265857265858%_
                                     _%hd261549261824%_
                                     _%hd261546261814%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g261541261602%_))))))
                        (let () (declare (not safe)) (_%g261541261602%_)))))
                (let () (declare (not safe)) (_%g261541261602%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx261861%_)
        (let* ((_%g261865261894%_
                (lambda (_%g261866261890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261866261890%_))))
               (_%g261864261999%_
                (lambda (_%g261866261898%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261866261898%_))
                      (let ((_%e261868261901%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261866261898%_))))
                        (let ((_%hd261869261905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261868261901%_)))
                              (_%tl261870261908%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261868261901%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl261870261908%_))
                              (let ((_g266480_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl261870261908%_
                                        '0))))
                                (begin
                                  (let ((_g266481_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266480_)
                                               (##values-length _g266480_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266481_ 2)))
                                        (error "Context expects 2 values"
                                               _g266481_)))
                                  (let ((_%target261871261911%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266480_ 0)))
                                        (_%tl261873261914%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266480_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261873261914%_))
                                        (letrec ((_%loop261874261917%_
                                                  (lambda (_%hd261872261921%_
                                                           _%clause261878261924%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd261872261921%_))
                                                        (let ((_%e261875261926%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd261872261921%_))))
                  (let ((_%lp-hd261876261930%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261875261926%_)))
                        (_%lp-tl261877261933%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261875261926%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd261876261930%_))
                        (let ((_g266482_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd261876261930%_
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
                            (let ((_%target261880261936%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g266482_ 0)))
                                  (_%tl261882261939%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g266482_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl261882261939%_))
                                  (letrec ((_%loop261883261942%_
                                            (lambda (_%hd261881261946%_
                                                     _%clause261887261949%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd261881261946%_))
                                                  (let ((_%e261884261951%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd261881261946%_))))
                                                    (let ((_%lp-hd261885261955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e261884261951%_)))
                                                          (_%lp-tl261886261958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e261884261951%_))))
                                                      (_%loop261883261942%_
                                                       _%lp-tl261886261958%_
                                                       (cons _%lp-hd261885261955%_
                                                             _%clause261887261949%_))))
                                                  (let ((_%clause261888261961%_
                                                         (reverse _%clause261887261949%_)))
                                                    (_%loop261874261917%_
                                                     _%lp-tl261877261933%_
                                                     (cons _%clause261888261961%_
                                                           _%clause261878261924%_)))))))
                                    (_%loop261883261942%_
                                     _%target261880261936%_
                                     '()))
                                  (_%g261865261894%_ _%g261866261898%_)))))
                        (_%g261865261894%_ _%g261866261898%_))))
                (let ((_%clause261879261964%_
                       (reverse _%clause261878261924%_)))
                  ((lambda (_%g261867261967%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp266484
                                              (lambda (_%g261982261987%_
                                                       _%g261983261990%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp266485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g261984261993%_ _%g261985261996%_)
                             (cons _%g261984261993%_ _%g261985261996%_))))
                      (declare (not safe))
                      (foldr__0 __tmp266485 '() _%g261982261987%_)))
              _%g261983261990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp266484
                                          '()
                                          _%g261867261967%_)))
                                 '())))
                   _%clause261879261964%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop261874261917%_
                                           _%target261871261911%_
                                           '()))
                                        (_%g261865261894%_
                                         _%g261866261898%_)))))
                              (_%g261865261894%_ _%g261866261898%_))))
                      (_%g261865261894%_ _%g261866261898%_)))))
          (_%g261864261999%_ _%$stx261861%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx262005%_)
        (let* ((_%g262009262027%_
                (lambda (_%g262010262023%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262010262023%_))))
               (_%g262008262082%_
                (lambda (_%g262010262031%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262010262031%_))
                      (let ((_%e262013262034%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262010262031%_))))
                        (let ((_%hd262014262038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262013262034%_)))
                              (_%tl262015262041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262013262034%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262015262041%_))
                              (let ((_%e262016262044%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262015262041%_))))
                                (let ((_%hd262017262048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262016262044%_)))
                                      (_%tl262018262051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262016262044%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262018262051%_))
                                      (let ((_%e262019262054%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262018262051%_))))
                                        (let ((_%hd262020262058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262019262054%_)))
                                              (_%tl262021262061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262019262054%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262021262061%_))
                                              ((lambda (_%g262011262064%_
                                                        _%g262012262066%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262012262066%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262011262064%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262020262058%_
                                               _%hd262017262048%_)
                                              (_%g262009262027%_
                                               _%g262010262031%_))))
                                      (_%g262009262027%_ _%g262010262031%_))))
                              (_%g262009262027%_ _%g262010262031%_))))
                      (_%g262009262027%_ _%g262010262031%_)))))
          (_%g262008262082%_ _%$stx262005%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx262086%_)
        (let* ((_%g262090262108%_
                (lambda (_%g262091262104%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262091262104%_))))
               (_%g262089262163%_
                (lambda (_%g262091262112%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262091262112%_))
                      (let ((_%e262094262115%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262091262112%_))))
                        (let ((_%hd262095262119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262094262115%_)))
                              (_%tl262096262122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262094262115%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262096262122%_))
                              (let ((_%e262097262125%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262096262122%_))))
                                (let ((_%hd262098262129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262097262125%_)))
                                      (_%tl262099262132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262097262125%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262099262132%_))
                                      (let ((_%e262100262135%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262099262132%_))))
                                        (let ((_%hd262101262139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262100262135%_)))
                                              (_%tl262102262142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262100262135%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262102262142%_))
                                              ((lambda (_%g262092262145%_
                                                        _%g262093262147%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262093262147%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262092262145%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262101262139%_
                                               _%hd262098262129%_)
                                              (_%g262090262108%_
                                               _%g262091262112%_))))
                                      (_%g262090262108%_ _%g262091262112%_))))
                              (_%g262090262108%_ _%g262091262112%_))))
                      (_%g262090262108%_ _%g262091262112%_)))))
          (_%g262089262163%_ _%$stx262086%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx262167%_)
        (let* ((_%g262171262200%_
                (lambda (_%g262172262196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262172262196%_))))
               (_%g262170262296%_
                (lambda (_%g262172262204%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262172262204%_))
                      (let ((_%e262175262207%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262172262204%_))))
                        (let ((_%hd262176262211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262175262207%_)))
                              (_%tl262177262214%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262175262207%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262177262214%_))
                              (let ((_g266486_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262177262214%_
                                        '0))))
                                (begin
                                  (let ((_g266487_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266486_)
                                               (##values-length _g266486_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266487_ 2)))
                                        (error "Context expects 2 values"
                                               _g266487_)))
                                  (let ((_%target262178262217%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266486_ 0)))
                                        (_%tl262180262220%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266486_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262180262220%_))
                                        (letrec ((_%loop262181262223%_
                                                  (lambda (_%hd262179262227%_
                                                           _%rule262185262230%_
                                                           _%proc262186262231%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262179262227%_))
                                                        (let ((_%e262182262233%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262179262227%_))))
                  (let ((_%lp-hd262183262237%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262182262233%_)))
                        (_%lp-tl262184262240%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262182262233%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd262183262237%_))
                        (let ((_%e262189262243%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd262183262237%_))))
                          (let ((_%hd262190262247%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262189262243%_)))
                                (_%tl262191262250%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262189262243%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262191262250%_))
                                (let ((_%e262192262253%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262191262250%_))))
                                  (let ((_%hd262193262257%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262192262253%_)))
                                        (_%tl262194262260%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262192262253%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262194262260%_))
                                        (_%loop262181262223%_
                                         _%lp-tl262184262240%_
                                         (cons _%hd262193262257%_
                                               _%rule262185262230%_)
                                         (cons _%hd262190262247%_
                                               _%proc262186262231%_))
                                        (_%g262171262200%_
                                         _%g262172262204%_))))
                                (_%g262171262200%_ _%g262172262204%_))))
                        (_%g262171262200%_ _%g262172262204%_))))
                (let ((_%rule262187262263%_ (reverse _%rule262185262230%_))
                      (_%proc262188262265%_ (reverse _%proc262186262231%_)))
                  ((lambda (_%g262173262267%_ _%g262174262269%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g262173262267%_
                                _%g262174262269%_))
                             (let ((__tmp266488
                                    (lambda (_%g262284262288%_
                                             _%g262285262291%_
                                             _%g262286262293%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g262285262291%_
                                                        (cons _%g262284262288%_
                                                              '())))
                                            _%g262286262293%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp266488
                                '()
                                _%g262173262267%_
                                _%g262174262269%_)))))
                   _%rule262187262263%_
                   _%proc262188262265%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262181262223%_
                                           _%target262178262217%_
                                           '()
                                           '()))
                                        (_%g262171262200%_
                                         _%g262172262204%_)))))
                              (_%g262171262200%_ _%g262172262204%_))))
                      (_%g262171262200%_ _%g262172262204%_)))))
          (_%g262170262296%_ _%$stx262167%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx262301%_)
        (let* ((_%g262305262323%_
                (lambda (_%g262306262319%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262306262319%_))))
               (_%g262304262378%_
                (lambda (_%g262306262327%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262306262327%_))
                      (let ((_%e262309262330%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262306262327%_))))
                        (let ((_%hd262310262334%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262309262330%_)))
                              (_%tl262311262337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262309262330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262311262337%_))
                              (let ((_%e262312262340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262311262337%_))))
                                (let ((_%hd262313262344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262312262340%_)))
                                      (_%tl262314262347%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262312262340%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262314262347%_))
                                      (let ((_%e262315262350%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262314262347%_))))
                                        (let ((_%hd262316262354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262315262350%_)))
                                              (_%tl262317262357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262315262350%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262317262357%_))
                                              ((lambda (_%g262307262360%_
                                                        _%g262308262362%_)
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
                                                   (cons _%g262308262362%_
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
                 (cons _%g262307262360%_ '())))
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
                                   (cons _%g262308262362%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262316262354%_
                                               _%hd262313262344%_)
                                              (_%g262305262323%_
                                               _%g262306262327%_))))
                                      (_%g262305262323%_ _%g262306262327%_))))
                              (_%g262305262323%_ _%g262306262327%_))))
                      (_%g262305262323%_ _%g262306262327%_)))))
          (_%g262304262378%_ _%$stx262301%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx262382%_)
        (let* ((_%__stx265968265969%_ _%$stx262382%_)
               (_%g262387262412%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265968265969%_)))))
          (let ((_%__kont265971265972%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont265973265974%_
                 (lambda (_%g262392262459%_
                          _%g262393262461%_
                          _%g262394262462%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g262394262462%_
                                           (cons _%g262393262461%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g262392262459%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx265968265969%_))
                (let ((_%e262389262488%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx265968265969%_))))
                  (let ((_%tl262391262495%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262389262488%_)))
                        (_%hd262390262492%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262389262488%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl262391262495%_))
                        (_%__kont265971265972%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl262391262495%_))
                            (let ((_%e262398262429%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl262391262495%_))))
                              (let ((_%tl262400262436%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e262398262429%_)))
                                    (_%hd262399262433%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e262398262429%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd262399262433%_))
                                    (let ((_%e262401262439%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd262399262433%_))))
                                      (let ((_%tl262403262446%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e262401262439%_)))
                                            (_%hd262402262443%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e262401262439%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262403262446%_))
                                            (let ((_%e262404262449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262403262446%_))))
                                              (let ((_%tl262406262456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262404262449%_)))
                                                    (_%hd262405262453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262404262449%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl262406262456%_))
                                                    (_%__kont265973265974%_
                                                     _%tl262400262436%_
                                                     _%hd262405262453%_
                                                     _%hd262402262443%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g262387262412%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g262387262412%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g262387262412%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g262387262412%_))))))
                (let () (declare (not safe)) (_%g262387262412%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx262506%_)
        (let* ((_%__stx266012266013%_ _%$stx262506%_)
               (_%g262511262542%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266012266013%_)))))
          (let ((_%__kont266015266016%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont266017266018%_
                 (lambda (_%g262516262607%_
                          _%g262517262609%_
                          _%g262518262610%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g262518262610%_
                                           (let ((__tmp266489
                                                  (lambda (_%g262630262633%_
                                                           _%g262631262636%_)
                                                    (cons _%g262630262633%_
                                                          _%g262631262636%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp266489
                                              '()
                                              _%g262517262609%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g262516262607%_)
                                     '()))))))
            (let ((_%__match266055266056%_
                   (lambda (_%e262519262549%_
                            _%hd262520262553%_
                            _%tl262521262556%_
                            _%e262522262559%_
                            _%hd262523262563%_
                            _%tl262524262566%_
                            _%e262525262569%_
                            _%hd262526262573%_
                            _%tl262527262576%_
                            _%__splice266019266020%_
                            _%target262528262579%_
                            _%tl262530262582%_)
                     (letrec ((_%loop262531262585%_
                               (lambda (_%hd262529262589%_ _%sig262535262592%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd262529262589%_))
                                     (let ((_%e262532262594%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd262529262589%_))))
                                       (let ((_%lp-tl262534262601%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e262532262594%_)))
                                             (_%lp-hd262533262598%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e262532262594%_))))
                                         (_%loop262531262585%_
                                          _%lp-tl262534262601%_
                                          (cons _%lp-hd262533262598%_
                                                _%sig262535262592%_))))
                                     (let ((_%sig262536262604%_
                                            (reverse _%sig262535262592%_)))
                                       (_%__kont266017266018%_
                                        _%tl262524262566%_
                                        _%sig262536262604%_
                                        _%hd262526262573%_))))))
                       (_%loop262531262585%_ _%target262528262579%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266012266013%_))
                  (let ((_%e262513262646%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266012266013%_))))
                    (let ((_%tl262515262653%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262513262646%_)))
                          (_%hd262514262650%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262513262646%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262515262653%_))
                          (_%__kont266015266016%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262515262653%_))
                              (let ((_%e262522262559%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262515262653%_))))
                                (let ((_%tl262524262566%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262522262559%_)))
                                      (_%hd262523262563%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262522262559%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262523262563%_))
                                      (let ((_%e262525262569%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd262523262563%_))))
                                        (let ((_%tl262527262576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262525262569%_)))
                                              (_%hd262526262573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262525262569%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl262527262576%_))
                                              (let ((_%__splice266019266020%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl262527262576%_
                                                        '0))))
                                                (let ((_%tl262530262582%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266019266020%_
                                                          '1)))
                                                      (_%target262528262579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266019266020%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262530262582%_))
                                                      (_%__match266055266056%_
                                                       _%e262513262646%_
                                                       _%hd262514262650%_
                                                       _%tl262515262653%_
                                                       _%e262522262559%_
                                                       _%hd262523262563%_
                                                       _%tl262524262566%_
                                                       _%e262525262569%_
                                                       _%hd262526262573%_
                                                       _%tl262527262576%_
                                                       _%__splice266019266020%_
                                                       _%target262528262579%_
                                                       _%tl262530262582%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g262511262542%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g262511262542%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g262511262542%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g262511262542%_))))))
                  (let () (declare (not safe)) (_%g262511262542%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx262665%_)
        (let* ((_%__stx266058266059%_ _%$stx262665%_)
               (_%g262670262717%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266058266059%_)))))
          (let ((_%__kont266061266062%_
                 (lambda (_%g262672262875%_ _%g262673262877%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g262673262877%_
                               (let ((__tmp266490
                                      (lambda (_%g262897262900%_
                                               _%g262898262903%_)
                                        (cons _%g262897262900%_
                                              _%g262898262903%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp266490
                                  '()
                                  _%g262672262875%_))))))
                (_%__kont266065266066%_
                 (lambda (_%g262695262772%_ _%g262696262774%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g262696262774%_
                               (let ((__tmp266491
                                      (lambda (_%g262791262794%_
                                               _%g262792262797%_)
                                        (cons _%g262791262794%_
                                              _%g262792262797%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp266491
                                  '()
                                  _%g262695262772%_)))))))
            (let* ((_%__match266125266126%_
                    (lambda (_%e262697262724%_
                             _%hd262698262728%_
                             _%tl262699262731%_
                             _%e262700262734%_
                             _%hd262701262738%_
                             _%tl262702262741%_
                             _%__splice266067266068%_
                             _%target262703262744%_
                             _%tl262705262747%_)
                      (letrec ((_%loop262706262750%_
                                (lambda (_%hd262704262754%_
                                         _%sig262710262757%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262704262754%_))
                                      (let ((_%e262707262759%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd262704262754%_))))
                                        (let ((_%lp-tl262709262766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262707262759%_)))
                                              (_%lp-hd262708262763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262707262759%_))))
                                          (_%loop262706262750%_
                                           _%lp-tl262709262766%_
                                           (cons _%lp-hd262708262763%_
                                                 _%sig262710262757%_))))
                                      (let ((_%sig262711262769%_
                                             (reverse _%sig262710262757%_)))
                                        (_%__kont266065266066%_
                                         _%sig262711262769%_
                                         _%hd262701262738%_))))))
                        (_%loop262706262750%_ _%target262703262744%_ '()))))
                   (_%__match266117266118%_
                    (lambda (_%e262697262724%_
                             _%hd262698262728%_
                             _%tl262699262731%_
                             _%e262700262734%_
                             _%hd262701262738%_
                             _%tl262702262741%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl262702262741%_))
                          (let ((_%__splice266067266068%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl262702262741%_
                                    '0))))
                            (let ((_%tl262705262747%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice266067266068%_
                                      '1)))
                                  (_%target262703262744%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice266067266068%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262705262747%_))
                                  (_%__match266125266126%_
                                   _%e262697262724%_
                                   _%hd262698262728%_
                                   _%tl262699262731%_
                                   _%e262700262734%_
                                   _%hd262701262738%_
                                   _%tl262702262741%_
                                   _%__splice266067266068%_
                                   _%target262703262744%_
                                   _%tl262705262747%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g262670262717%_)))))
                          (let () (declare (not safe)) (_%g262670262717%_)))))
                   (_%__match266105266106%_
                    (lambda (_%e262674262807%_
                             _%hd262675262811%_
                             _%tl262676262814%_
                             _%e262677262817%_
                             _%hd262678262821%_
                             _%tl262679262824%_
                             _%e262680262827%_
                             _%hd262681262831%_
                             _%tl262682262834%_
                             _%e262683262837%_
                             _%hd262684262841%_
                             _%tl262685262844%_
                             _%__splice266063266064%_
                             _%target262686262847%_
                             _%tl262688262850%_)
                      (letrec ((_%loop262689262853%_
                                (lambda (_%hd262687262857%_
                                         _%sig262693262860%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262687262857%_))
                                      (let ((_%e262690262862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd262687262857%_))))
                                        (let ((_%lp-tl262692262869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262690262862%_)))
                                              (_%lp-hd262691262866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262690262862%_))))
                                          (_%loop262689262853%_
                                           _%lp-tl262692262869%_
                                           (cons _%lp-hd262691262866%_
                                                 _%sig262693262860%_))))
                                      (let ((_%sig262694262872%_
                                             (reverse _%sig262693262860%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl262682262834%_))
                                            (_%__kont266061266062%_
                                             _%sig262694262872%_
                                             _%hd262678262821%_)
                                            (_%__match266117266118%_
                                             _%e262674262807%_
                                             _%hd262675262811%_
                                             _%tl262676262814%_
                                             _%e262677262817%_
                                             _%hd262678262821%_
                                             _%tl262679262824%_)))))))
                        (_%loop262689262853%_ _%target262686262847%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266058266059%_))
                  (let ((_%e262674262807%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266058266059%_))))
                    (let ((_%tl262676262814%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262674262807%_)))
                          (_%hd262675262811%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262674262807%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl262676262814%_))
                          (let ((_%e262677262817%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl262676262814%_))))
                            (let ((_%tl262679262824%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e262677262817%_)))
                                  (_%hd262678262821%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e262677262817%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl262679262824%_))
                                  (let ((_%e262680262827%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl262679262824%_))))
                                    (let ((_%tl262682262834%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e262680262827%_)))
                                          (_%hd262681262831%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e262680262827%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd262681262831%_))
                                          (let ((_%e262683262837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd262681262831%_))))
                                            (let ((_%tl262685262844%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e262683262837%_)))
                                                  (_%hd262684262841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e262683262837%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd262684262841%_))
                                                  (if (let ((__tmp266492
                                                             |gxc[1]#_g266493_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp266492
                                                         _%hd262684262841%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl262685262844%_))
                                                          (let ((_%__splice266063266064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl262685262844%_
                            '0))))
                    (let ((_%tl262688262850%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266063266064%_ '1)))
                          (_%target262686262847%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266063266064%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262688262850%_))
                          (_%__match266105266106%_
                           _%e262674262807%_
                           _%hd262675262811%_
                           _%tl262676262814%_
                           _%e262677262817%_
                           _%hd262678262821%_
                           _%tl262679262824%_
                           _%e262680262827%_
                           _%hd262681262831%_
                           _%tl262682262834%_
                           _%e262683262837%_
                           _%hd262684262841%_
                           _%tl262685262844%_
                           _%__splice266063266064%_
                           _%target262686262847%_
                           _%tl262688262850%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262679262824%_))
                              (let ((_%__splice266067266068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl262679262824%_
                                        '0))))
                                (let ((_%tl262705262747%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice266067266068%_
                                          '1)))
                                      (_%target262703262744%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice266067266068%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl262705262747%_))
                                      (_%__match266125266126%_
                                       _%e262674262807%_
                                       _%hd262675262811%_
                                       _%tl262676262814%_
                                       _%e262677262817%_
                                       _%hd262678262821%_
                                       _%tl262679262824%_
                                       _%__splice266067266068%_
                                       _%target262703262744%_
                                       _%tl262705262747%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g262670262717%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g262670262717%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl262679262824%_))
                      (let ((_%__splice266067266068%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl262679262824%_
                                '0))))
                        (let ((_%tl262705262747%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice266067266068%_ '1)))
                              (_%target262703262744%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice266067266068%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262705262747%_))
                              (_%__match266125266126%_
                               _%e262674262807%_
                               _%hd262675262811%_
                               _%tl262676262814%_
                               _%e262677262817%_
                               _%hd262678262821%_
                               _%tl262679262824%_
                               _%__splice266067266068%_
                               _%target262703262744%_
                               _%tl262705262747%_)
                              (let ()
                                (declare (not safe))
                                (_%g262670262717%_)))))
                      (let () (declare (not safe)) (_%g262670262717%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl262679262824%_))
                  (let ((_%__splice266067266068%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl262679262824%_
                            '0))))
                    (let ((_%tl262705262747%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266067266068%_ '1)))
                          (_%target262703262744%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266067266068%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262705262747%_))
                          (_%__match266125266126%_
                           _%e262674262807%_
                           _%hd262675262811%_
                           _%tl262676262814%_
                           _%e262677262817%_
                           _%hd262678262821%_
                           _%tl262679262824%_
                           _%__splice266067266068%_
                           _%target262703262744%_
                           _%tl262705262747%_)
                          (let () (declare (not safe)) (_%g262670262717%_)))))
                  (let () (declare (not safe)) (_%g262670262717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl262679262824%_))
                                                      (let ((_%__splice266067266068%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl262679262824%_
                        '0))))
                (let ((_%tl262705262747%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice266067266068%_ '1)))
                      (_%target262703262744%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice266067266068%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl262705262747%_))
                      (_%__match266125266126%_
                       _%e262674262807%_
                       _%hd262675262811%_
                       _%tl262676262814%_
                       _%e262677262817%_
                       _%hd262678262821%_
                       _%tl262679262824%_
                       _%__splice266067266068%_
                       _%target262703262744%_
                       _%tl262705262747%_)
                      (let () (declare (not safe)) (_%g262670262717%_)))))
              (let () (declare (not safe)) (_%g262670262717%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl262679262824%_))
                                              (let ((_%__splice266067266068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl262679262824%_
                                                        '0))))
                                                (let ((_%tl262705262747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266067266068%_
                                                          '1)))
                                                      (_%target262703262744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266067266068%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262705262747%_))
                                                      (_%__match266125266126%_
                                                       _%e262674262807%_
                                                       _%hd262675262811%_
                                                       _%tl262676262814%_
                                                       _%e262677262817%_
                                                       _%hd262678262821%_
                                                       _%tl262679262824%_
                                                       _%__splice266067266068%_
                                                       _%target262703262744%_
                                                       _%tl262705262747%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g262670262717%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g262670262717%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl262679262824%_))
                                      (let ((_%__splice266067266068%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl262679262824%_
                                                '0))))
                                        (let ((_%tl262705262747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice266067266068%_
                                                  '1)))
                                              (_%target262703262744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice266067266068%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262705262747%_))
                                              (_%__match266125266126%_
                                               _%e262674262807%_
                                               _%hd262675262811%_
                                               _%tl262676262814%_
                                               _%e262677262817%_
                                               _%hd262678262821%_
                                               _%tl262679262824%_
                                               _%__splice266067266068%_
                                               _%target262703262744%_
                                               _%tl262705262747%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g262670262717%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g262670262717%_))))))
                          (let () (declare (not safe)) (_%g262670262717%_)))))
                  (let () (declare (not safe)) (_%g262670262717%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx264060%_ _%id264062%_)
        (let ((_%proc264066%_
               (let ((__tmp266494
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id264062%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp266494))))
          (if (procedure? _%proc264066%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx264060%_
                 _%id264062%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx264051%_ _%id264053%_)
        (let ((_%klass264057%_
               (let ((__tmp266495
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id264053%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp266495))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass264057%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx264051%_
                 _%id264053%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx263301%_ _%proc263303%_ _%sig263304%_)
        (letrec ((_%signature-arity263306%_
                  (lambda (_%args263983%_)
                    (let _%loop263986%_ ((_%rest263989%_ _%args263983%_)
                                         (_%count263991%_ '0))
                      (let* ((_%rest263992264003%_ _%rest263989%_)
                             (_%E263996264009%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest263992264003%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K263999264040%_
                               (lambda (_%rest264037%_)
                                 (_%loop263986%_
                                  _%rest264037%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count263991%_ '1)))))
                              (_%K263998264029%_ (lambda () _%count263991%_))
                              (_%K263997264017%_
                               (lambda () (cons _%count263991%_ '()))))
                          (let ((_%try-match263994264033%_
                                 (lambda ()
                                   (if (null? _%rest263992264003%_)
                                       (_%K263998264029%_)
                                       (_%K263997264017%_)))))
                            (if (pair? _%rest263992264003%_)
                                (let* ((_%tl264001264044%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest263992264003%_)))
                                       (_%rest264048%_ _%tl264001264044%_))
                                  (_%K263999264040%_ _%rest264048%_))
                                (_%try-match263994264033%_))))))))
                 (_%make-signature263308%_
                  (lambda (_%args263865%_
                           _%return263867%_
                           _%effect263868%_
                           _%unchecked263869%_)
                    (let ((__tmp266496
                           (lambda (_%g263870263872%_)
                             (|gxc[1]#verify-class!|
                              _%ctx263301%_
                              _%g263870263872%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp266496 _%args263865%_))
                    (|gxc[1]#verify-class!| _%ctx263301%_ _%return263867%_)
                    (if _%unchecked263869%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx263301%_
                         _%unchecked263869%_)
                        '#!void)
                    (let ((_%arity263876%_
                           (_%signature-arity263306%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args263865%_)))))
                      (if _%effect263868%_
                          (let ((_%effect263879%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect263868%_))))
                            (if (and (list? _%effect263879%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect263879%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx263301%_
                                   _%proc263303%_
                                   _%effect263879%_))))
                          '#!void)
                      (cons _%arity263876%_
                            (cons (let* ((_%g263882263905%_
                                          (lambda (_%g263883263901%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g263883263901%_))))
                                         (_%g263881263979%_
                                          (lambda (_%g263883263909%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g263883263909%_))
                                                (let ((_%e263888263912%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g263883263909%_))))
                                                  (let ((_%hd263889263916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e263888263912%_)))
                                                        (_%tl263890263919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e263888263912%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl263890263919%_))
                                                        (let ((_%e263891263922%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl263890263919%_))))
                  (let ((_%hd263892263926%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263891263922%_)))
                        (_%tl263893263929%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263891263922%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl263893263929%_))
                        (let ((_%e263894263932%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263893263929%_))))
                          (let ((_%hd263895263936%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263894263932%_)))
                                (_%tl263896263939%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263894263932%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263896263939%_))
                                (let ((_%e263897263942%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263896263939%_))))
                                  (let ((_%hd263898263946%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263897263942%_)))
                                        (_%tl263899263949%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263897263942%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263899263949%_))
                                        ((lambda (_%g263884263952%_
                                                  _%g263885263954%_
                                                  _%g263886263955%_
                                                  _%g263887263956%_)
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
                           (cons _%g263887263956%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g263886263955%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g263885263954%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g263884263952%_ '()))
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
                                         _%hd263898263946%_
                                         _%hd263895263936%_
                                         _%hd263892263926%_
                                         _%hd263889263916%_)
                                        (_%g263882263905%_
                                         _%g263883263909%_))))
                                (_%g263882263905%_ _%g263883263909%_))))
                        (_%g263882263905%_ _%g263883263909%_))))
                (_%g263882263905%_ _%g263883263909%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263882263905%_
                                                 _%g263883263909%_)))))
                                    (_%g263881263979%_
                                     (list _%args263865%_
                                           _%return263867%_
                                           _%effect263868%_
                                           _%unchecked263869%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx263301%_ _%proc263303%_)
          (let* ((_%__stx266136266137%_ _%sig263304%_)
                 (_%g263315263418%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx266136266137%_)))))
            (let ((_%__kont266139266140%_
                   (lambda (_%g263317263846%_ _%g263318263848%_)
                     (_%make-signature263308%_
                      _%g263318263848%_
                      _%g263317263846%_
                      '#f
                      '#f)))
                  (_%__kont266141266142%_
                   (lambda (_%g263325263797%_
                            _%g263326263799%_
                            _%g263327263800%_)
                     (_%make-signature263308%_
                      _%g263327263800%_
                      _%g263326263799%_
                      _%g263325263797%_
                      '#f)))
                  (_%__kont266143266144%_
                   (lambda (_%g263341263721%_
                            _%g263342263723%_
                            _%g263343263724%_)
                     (_%make-signature263308%_
                      _%g263343263724%_
                      _%g263342263723%_
                      _%g263341263721%_
                      (let ((__tmp266497
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc263303%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp266497)))))
                  (_%__kont266145266146%_
                   (lambda (_%g263361263627%_
                            _%g263362263629%_
                            _%g263363263630%_
                            _%g263364263631%_)
                     (_%make-signature263308%_
                      _%g263364263631%_
                      _%g263363263630%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g263361263627%_)))))
                  (_%__kont266147266148%_
                   (lambda (_%g263385263534%_ _%g263386263536%_)
                     (_%make-signature263308%_
                      _%g263386263536%_
                      _%g263385263534%_
                      '#f
                      (let ((__tmp266498
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc263303%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp266498)))))
                  (_%__kont266149266150%_
                   (lambda (_%g263397263469%_
                            _%g263398263471%_
                            _%g263399263472%_)
                     (_%make-signature263308%_
                      _%g263399263472%_
                      _%g263398263471%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g263397263469%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266136266137%_))
                  (let ((_%e263319263826%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266136266137%_))))
                    (let ((_%tl263321263833%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263319263826%_)))
                          (_%hd263320263830%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263319263826%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263321263833%_))
                          (let ((_%e263322263836%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263321263833%_))))
                            (let ((_%tl263324263843%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263322263836%_)))
                                  (_%hd263323263840%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263322263836%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263324263843%_))
                                  (_%__kont266139266140%_
                                   _%hd263323263840%_
                                   _%hd263320263830%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263324263843%_))
                                      (let ((_%e263334263773%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263324263843%_))))
                                        (let ((_%tl263336263780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263334263773%_)))
                                              (_%hd263335263777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263334263773%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd263335263777%_))
                                              (let ((_%e263337263783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd263335263777%_))))
                                                (if (equal? _%e263337263783%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl263336263780%_))
                                                        (let ((_%e263338263787%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl263336263780%_))))
                  (let ((_%tl263340263794%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263338263787%_)))
                        (_%hd263339263791%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263338263787%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl263340263794%_))
                        (_%__kont266141266142%_
                         _%hd263339263791%_
                         _%hd263323263840%_
                         _%hd263320263830%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl263340263794%_))
                            (let ((_%e263357263707%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl263340263794%_))))
                              (let ((_%tl263359263714%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e263357263707%_)))
                                    (_%hd263358263711%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e263357263707%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd263358263711%_))
                                    (let ((_%e263360263717%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd263358263711%_))))
                                      (if (equal? _%e263360263717%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263359263714%_))
                                              (_%__kont266143266144%_
                                               _%hd263339263791%_
                                               _%hd263323263840%_
                                               _%hd263320263830%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263359263714%_))
                                                  (let ((_%e263382263617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263359263714%_))))
                                                    (let ((_%tl263384263624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263382263617%_)))
                                                          (_%hd263383263621%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263382263617%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl263384263624%_))
                                                          (_%__kont266145266146%_
                                                           _%hd263383263621%_
                                                           _%hd263339263791%_
                                                           _%hd263323263840%_
                                                           _%hd263320263830%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g263315263418%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g263315263418%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g263315263418%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g263315263418%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g263315263418%_))))))
                (let () (declare (not safe)) (_%g263315263418%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e263337263783%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl263336263780%_))
                                                            (_%__kont266147266148%_
                                                             _%hd263323263840%_
                                                             _%hd263320263830%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl263336263780%_))
                        (let ((_%e263410263459%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263336263780%_))))
                          (let ((_%tl263412263466%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263410263459%_)))
                                (_%hd263411263463%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263410263459%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl263412263466%_))
                                (_%__kont266149266150%_
                                 _%hd263411263463%_
                                 _%hd263323263840%_
                                 _%hd263320263830%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g263315263418%_)))))
                        (let () (declare (not safe)) (_%g263315263418%_))))
                (let () (declare (not safe)) (_%g263315263418%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g263315263418%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263315263418%_))))))
                          (let () (declare (not safe)) (_%g263315263418%_)))))
                  (let () (declare (not safe)) (_%g263315263418%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig262912%_)
        (let* ((_%g262915262995%_
                (lambda (_%g262916262991%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262916262991%_))))
               (_%g262914263297%_
                (lambda (_%g262916262999%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262916262999%_))
                      (let ((_%e262922263002%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262916262999%_))))
                        (let ((_%hd262923263006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262922263002%_)))
                              (_%tl262924263009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262922263002%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262924263009%_))
                              (let ((_%e262925263012%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262924263009%_))))
                                (let ((_%hd262926263016%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262925263012%_)))
                                      (_%tl262927263019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262925263012%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd262926263016%_))
                                      (let ((_%e262928263022%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd262926263016%_))))
                                        (if (equal? _%e262928263022%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl262927263019%_))
                                                (let ((_%e262929263026%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl262927263019%_))))
                                                  (let ((_%hd262930263030%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e262929263026%_)))
                                                        (_%tl262931263033%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e262929263026%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262930263030%_))
                                                        (let ((_%e262932263036%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262930263030%_))))
                  (let ((_%hd262933263040%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262932263036%_)))
                        (_%tl262934263043%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262932263036%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd262933263040%_))
                        (if (let ((__tmp266499 |gxc[1]#_g266500_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp266499
                               _%hd262933263040%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262934263043%_))
                                (let ((_%e262935263046%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262934263043%_))))
                                  (let ((_%hd262936263050%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262935263046%_)))
                                        (_%tl262937263053%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262935263046%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262937263053%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262931263033%_))
                                            (let ((_%e262938263056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262931263033%_))))
                                              (let ((_%hd262939263060%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262938263056%_)))
                                                    (_%tl262940263063%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262938263056%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd262939263060%_))
                                                    (let ((_%e262941263066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd262939263060%_))))
                                                      (if (equal? _%e262941263066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262940263063%_))
                      (let ((_%e262942263070%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262940263063%_))))
                        (let ((_%hd262943263074%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262942263070%_)))
                              (_%tl262944263077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262942263070%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd262943263074%_))
                              (let ((_%e262945263080%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd262943263074%_))))
                                (let ((_%hd262946263084%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262945263080%_)))
                                      (_%tl262947263087%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262945263080%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd262946263084%_))
                                      (if (let ((__tmp266501
                                                 |gxc[1]#_g266502_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp266501
                                             _%hd262946263084%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262947263087%_))
                                              (let ((_%e262948263090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262947263087%_))))
                                                (let ((_%hd262949263094%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262948263090%_)))
                                                      (_%tl262950263097%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262948263090%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262950263097%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl262944263077%_))
                                                          (let ((_%e262951263100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl262944263077%_))))
                    (let ((_%hd262952263104%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262951263100%_)))
                          (_%tl262953263107%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262951263100%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd262952263104%_))
                          (let ((_%e262954263110%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd262952263104%_))))
                            (if (equal? _%e262954263110%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl262953263107%_))
                                    (let ((_%e262955263114%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl262953263107%_))))
                                      (let ((_%hd262956263118%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e262955263114%_)))
                                            (_%tl262957263121%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e262955263114%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd262956263118%_))
                                            (let ((_%e262958263124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd262956263118%_))))
                                              (let ((_%hd262959263128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262958263124%_)))
                                                    (_%tl262960263131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262958263124%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd262959263128%_))
                                                    (if (let ((__tmp266503
                                                               |gxc[1]#_g266504_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp266503
                                                           _%hd262959263128%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl262960263131%_))
                                                            (let ((_%e262961263134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl262960263131%_))))
                      (let ((_%hd262962263138%_
                             (let ()
                               (declare (not safe))
                               (##car _%e262961263134%_)))
                            (_%tl262963263141%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e262961263134%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl262963263141%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262957263121%_))
                                (let ((_%e262964263144%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262957263121%_))))
                                  (let ((_%hd262965263148%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262964263144%_)))
                                        (_%tl262966263151%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262964263144%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd262965263148%_))
                                        (let ((_%e262967263154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd262965263148%_))))
                                          (if (equal? _%e262967263154%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262966263151%_))
                                                  (let ((_%e262968263158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl262966263151%_))))
                                                    (let ((_%hd262969263162%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262968263158%_)))
                                                          (_%tl262970263165%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262968263158%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd262969263162%_))
                                                          (let ((_%e262971263168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd262969263162%_))))
                    (let ((_%hd262972263172%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262971263168%_)))
                          (_%tl262973263175%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262971263168%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd262972263172%_))
                          (if (let ((__tmp266505 |gxc[1]#_g266506_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp266505
                                 _%hd262972263172%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl262973263175%_))
                                  (let ((_%e262974263178%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl262973263175%_))))
                                    (let ((_%hd262975263182%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e262974263178%_)))
                                          (_%tl262976263185%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e262974263178%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl262976263185%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262970263165%_))
                                              (let ((_%e262977263188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262970263165%_))))
                                                (let ((_%hd262978263192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262977263188%_)))
                                                      (_%tl262979263195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262977263188%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd262978263192%_))
                                                      (let ((_%e262980263198%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd262978263192%_))))
                (if (equal? _%e262980263198%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl262979263195%_))
                        (let ((_%e262981263202%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262979263195%_))))
                          (let ((_%hd262982263206%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262981263202%_)))
                                (_%tl262983263209%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262981263202%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd262982263206%_))
                                (let ((_%e262984263212%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd262982263206%_))))
                                  (let ((_%hd262985263216%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262984263212%_)))
                                        (_%tl262986263219%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262984263212%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd262985263216%_))
                                        (if (let ((__tmp266507
                                                   |gxc[1]#_g266508_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp266507
                                               _%hd262985263216%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl262986263219%_))
                                                (let ((_%e262987263222%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl262986263219%_))))
                                                  (let ((_%hd262988263226%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e262987263222%_)))
                                                        (_%tl262989263229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e262987263222%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl262989263229%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl262983263209%_))
                                                            ((lambda (_%g262917263232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g262918263234%_
                              _%g262919263235%_
                              _%g262920263236%_
                              _%g262921263237%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g262918263234%_))
                           (cons _%g262918263234%_
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
                       (cons _%g262920263236%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262917263232%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd262988263226%_
                     _%hd262975263182%_
                     _%hd262962263138%_
                     _%hd262949263094%_
                     _%hd262936263050%_)
                    (_%g262915262995%_ _%g262916262999%_))
                (_%g262915262995%_ _%g262916262999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g262915262995%_
                                                 _%g262916262999%_))
                                            (_%g262915262995%_
                                             _%g262916262999%_))
                                        (_%g262915262995%_
                                         _%g262916262999%_))))
                                (_%g262915262995%_ _%g262916262999%_))))
                        (_%g262915262995%_ _%g262916262999%_))
                    (_%g262915262995%_ _%g262916262999%_)))
              (_%g262915262995%_ _%g262916262999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262915262995%_
                                               _%g262916262999%_))
                                          (_%g262915262995%_
                                           _%g262916262999%_))))
                                  (_%g262915262995%_ _%g262916262999%_))
                              (_%g262915262995%_ _%g262916262999%_))
                          (_%g262915262995%_ _%g262916262999%_))))
                  (_%g262915262995%_ _%g262916262999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g262915262995%_
                                                   _%g262916262999%_))
                                              (_%g262915262995%_
                                               _%g262916262999%_)))
                                        (_%g262915262995%_
                                         _%g262916262999%_))))
                                (_%g262915262995%_ _%g262916262999%_))
                            (_%g262915262995%_ _%g262916262999%_))))
                    (_%g262915262995%_ _%g262916262999%_))
                (_%g262915262995%_ _%g262916262999%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g262915262995%_
                                                     _%g262916262999%_))))
                                            (_%g262915262995%_
                                             _%g262916262999%_))))
                                    (_%g262915262995%_ _%g262916262999%_))
                                (_%g262915262995%_ _%g262916262999%_)))
                          (_%g262915262995%_ _%g262916262999%_))))
                  (_%g262915262995%_ _%g262916262999%_))
              (_%g262915262995%_ _%g262916262999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262915262995%_
                                               _%g262916262999%_))
                                          (_%g262915262995%_
                                           _%g262916262999%_))
                                      (_%g262915262995%_ _%g262916262999%_))))
                              (_%g262915262995%_ _%g262916262999%_))))
                      (_%g262915262995%_ _%g262916262999%_))
                  (_%g262915262995%_ _%g262916262999%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g262915262995%_
                                                     _%g262916262999%_))))
                                            (_%g262915262995%_
                                             _%g262916262999%_))
                                        (_%g262915262995%_
                                         _%g262916262999%_))))
                                (_%g262915262995%_ _%g262916262999%_))
                            (_%g262915262995%_ _%g262916262999%_))
                        (_%g262915262995%_ _%g262916262999%_))))
                (_%g262915262995%_ _%g262916262999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g262915262995%_
                                                 _%g262916262999%_))
                                            (_%g262915262995%_
                                             _%g262916262999%_)))
                                      (_%g262915262995%_ _%g262916262999%_))))
                              (_%g262915262995%_ _%g262916262999%_))))
                      (_%g262915262995%_ _%g262916262999%_)))))
          (_%g262914263297%_ _%sig262912%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx264069%_)
        (let* ((_%g264072264090%_
                (lambda (_%g264073264086%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264073264086%_))))
               (_%g264071264145%_
                (lambda (_%g264073264094%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264073264094%_))
                      (let ((_%e264076264097%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264073264094%_))))
                        (let ((_%hd264077264101%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264076264097%_)))
                              (_%tl264078264104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264076264097%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264078264104%_))
                              (let ((_%e264079264107%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264078264104%_))))
                                (let ((_%hd264080264111%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264079264107%_)))
                                      (_%tl264081264114%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264079264107%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264081264114%_))
                                      (let ((_%e264082264117%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264081264114%_))))
                                        (let ((_%hd264083264121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264082264117%_)))
                                              (_%tl264084264124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264082264117%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264084264124%_))
                                              ((lambda (_%g264074264127%_
                                                        _%g264075264129%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g264075264129%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g264074264127%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx264069%_
                                                        _%g264075264129%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx264069%_
                                                        _%g264074264127%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g264075264129%_
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
                                                   (cons _%g264074264127%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264072264090%_
                                                      _%g264073264094%_)))
                                               _%hd264083264121%_
                                               _%hd264080264111%_)
                                              (_%g264072264090%_
                                               _%g264073264094%_))))
                                      (_%g264072264090%_ _%g264073264094%_))))
                              (_%g264072264090%_ _%g264073264094%_))))
                      (_%g264072264090%_ _%g264073264094%_)))))
          (_%g264071264145%_ _%stx264069%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx264149%_)
        (let* ((_%g264152264176%_
                (lambda (_%g264153264172%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264153264172%_))))
               (_%g264151264457%_
                (lambda (_%g264153264180%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264153264180%_))
                      (let ((_%e264156264183%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264153264180%_))))
                        (let ((_%hd264157264187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264156264183%_)))
                              (_%tl264158264190%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264156264183%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264158264190%_))
                              (let ((_%e264159264193%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264158264190%_))))
                                (let ((_%hd264160264197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264159264193%_)))
                                      (_%tl264161264200%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264159264193%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl264161264200%_))
                                      (let ((_g266509_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl264161264200%_
                                                '0))))
                                        (begin
                                          (let ((_g266510_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g266509_)
                                                       (##values-length
                                                        _g266509_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g266510_ 2)))
                                                (error "Context expects 2 values"
                                                       _g266510_)))
                                          (let ((_%target264162264203%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g266509_ 0)))
                                                (_%tl264164264206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g266509_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl264164264206%_))
                                                (letrec ((_%loop264165264209%_
                                                          (lambda (_%hd264163264213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature264169264216%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd264163264213%_))
                        (let ((_%e264166264218%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd264163264213%_))))
                          (let ((_%lp-hd264167264222%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264166264218%_)))
                                (_%lp-tl264168264225%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264166264218%_))))
                            (_%loop264165264209%_
                             _%lp-tl264168264225%_
                             (cons _%lp-hd264167264222%_
                                   _%signature264169264216%_))))
                        (let ((_%signature264170264228%_
                               (reverse _%signature264169264216%_)))
                          ((lambda (_%g264154264231%_ _%g264155264233%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g264155264233%_))
                                 (let* ((_%g264251264266%_
                                         (lambda (_%g264252264262%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g264252264262%_))))
                                        (_%g264250264445%_
                                         (lambda (_%g264252264270%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g264252264270%_))
                                               (let ((_%e264255264273%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g264252264270%_))))
                                                 (let ((_%hd264256264277%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264255264273%_)))
                                                       (_%tl264257264280%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264255264273%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl264257264280%_))
                                                       (let ((_%e264258264283%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl264257264280%_))))
                 (let ((_%hd264259264287%_
                        (let ()
                          (declare (not safe))
                          (##car _%e264258264283%_)))
                       (_%tl264260264290%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e264258264283%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl264260264290%_))
                       ((lambda (_%g264253264293%_ _%g264254264295%_)
                          (let* ((_%g264311264319%_
                                  (lambda (_%g264312264315%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g264312264315%_))))
                                 (_%g264310264441%_
                                  (lambda (_%g264312264323%_)
                                    ((lambda (_%g264313264326%_)
                                       (let* ((_%unchecked264339%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g264253264293%_))
                                              (_%g264342264350%_
                                               (lambda (_%g264343264346%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g264343264346%_))))
                                              (_%g264341264373%_
                                               (lambda (_%g264343264354%_)
                                                 ((lambda (_%g264344264357%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g264313264326%_
                                                                (cons _%g264344264357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g264343264354%_))))
                                         (_%g264341264373%_
                                          (if _%unchecked264339%_
                                              (let* ((_%g264377264392%_
                                                      (lambda (_%g264378264388%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g264378264388%_))))
                                                     (_%g264376264437%_
                                                      (lambda (_%g264378264396%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g264378264396%_))
                                                            (let ((_%e264381264399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g264378264396%_))))
                      (let ((_%hd264382264403%_
                             (let ()
                               (declare (not safe))
                               (##car _%e264381264399%_)))
                            (_%tl264383264406%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e264381264399%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl264383264406%_))
                            (let ((_%e264384264409%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl264383264406%_))))
                              (let ((_%hd264385264413%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e264384264409%_)))
                                    (_%tl264386264416%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e264384264409%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl264386264416%_))
                                    ((lambda (_%g264379264419%_
                                              _%g264380264421%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g264380264421%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g264254264295%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g264379264419%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd264385264413%_
                                     _%hd264382264403%_)
                                    (_%g264377264392%_ _%g264378264396%_))))
                            (_%g264377264392%_ _%g264378264396%_))))
                    (_%g264377264392%_ _%g264378264396%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g264376264437%_
                                                 _%unchecked264339%_))
                                              '(begin)))))
                                     _%g264312264323%_))))
                            (_%g264310264441%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g264155264233%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g264254264295%_ '()))
                   (cons '#f (cons 'signature: (cons _%g264253264293%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd264259264287%_
                        _%hd264256264277%_)
                       (_%g264251264266%_ _%g264252264270%_))))
               (_%g264251264266%_ _%g264252264270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264251264266%_
                                                _%g264252264270%_)))))
                                   (_%g264250264445%_
                                    (|gxc[1]#parse-signature|
                                     _%stx264149%_
                                     _%g264155264233%_
                                     (let ((__tmp266511
                                            (lambda (_%g264448264451%_
                                                     _%g264449264454%_)
                                              (cons _%g264448264451%_
                                                    _%g264449264454%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp266511
                                        '()
                                        _%g264154264231%_)))))
                                 (_%g264152264176%_ _%g264153264180%_)))
                           _%signature264170264228%_
                           _%hd264160264197%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop264165264209%_
                                                   _%target264162264203%_
                                                   '()))
                                                (_%g264152264176%_
                                                 _%g264153264180%_)))))
                                      (_%g264152264176%_ _%g264153264180%_))))
                              (_%g264152264176%_ _%g264153264180%_))))
                      (_%g264152264176%_ _%g264153264180%_)))))
          (_%g264151264457%_ _%stx264149%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx264462%_)
        (let* ((_%g264465264489%_
                (lambda (_%g264466264485%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264466264485%_))))
               (_%g264464265364%_
                (lambda (_%g264466264493%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264466264493%_))
                      (let ((_%e264469264496%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264466264493%_))))
                        (let ((_%hd264470264500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264469264496%_)))
                              (_%tl264471264503%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264469264496%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264471264503%_))
                              (let ((_%e264472264506%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264471264503%_))))
                                (let ((_%hd264473264510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264472264506%_)))
                                      (_%tl264474264513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264472264506%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl264474264513%_))
                                      (let ((_g266512_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl264474264513%_
                                                '0))))
                                        (begin
                                          (let ((_g266513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g266512_)
                                                       (##values-length
                                                        _g266512_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g266513_ 2)))
                                                (error "Context expects 2 values"
                                                       _g266513_)))
                                          (let ((_%target264475264516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g266512_ 0)))
                                                (_%tl264477264519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g266512_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl264477264519%_))
                                                (letrec ((_%loop264478264522%_
                                                          (lambda (_%hd264476264526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature264482264529%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd264476264526%_))
                        (let ((_%e264479264531%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd264476264526%_))))
                          (let ((_%lp-hd264480264535%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264479264531%_)))
                                (_%lp-tl264481264538%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264479264531%_))))
                            (_%loop264478264522%_
                             _%lp-tl264481264538%_
                             (cons _%lp-hd264480264535%_
                                   _%case-signature264482264529%_))))
                        (let ((_%case-signature264483264541%_
                               (reverse _%case-signature264482264529%_)))
                          ((lambda (_%g264467264544%_ _%g264468264546%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g264468264546%_))
                                 (let* ((_%signatures264577%_
                                         (map (lambda (_%g264563264565%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx264462%_
                                                 _%g264468264546%_
                                                 _%g264563264565%_))
                                              (let ((__tmp266514
                                                     (lambda (_%g264568264571%_
                                                              _%g264569264574%_)
                                                       (cons _%g264568264571%_
                                                             _%g264569264574%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp266514
                                                 '()
                                                 _%g264467264544%_))))
                                        (_%g264580264606%_
                                         (lambda (_%g264581264602%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g264581264602%_))))
                                        (_%g264579265360%_
                                         (lambda (_%g264581264610%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g264581264610%_))
                                               (let ((_g266515_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g264581264610%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g266516_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g266515_)
                        (##values-length _g266515_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g266516_ 2)))
                 (error "Context expects 2 values" _g266516_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target264584264613%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g266515_
                                                             0)))
                                                         (_%tl264586264616%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g266515_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl264586264616%_))
                                                         (letrec ((_%loop264587264619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd264585264623%_
                                    _%sig264591264626%_
                                    _%arity264592264627%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd264585264623%_))
                                 (let ((_%e264588264629%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd264585264623%_))))
                                   (let ((_%lp-hd264589264633%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264588264629%_)))
                                         (_%lp-tl264590264636%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264588264629%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd264589264633%_))
                                         (let ((_%e264595264639%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd264589264633%_))))
                                           (let ((_%hd264596264643%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e264595264639%_)))
                                                 (_%tl264597264646%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e264595264639%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl264597264646%_))
                                                 (let ((_%e264598264649%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl264597264646%_))))
                                                   (let ((_%hd264599264653%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e264598264649%_)))
                                                         (_%tl264600264656%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e264598264649%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl264600264656%_))
                                                         (_%loop264587264619%_
                                                          _%lp-tl264590264636%_
                                                          (cons _%hd264599264653%_
                                                                _%sig264591264626%_)
                                                          (cons _%hd264596264643%_
                                                                _%arity264592264627%_))
                                                         (_%g264580264606%_
                                                          _%g264581264610%_))))
                                                 (_%g264580264606%_
                                                  _%g264581264610%_))))
                                         (_%g264580264606%_
                                          _%g264581264610%_))))
                                 (let ((_%sig264593264659%_
                                        (reverse _%sig264591264626%_))
                                       (_%arity264594264661%_
                                        (reverse _%arity264592264627%_)))
                                   ((lambda (_%g264582264663%_
                                             _%g264583264665%_)
                                      (let* ((_%g264682264690%_
                                              (lambda (_%g264683264686%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g264683264686%_))))
                                             (_%g264681265345%_
                                              (lambda (_%g264683264694%_)
                                                ((lambda (_%g264684264697%_)
                                                   (let* ((_%g264710264718%_
                                                           (lambda (_%g264711264714%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g264711264714%_))))
                  (_%g264709264740%_
                   (lambda (_%g264711264722%_)
                     ((lambda (_%g264712264725%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g264684264697%_
                                    (cons _%g264712264725%_ '()))))
                      _%g264711264722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264709264740%_
                                                      (let ((_g266517_
                                                             (let _%loop264744%_ ((_%rest264747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures264577%_)
                                          (_%unchecked-proc264749%_ '#f)
                                          (_%unchecked-clauses264750%_ '()))
                       (let* ((_%rest264751264759%_ _%rest264747%_)
                              (_%else264753264771%_
                               (lambda ()
                                 (values _%unchecked-proc264749%_
                                         (reverse!
                                          _%unchecked-clauses264750%_))))
                              (_%K264755265212%_
                               (lambda (_%rest264775%_ _%hd264777%_)
                                 (let* ((_%g264779264866%_
                                         (lambda (_%g264780264862%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g264780264862%_))))
                                        (_%g264778265208%_
                                         (lambda (_%g264780264870%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g264780264870%_))
                                               (let ((_%e264787264873%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g264780264870%_))))
                                                 (let ((_%hd264788264877%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264787264873%_)))
                                                       (_%tl264789264880%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264787264873%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl264789264880%_))
                                                       (let ((_%e264790264883%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl264789264880%_))))
                 (let ((_%hd264791264887%_
                        (let ()
                          (declare (not safe))
                          (##car _%e264790264883%_)))
                       (_%tl264792264890%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e264790264883%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd264791264887%_))
                       (let ((_%e264793264893%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd264791264887%_))))
                         (let ((_%hd264794264897%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e264793264893%_)))
                               (_%tl264795264900%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e264793264893%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl264795264900%_))
                               (let ((_%e264796264903%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl264795264900%_))))
                                 (let ((_%hd264797264907%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e264796264903%_)))
                                       (_%tl264798264910%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e264796264903%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd264797264907%_))
                                       (let ((_%e264799264913%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd264797264907%_))))
                                         (if (equal? _%e264799264913%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl264798264910%_))
                                                 (let ((_%e264800264917%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl264798264910%_))))
                                                   (let ((_%hd264801264921%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e264800264917%_)))
                                                         (_%tl264802264924%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e264800264917%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd264801264921%_))
                                                         (let ((_%e264803264927%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd264801264921%_))))
                   (let ((_%hd264804264931%_
                          (let ()
                            (declare (not safe))
                            (##car _%e264803264927%_)))
                         (_%tl264805264934%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e264803264927%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd264804264931%_))
                         (if (let ((__tmp266519 |gxc[1]#_g266520_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp266519
                                _%hd264804264931%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl264805264934%_))
                                 (let ((_%e264806264937%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl264805264934%_))))
                                   (let ((_%hd264807264941%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264806264937%_)))
                                         (_%tl264808264944%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264806264937%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl264808264944%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl264802264924%_))
                                             (let ((_%e264809264947%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl264802264924%_))))
                                               (let ((_%hd264810264951%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e264809264947%_)))
                                                     (_%tl264811264954%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e264809264947%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd264810264951%_))
                                                     (let ((_%e264812264957%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd264810264951%_))))
                                                       (if (equal? _%e264812264957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl264811264954%_))
                       (let ((_%e264813264961%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl264811264954%_))))
                         (let ((_%hd264814264965%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e264813264961%_)))
                               (_%tl264815264968%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e264813264961%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd264814264965%_))
                               (let ((_%e264816264971%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd264814264965%_))))
                                 (let ((_%hd264817264975%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e264816264971%_)))
                                       (_%tl264818264978%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e264816264971%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd264817264975%_))
                                       (if (let ((__tmp266521
                                                  |gxc[1]#_g266522_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp266521
                                              _%hd264817264975%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl264818264978%_))
                                               (let ((_%e264819264981%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl264818264978%_))))
                                                 (let ((_%hd264820264985%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264819264981%_)))
                                                       (_%tl264821264988%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264819264981%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl264821264988%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl264815264968%_))
                                                           (let ((_%e264822264991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl264815264968%_))))
                     (let ((_%hd264823264995%_
                            (let ()
                              (declare (not safe))
                              (##car _%e264822264991%_)))
                           (_%tl264824264998%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e264822264991%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd264823264995%_))
                           (let ((_%e264825265001%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd264823264995%_))))
                             (if (equal? _%e264825265001%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl264824264998%_))
                                     (let ((_%e264826265005%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl264824264998%_))))
                                       (let ((_%hd264827265009%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e264826265005%_)))
                                             (_%tl264828265012%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e264826265005%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd264827265009%_))
                                             (let ((_%e264829265015%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd264827265009%_))))
                                               (let ((_%hd264830265019%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e264829265015%_)))
                                                     (_%tl264831265022%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e264829265015%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd264830265019%_))
                                                     (if (let ((__tmp266523
                                                                |gxc[1]#_g266524_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp266523
                                                            _%hd264830265019%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl264831265022%_))
                     (let ((_%e264832265025%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl264831265022%_))))
                       (let ((_%hd264833265029%_
                              (let ()
                                (declare (not safe))
                                (##car _%e264832265025%_)))
                             (_%tl264834265032%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e264832265025%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl264834265032%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl264828265012%_))
                                 (let ((_%e264835265035%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl264828265012%_))))
                                   (let ((_%hd264836265039%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264835265035%_)))
                                         (_%tl264837265042%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264835265035%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd264836265039%_))
                                         (let ((_%e264838265045%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd264836265039%_))))
                                           (if (equal? _%e264838265045%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl264837265042%_))
                                                   (let ((_%e264839265049%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl264837265042%_))))
                                                     (let ((_%hd264840265053%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e264839265049%_)))
                                                           (_%tl264841265056%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e264839265049%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd264840265053%_))
                                                           (let ((_%e264842265059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd264840265053%_))))
                     (let ((_%hd264843265063%_
                            (let ()
                              (declare (not safe))
                              (##car _%e264842265059%_)))
                           (_%tl264844265066%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e264842265059%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd264843265063%_))
                           (if (let ((__tmp266525 |gxc[1]#_g266526_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp266525
                                  _%hd264843265063%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl264844265066%_))
                                   (let ((_%e264845265069%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl264844265066%_))))
                                     (let ((_%hd264846265073%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e264845265069%_)))
                                           (_%tl264847265076%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e264845265069%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl264847265076%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl264841265056%_))
                                               (let ((_%e264848265079%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl264841265056%_))))
                                                 (let ((_%hd264849265083%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264848265079%_)))
                                                       (_%tl264850265086%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264848265079%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd264849265083%_))
                                                       (let ((_%e264851265089%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd264849265083%_))))
                 (if (equal? _%e264851265089%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl264850265086%_))
                         (let ((_%e264852265093%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl264850265086%_))))
                           (let ((_%hd264853265097%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e264852265093%_)))
                                 (_%tl264854265100%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e264852265093%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd264853265097%_))
                                 (let ((_%e264855265103%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd264853265097%_))))
                                   (let ((_%hd264856265107%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e264855265103%_)))
                                         (_%tl264857265110%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e264855265103%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd264856265107%_))
                                         (if (let ((__tmp266527
                                                    |gxc[1]#_g266528_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp266527
                                                _%hd264856265107%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl264857265110%_))
                                                 (let ((_%e264858265113%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl264857265110%_))))
                                                   (let ((_%hd264859265117%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e264858265113%_)))
                                                         (_%tl264860265120%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e264858265113%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl264860265120%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl264854265100%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl264792264890%_))
                         ((lambda (_%g264781265123%_
                                   _%g264782265125%_
                                   _%g264783265126%_
                                   _%g264784265127%_
                                   _%g264785265128%_
                                   _%g264786265129%_)
                            (let ((_%clause265200%_
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
                                                     (cons _%g264786265129%_
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
                                                 (cons _%g264784265127%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g264781265123%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked265202%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g264782265125%_))))
                              (_%loop264744%_
                               _%rest264775%_
                               (let ((_%$e265204%_ _%unchecked265202%_))
                                 (if _%$e265204%_
                                     _%$e265204%_
                                     _%unchecked-proc264749%_))
                               (cons _%clause265200%_
                                     _%unchecked-clauses264750%_))))
                          _%hd264859265117%_
                          _%hd264846265073%_
                          _%hd264833265029%_
                          _%hd264820264985%_
                          _%hd264807264941%_
                          _%hd264788264877%_)
                         (_%g264779264866%_ _%g264780264870%_))
                     (_%g264779264866%_ _%g264780264870%_))
                 (_%g264779264866%_ _%g264780264870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g264779264866%_
                                                  _%g264780264870%_))
                                             (_%g264779264866%_
                                              _%g264780264870%_))
                                         (_%g264779264866%_
                                          _%g264780264870%_))))
                                 (_%g264779264866%_ _%g264780264870%_))))
                         (_%g264779264866%_ _%g264780264870%_))
                     (_%g264779264866%_ _%g264780264870%_)))
               (_%g264779264866%_ _%g264780264870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264779264866%_
                                                _%g264780264870%_))
                                           (_%g264779264866%_
                                            _%g264780264870%_))))
                                   (_%g264779264866%_ _%g264780264870%_))
                               (_%g264779264866%_ _%g264780264870%_))
                           (_%g264779264866%_ _%g264780264870%_))))
                   (_%g264779264866%_ _%g264780264870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g264779264866%_
                                                    _%g264780264870%_))
                                               (_%g264779264866%_
                                                _%g264780264870%_)))
                                         (_%g264779264866%_
                                          _%g264780264870%_))))
                                 (_%g264779264866%_ _%g264780264870%_))
                             (_%g264779264866%_ _%g264780264870%_))))
                     (_%g264779264866%_ _%g264780264870%_))
                 (_%g264779264866%_ _%g264780264870%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264779264866%_
                                                      _%g264780264870%_))))
                                             (_%g264779264866%_
                                              _%g264780264870%_))))
                                     (_%g264779264866%_ _%g264780264870%_))
                                 (_%g264779264866%_ _%g264780264870%_)))
                           (_%g264779264866%_ _%g264780264870%_))))
                   (_%g264779264866%_ _%g264780264870%_))
               (_%g264779264866%_ _%g264780264870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264779264866%_
                                                _%g264780264870%_))
                                           (_%g264779264866%_
                                            _%g264780264870%_))
                                       (_%g264779264866%_ _%g264780264870%_))))
                               (_%g264779264866%_ _%g264780264870%_))))
                       (_%g264779264866%_ _%g264780264870%_))
                   (_%g264779264866%_ _%g264780264870%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264779264866%_
                                                      _%g264780264870%_))))
                                             (_%g264779264866%_
                                              _%g264780264870%_))
                                         (_%g264779264866%_
                                          _%g264780264870%_))))
                                 (_%g264779264866%_ _%g264780264870%_))
                             (_%g264779264866%_ _%g264780264870%_))
                         (_%g264779264866%_ _%g264780264870%_))))
                 (_%g264779264866%_ _%g264780264870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g264779264866%_
                                                  _%g264780264870%_))
                                             (_%g264779264866%_
                                              _%g264780264870%_)))
                                       (_%g264779264866%_ _%g264780264870%_))))
                               (_%g264779264866%_ _%g264780264870%_))))
                       (_%g264779264866%_ _%g264780264870%_))))
               (_%g264779264866%_ _%g264780264870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264779264866%_
                                                _%g264780264870%_)))))
                                   (_%g264778265208%_ _%hd264777%_)))))
                         (if (pair? _%rest264751264759%_)
                             (let ((_%hd264756265216%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest264751264759%_)))
                                   (_%tl264757265219%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest264751264759%_))))
                               (let* ((_%hd265222%_ _%hd264756265216%_)
                                      (_%rest265225%_ _%tl264757265219%_))
                                 (_%K264755265212%_
                                  _%rest265225%_
                                  _%hd265222%_)))
                             (_%else264753264771%_))))))
                (begin
                  (let ((_g266518_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g266517_)
                               (##values-length _g266517_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g266518_ 2)))
                        (error "Context expects 2 values" _g266518_)))
                  (let ((_%unchecked-proc265228%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266517_ 0)))
                        (_%unchecked-clauses265230%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266517_ 1))))
                    (if _%unchecked-proc265228%_
                        (let* ((_%g265232265256%_
                                (lambda (_%g265233265252%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g265233265252%_))))
                               (_%g265231265341%_
                                (lambda (_%g265233265260%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g265233265260%_))
                                      (let ((_%e265236265263%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g265233265260%_))))
                                        (let ((_%hd265237265267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265236265263%_)))
                                              (_%tl265238265270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265236265263%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265238265270%_))
                                              (let ((_%e265239265273%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265238265270%_))))
                                                (let ((_%hd265240265277%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265239265273%_)))
                                                      (_%tl265241265280%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265239265273%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd265240265277%_))
                                                      (let ((_g266529_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd265240265277%_ '0))))
                (begin
                  (let ((_g266530_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g266529_)
                               (##values-length _g266529_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g266530_ 2)))
                        (error "Context expects 2 values" _g266530_)))
                  (let ((_%target265242265283%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266529_ 0)))
                        (_%tl265244265286%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266529_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl265244265286%_))
                        (letrec ((_%loop265245265289%_
                                  (lambda (_%hd265243265293%_
                                           _%clause265249265296%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd265243265293%_))
                                        (let ((_%e265246265298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd265243265293%_))))
                                          (let ((_%lp-hd265247265302%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e265246265298%_)))
                                                (_%lp-tl265248265305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e265246265298%_))))
                                            (_%loop265245265289%_
                                             _%lp-tl265248265305%_
                                             (cons _%lp-hd265247265302%_
                                                   _%clause265249265296%_))))
                                        (let ((_%clause265250265308%_
                                               (reverse _%clause265249265296%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265241265280%_))
                                              ((lambda (_%g265234265311%_
                                                        _%g265235265313%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g265235265313%_
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
                                             (let ((__tmp266531
                                                    (lambda (_%g265332265335%_
                                                             _%g265333265338%_)
                                                      (cons _%g265332265335%_
                                                            _%g265333265338%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp266531
                                                '()
                                                _%g265234265311%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause265250265308%_
                                               _%hd265237265267%_)
                                              (_%g265232265256%_
                                               _%g265233265260%_)))))))
                          (_%loop265245265289%_ _%target265242265283%_ '()))
                        (_%g265232265256%_ _%g265233265260%_)))))
              (_%g265232265256%_ _%g265233265260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265232265256%_
                                               _%g265233265260%_))))
                                      (_%g265232265256%_ _%g265233265260%_)))))
                          (_%g265231265341%_
                           (list _%unchecked-proc265228%_
                                 _%unchecked-clauses265230%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g264683264694%_))))
                                        (_%g264681265345%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g264468264546%_
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
                                          _%g264582264663%_
                                          _%g264583264665%_))
                                       (let ((__tmp266532
                                              (lambda (_%g265348265352%_
                                                       _%g265349265355%_
                                                       _%g265350265357%_)
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
                                (cons _%g265349265355%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g265348265352%_ '())))))
              _%g265350265357%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp266532
                                          '()
                                          _%g264582264663%_
                                          _%g264583264665%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig264593264659%_
                                    _%arity264594264661%_))))))
                   (_%loop264587264619%_ _%target264584264613%_ '() '()))
                 (_%g264580264606%_ _%g264581264610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264580264606%_
                                                _%g264581264610%_)))))
                                   (_%g264579265360%_ _%signatures264577%_))
                                 (_%g264465264489%_ _%g264466264493%_)))
                           _%case-signature264483264541%_
                           _%hd264473264510%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop264478264522%_
                                                   _%target264475264516%_
                                                   '()))
                                                (_%g264465264489%_
                                                 _%g264466264493%_)))))
                                      (_%g264465264489%_ _%g264466264493%_))))
                              (_%g264465264489%_ _%g264466264493%_))))
                      (_%g264465264489%_ _%g264466264493%_)))))
          (_%g264464265364%_ _%stx264462%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx265372%_)
        (let* ((_%__stx266352266353%_ _%$stx265372%_)
               (_%g265378265438%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266352266353%_)))))
          (let ((_%__kont266355266356%_
                 (lambda (_%g265380265660%_ _%g265381265662%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265381265662%_ '()))
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
                                                       (cons _%g265381265662%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265380265660%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont266357266358%_
                 (lambda (_%g265395265585%_
                          _%g265396265587%_
                          _%g265397265588%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265397265588%_ '()))
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
                                                       (cons _%g265397265588%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265396265587%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g265395265585%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont266359266360%_
                 (lambda (_%g265414265499%_
                          _%g265415265501%_
                          _%g265416265502%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265416265502%_ '()))
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
                                                       (cons _%g265416265502%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265415265501%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g265414265499%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266352266353%_))
                (let ((_%e265382265616%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266352266353%_))))
                  (let ((_%tl265384265623%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265382265616%_)))
                        (_%hd265383265620%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265382265616%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl265384265623%_))
                        (let ((_%e265385265626%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl265384265623%_))))
                          (let ((_%tl265387265633%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265385265626%_)))
                                (_%hd265386265630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265385265626%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd265386265630%_))
                                (let ((_%e265388265636%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd265386265630%_))))
                                  (if (equal? _%e265388265636%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl265387265633%_))
                                          (let ((_%e265389265640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl265387265633%_))))
                                            (let ((_%tl265391265647%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e265389265640%_)))
                                                  (_%hd265390265644%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e265389265640%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265391265647%_))
                                                  (let ((_%e265392265650%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl265391265647%_))))
                                                    (let ((_%tl265394265657%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265392265650%_)))
                                                          (_%hd265393265654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265392265650%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl265394265657%_))
                                                          (_%__kont266355266356%_
                                                           _%hd265393265654%_
                                                           _%hd265390265644%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g265378265438%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g265378265438%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g265378265438%_)))
                                      (if (equal? _%e265388265636%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265387265633%_))
                                              (let ((_%e265405265555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265387265633%_))))
                                                (let ((_%tl265407265562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265405265555%_)))
                                                      (_%hd265406265559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265405265555%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl265407265562%_))
                                                      (let ((_%e265408265565%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl265407265562%_))))
                (let ((_%tl265410265572%_
                       (let () (declare (not safe)) (##cdr _%e265408265565%_)))
                      (_%hd265409265569%_
                       (let ()
                         (declare (not safe))
                         (##car _%e265408265565%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl265410265572%_))
                      (let ((_%e265411265575%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl265410265572%_))))
                        (let ((_%tl265413265582%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265411265575%_)))
                              (_%hd265412265579%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265411265575%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl265413265582%_))
                              (_%__kont266357266358%_
                               _%hd265412265579%_
                               _%hd265409265569%_
                               _%hd265406265559%_)
                              (let ()
                                (declare (not safe))
                                (_%g265378265438%_)))))
                      (let () (declare (not safe)) (_%g265378265438%_)))))
              (let () (declare (not safe)) (_%g265378265438%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g265378265438%_)))
                                          (if (equal? _%e265388265636%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265387265633%_))
                                                  (let ((_%e265424265469%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl265387265633%_))))
                                                    (let ((_%tl265426265476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265424265469%_)))
                                                          (_%hd265425265473%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265424265469%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl265426265476%_))
                                                          (let ((_%e265427265479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl265426265476%_))))
                    (let ((_%tl265429265486%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265427265479%_)))
                          (_%hd265428265483%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265427265479%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl265429265486%_))
                          (let ((_%e265430265489%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl265429265486%_))))
                            (let ((_%tl265432265496%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e265430265489%_)))
                                  (_%hd265431265493%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e265430265489%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl265432265496%_))
                                  (_%__kont266359266360%_
                                   _%hd265431265493%_
                                   _%hd265428265483%_
                                   _%hd265425265473%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g265378265438%_)))))
                          (let () (declare (not safe)) (_%g265378265438%_)))))
                  (let () (declare (not safe)) (_%g265378265438%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g265378265438%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g265378265438%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g265378265438%_)))))
                        (let () (declare (not safe)) (_%g265378265438%_)))))
                (let () (declare (not safe)) (_%g265378265438%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx265684%_)
        (let* ((_%g265688265708%_
                (lambda (_%g265689265704%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265689265704%_))))
               (_%g265687265777%_
                (lambda (_%g265689265712%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265689265712%_))
                      (let ((_%e265691265715%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265689265712%_))))
                        (let ((_%hd265692265719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265691265715%_)))
                              (_%tl265693265722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265691265715%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl265693265722%_))
                              (let ((_g266533_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl265693265722%_
                                        '0))))
                                (begin
                                  (let ((_g266534_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266533_)
                                               (##values-length _g266533_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266534_ 2)))
                                        (error "Context expects 2 values"
                                               _g266534_)))
                                  (let ((_%target265694265725%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266533_ 0)))
                                        (_%tl265696265728%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266533_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265696265728%_))
                                        (letrec ((_%loop265697265731%_
                                                  (lambda (_%hd265695265735%_
                                                           _%decl265701265738%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd265695265735%_))
                                                        (let ((_%e265698265740%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd265695265735%_))))
                  (let ((_%lp-hd265699265744%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265698265740%_)))
                        (_%lp-tl265700265747%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265698265740%_))))
                    (_%loop265697265731%_
                     _%lp-tl265700265747%_
                     (cons _%lp-hd265699265744%_ _%decl265701265738%_))))
                (let ((_%decl265702265750%_ (reverse _%decl265701265738%_)))
                  ((lambda (_%g265690265753%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp266535
                                  (lambda (_%g265768265771%_ _%g265769265774%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g265768265771%_)
                                          _%g265769265774%_))))
                             (declare (not safe))
                             (foldr__0 __tmp266535 '() _%g265690265753%_))))
                   _%decl265702265750%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop265697265731%_
                                           _%target265694265725%_
                                           '()))
                                        (_%g265688265708%_
                                         _%g265689265712%_)))))
                              (_%g265688265708%_ _%g265689265712%_))))
                      (_%g265688265708%_ _%g265689265712%_)))))
          (_%g265687265777%_ _%$stx265684%_))))))
