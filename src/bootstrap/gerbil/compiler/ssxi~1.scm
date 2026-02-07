(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g263427_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263434_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263436_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263438_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263440_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263442_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263454_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263456_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263458_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263460_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263462_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx256885%_)
        (let* ((_%g256889256907%_
                (lambda (_%g256890256903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g256890256903%_))))
               (_%g256888256962%_
                (lambda (_%g256890256911%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g256890256911%_))
                      (let ((_%e256893256914%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g256890256911%_))))
                        (let ((_%hd256894256918%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256893256914%_)))
                              (_%tl256895256921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256893256914%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl256895256921%_))
                              (let ((_%e256896256924%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl256895256921%_))))
                                (let ((_%hd256897256928%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e256896256924%_)))
                                      (_%tl256898256931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e256896256924%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl256898256931%_))
                                      (let ((_%e256899256934%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl256898256931%_))))
                                        (let ((_%hd256900256938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e256899256934%_)))
                                              (_%tl256901256941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e256899256934%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256901256941%_))
                                              ((lambda (_%g256891256944%_
                                                        _%g256892256946%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g256892256946%_))
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
                               (cons _%g256892256946%_ '()))
                         (cons _%g256891256944%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g256889256907%_
                                                      _%g256890256911%_)))
                                               _%hd256900256938%_
                                               _%hd256897256928%_)
                                              (_%g256889256907%_
                                               _%g256890256911%_))))
                                      (_%g256889256907%_ _%g256890256911%_))))
                              (_%g256889256907%_ _%g256890256911%_))))
                      (_%g256889256907%_ _%g256890256911%_)))))
          (_%g256888256962%_ _%$stx256885%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx256966%_)
        (let* ((_%g256970256988%_
                (lambda (_%g256971256984%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g256971256984%_))))
               (_%g256969257043%_
                (lambda (_%g256971256992%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g256971256992%_))
                      (let ((_%e256974256995%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g256971256992%_))))
                        (let ((_%hd256975256999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256974256995%_)))
                              (_%tl256976257002%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256974256995%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl256976257002%_))
                              (let ((_%e256977257005%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl256976257002%_))))
                                (let ((_%hd256978257009%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e256977257005%_)))
                                      (_%tl256979257012%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e256977257005%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl256979257012%_))
                                      (let ((_%e256980257015%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl256979257012%_))))
                                        (let ((_%hd256981257019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e256980257015%_)))
                                              (_%tl256982257022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e256980257015%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256982257022%_))
                                              ((lambda (_%g256972257025%_
                                                        _%g256973257027%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g256973257027%_))
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
                               (cons _%g256973257027%_ '()))
                         (cons _%g256972257025%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g256970256988%_
                                                      _%g256971256992%_)))
                                               _%hd256981257019%_
                                               _%hd256978257009%_)
                                              (_%g256970256988%_
                                               _%g256971256992%_))))
                                      (_%g256970256988%_ _%g256971256992%_))))
                              (_%g256970256988%_ _%g256971256992%_))))
                      (_%g256970256988%_ _%g256971256992%_)))))
          (_%g256969257043%_ _%$stx256966%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx257047%_)
        (let* ((_%g257051257080%_
                (lambda (_%g257052257076%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257052257076%_))))
               (_%g257050257176%_
                (lambda (_%g257052257084%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257052257084%_))
                      (let ((_%e257055257087%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257052257084%_))))
                        (let ((_%hd257056257091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257055257087%_)))
                              (_%tl257057257094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257055257087%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl257057257094%_))
                              (let ((_g263405_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl257057257094%_
                                        '0))))
                                (begin
                                  (let ((_g263406_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263405_)
                                               (##values-length _g263405_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263406_ 2)))
                                        (error "Context expects 2 values"
                                               _g263406_)))
                                  (let ((_%target257058257097%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263405_ 0)))
                                        (_%tl257060257100%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263405_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl257060257100%_))
                                        (letrec ((_%loop257061257103%_
                                                  (lambda (_%hd257059257107%_
                                                           _%type257065257110%_
                                                           _%symbol257066257111%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd257059257107%_))
                                                        (let ((_%e257062257113%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd257059257107%_))))
                  (let ((_%lp-hd257063257117%_
                         (let ()
                           (declare (not safe))
                           (##car _%e257062257113%_)))
                        (_%lp-tl257064257120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e257062257113%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd257063257117%_))
                        (let ((_%e257069257123%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd257063257117%_))))
                          (let ((_%hd257070257127%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e257069257123%_)))
                                (_%tl257071257130%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e257069257123%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl257071257130%_))
                                (let ((_%e257072257133%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl257071257130%_))))
                                  (let ((_%hd257073257137%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e257072257133%_)))
                                        (_%tl257074257140%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e257072257133%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl257074257140%_))
                                        (_%loop257061257103%_
                                         _%lp-tl257064257120%_
                                         (cons _%hd257073257137%_
                                               _%type257065257110%_)
                                         (cons _%hd257070257127%_
                                               _%symbol257066257111%_))
                                        (_%g257051257080%_
                                         _%g257052257084%_))))
                                (_%g257051257080%_ _%g257052257084%_))))
                        (_%g257051257080%_ _%g257052257084%_))))
                (let ((_%type257067257143%_ (reverse _%type257065257110%_))
                      (_%symbol257068257145%_
                       (reverse _%symbol257066257111%_)))
                  ((lambda (_%g257053257147%_ _%g257054257149%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g257053257147%_
                                _%g257054257149%_))
                             (let ((__tmp263407
                                    (lambda (_%g257164257168%_
                                             _%g257165257171%_
                                             _%g257166257173%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g257165257171%_
                                                        (cons _%g257164257168%_
                                                              '())))
                                            _%g257166257173%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp263407
                                '()
                                _%g257053257147%_
                                _%g257054257149%_)))))
                   _%type257067257143%_
                   _%symbol257068257145%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop257061257103%_
                                           _%target257058257097%_
                                           '()
                                           '()))
                                        (_%g257051257080%_
                                         _%g257052257084%_)))))
                              (_%g257051257080%_ _%g257052257084%_))))
                      (_%g257051257080%_ _%g257052257084%_)))))
          (_%g257050257176%_ _%$stx257047%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx257181%_)
        (let* ((_%__stx262716262717%_ _%$stx257181%_)
               (_%g257186257228%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262716262717%_)))))
          (let ((_%__kont262719262720%_
                 (lambda (_%g257188257356%_
                          _%g257189257358%_
                          _%g257190257359%_
                          _%g257191257360%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g257191257360%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g257190257359%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g257189257358%_ '()))
                                           (cons _%g257188257356%_ '())))))))
                (_%__kont262721262722%_
                 (lambda (_%g257207257275%_
                          _%g257208257277%_
                          _%g257209257278%_
                          _%g257210257279%_)
                   (cons _%g257210257279%_
                         (cons _%g257209257278%_
                               (cons _%g257208257277%_
                                     (cons _%g257207257275%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match262755262756%_
                   (lambda (_%e257192257306%_
                            _%hd257193257310%_
                            _%tl257194257313%_
                            _%e257195257316%_
                            _%hd257196257320%_
                            _%tl257197257323%_
                            _%e257198257326%_
                            _%hd257199257330%_
                            _%tl257200257333%_
                            _%e257201257336%_
                            _%hd257202257340%_
                            _%tl257203257343%_
                            _%e257204257346%_
                            _%hd257205257350%_
                            _%tl257206257353%_)
                     (let ((_%g257188257356%_ _%hd257205257350%_)
                           (_%g257189257358%_ _%hd257202257340%_)
                           (_%g257190257359%_ _%hd257199257330%_)
                           (_%g257191257360%_ _%hd257196257320%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g257191257360%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g257190257359%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g257189257358%_)))
                           (_%__kont262719262720%_
                            _%g257188257356%_
                            _%g257189257358%_
                            _%g257190257359%_
                            _%g257191257360%_)
                           (let ()
                             (declare (not safe))
                             (_%g257186257228%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx262716262717%_))
                  (let ((_%e257192257306%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx262716262717%_))))
                    (let ((_%tl257194257313%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257192257306%_)))
                          (_%hd257193257310%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257192257306%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl257194257313%_))
                          (let ((_%e257195257316%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl257194257313%_))))
                            (let ((_%tl257197257323%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257195257316%_)))
                                  (_%hd257196257320%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257195257316%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl257197257323%_))
                                  (let ((_%e257198257326%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl257197257323%_))))
                                    (let ((_%tl257200257333%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257198257326%_)))
                                          (_%hd257199257330%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257198257326%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl257200257333%_))
                                          (let ((_%e257201257336%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl257200257333%_))))
                                            (let ((_%tl257203257343%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e257201257336%_)))
                                                  (_%hd257202257340%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e257201257336%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257203257343%_))
                                                  (let ((_%e257204257346%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl257203257343%_))))
                                                    (let ((_%tl257206257353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257204257346%_)))
                                                          (_%hd257205257350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257204257346%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl257206257353%_))
                                                          (_%__match262755262756%_
                                                           _%e257192257306%_
                                                           _%hd257193257310%_
                                                           _%tl257194257313%_
                                                           _%e257195257316%_
                                                           _%hd257196257320%_
                                                           _%tl257197257323%_
                                                           _%e257198257326%_
                                                           _%hd257199257330%_
                                                           _%tl257200257333%_
                                                           _%e257201257336%_
                                                           _%hd257202257340%_
                                                           _%tl257203257343%_
                                                           _%e257204257346%_
                                                           _%hd257205257350%_
                                                           _%tl257206257353%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g257186257228%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257203257343%_))
                                                      (_%__kont262721262722%_
                                                       _%hd257202257340%_
                                                       _%hd257199257330%_
                                                       _%hd257196257320%_
                                                       _%hd257193257310%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g257186257228%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g257186257228%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g257186257228%_)))))
                          (let () (declare (not safe)) (_%g257186257228%_)))))
                  (let () (declare (not safe)) (_%g257186257228%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx257385%_)
        (let* ((_%g257389257424%_
                (lambda (_%g257390257420%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257390257420%_))))
               (_%g257388257537%_
                (lambda (_%g257390257428%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257390257428%_))
                      (let ((_%e257394257431%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257390257428%_))))
                        (let ((_%hd257395257435%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257394257431%_)))
                              (_%tl257396257438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257394257431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl257396257438%_))
                              (let ((_g263408_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl257396257438%_
                                        '0))))
                                (begin
                                  (let ((_g263409_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263408_)
                                               (##values-length _g263408_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263409_ 2)))
                                        (error "Context expects 2 values"
                                               _g263409_)))
                                  (let ((_%target257397257441%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263408_ 0)))
                                        (_%tl257399257444%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263408_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl257399257444%_))
                                        (letrec ((_%loop257400257447%_
                                                  (lambda (_%hd257398257451%_
                                                           _%symbol257404257454%_
                                                           _%method257405257455%_
                                                           _%type-t257406257456%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd257398257451%_))
                                                        (let ((_%e257401257458%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd257398257451%_))))
                  (let ((_%lp-hd257402257462%_
                         (let ()
                           (declare (not safe))
                           (##car _%e257401257458%_)))
                        (_%lp-tl257403257465%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e257401257458%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd257402257462%_))
                        (let ((_%e257410257468%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd257402257462%_))))
                          (let ((_%hd257411257472%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e257410257468%_)))
                                (_%tl257412257475%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e257410257468%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl257412257475%_))
                                (let ((_%e257413257478%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl257412257475%_))))
                                  (let ((_%hd257414257482%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e257413257478%_)))
                                        (_%tl257415257485%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e257413257478%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl257415257485%_))
                                        (let ((_%e257416257488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl257415257485%_))))
                                          (let ((_%hd257417257492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e257416257488%_)))
                                                (_%tl257418257495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e257416257488%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257418257495%_))
                                                (_%loop257400257447%_
                                                 _%lp-tl257403257465%_
                                                 (cons _%hd257417257492%_
                                                       _%symbol257404257454%_)
                                                 (cons _%hd257414257482%_
                                                       _%method257405257455%_)
                                                 (cons _%hd257411257472%_
                                                       _%type-t257406257456%_))
                                                (_%g257389257424%_
                                                 _%g257390257428%_))))
                                        (_%g257389257424%_
                                         _%g257390257428%_))))
                                (_%g257389257424%_ _%g257390257428%_))))
                        (_%g257389257424%_ _%g257390257428%_))))
                (let ((_%symbol257407257498%_ (reverse _%symbol257404257454%_))
                      (_%method257408257500%_ (reverse _%method257405257455%_))
                      (_%type-t257409257501%_
                       (reverse _%type-t257406257456%_)))
                  ((lambda (_%g257391257503%_
                            _%g257392257505%_
                            _%g257393257506%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g257391257503%_
                                _%g257392257505%_
                                _%g257393257506%_))
                             (let ((__tmp263410
                                    (lambda (_%g257522257527%_
                                             _%g257523257530%_
                                             _%g257524257532%_
                                             _%g257525257534%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g257524257532%_
                                                        (cons _%g257523257530%_
                                                              (cons _%g257522257527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g257525257534%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp263410
                                '()
                                _%g257391257503%_
                                _%g257392257505%_
                                _%g257393257506%_)))))
                   _%symbol257407257498%_
                   _%method257408257500%_
                   _%type-t257409257501%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop257400257447%_
                                           _%target257397257441%_
                                           '()
                                           '()
                                           '()))
                                        (_%g257389257424%_
                                         _%g257390257428%_)))))
                              (_%g257389257424%_ _%g257390257428%_))))
                      (_%g257389257424%_ _%g257390257428%_)))))
          (_%g257388257537%_ _%$stx257385%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx257542%_)
        (let* ((_%g257546257579%_
                (lambda (_%g257547257575%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257547257575%_))))
               (_%g257545257689%_
                (lambda (_%g257547257583%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257547257583%_))
                      (let ((_%e257551257586%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257547257583%_))))
                        (let ((_%hd257552257590%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257551257586%_)))
                              (_%tl257553257593%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257551257586%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257553257593%_))
                              (let ((_%e257554257596%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257553257593%_))))
                                (let ((_%hd257555257600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257554257596%_)))
                                      (_%tl257556257603%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257554257596%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl257556257603%_))
                                      (let ((_g263411_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl257556257603%_
                                                '0))))
                                        (begin
                                          (let ((_g263412_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g263411_)
                                                       (##values-length
                                                        _g263411_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g263412_ 2)))
                                                (error "Context expects 2 values"
                                                       _g263412_)))
                                          (let ((_%target257557257606%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g263411_ 0)))
                                                (_%tl257559257609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g263411_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257559257609%_))
                                                (letrec ((_%loop257560257612%_
                                                          (lambda (_%hd257558257616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol257564257619%_
                           _%method257565257620%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd257558257616%_))
                        (let ((_%e257561257622%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd257558257616%_))))
                          (let ((_%lp-hd257562257626%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e257561257622%_)))
                                (_%lp-tl257563257629%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e257561257622%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd257562257626%_))
                                (let ((_%e257568257632%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd257562257626%_))))
                                  (let ((_%hd257569257636%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e257568257632%_)))
                                        (_%tl257570257639%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e257568257632%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl257570257639%_))
                                        (let ((_%e257571257642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl257570257639%_))))
                                          (let ((_%hd257572257646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e257571257642%_)))
                                                (_%tl257573257649%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e257571257642%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257573257649%_))
                                                (_%loop257560257612%_
                                                 _%lp-tl257563257629%_
                                                 (cons _%hd257572257646%_
                                                       _%symbol257564257619%_)
                                                 (cons _%hd257569257636%_
                                                       _%method257565257620%_))
                                                (_%g257546257579%_
                                                 _%g257547257583%_))))
                                        (_%g257546257579%_
                                         _%g257547257583%_))))
                                (_%g257546257579%_ _%g257547257583%_))))
                        (let ((_%symbol257566257652%_
                               (reverse _%symbol257564257619%_))
                              (_%method257567257654%_
                               (reverse _%method257565257620%_)))
                          ((lambda (_%g257548257656%_
                                    _%g257549257658%_
                                    _%g257550257659%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g257548257656%_
                                        _%g257549257658%_))
                                     (let ((__tmp263413
                                            (lambda (_%g257677257681%_
                                                     _%g257678257684%_
                                                     _%g257679257686%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g257550257659%_
                                                                (cons _%g257678257684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g257677257681%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g257679257686%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp263413
                                        '()
                                        _%g257548257656%_
                                        _%g257549257658%_)))))
                           _%symbol257566257652%_
                           _%method257567257654%_
                           _%hd257555257600%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop257560257612%_
                                                   _%target257557257606%_
                                                   '()
                                                   '()))
                                                (_%g257546257579%_
                                                 _%g257547257583%_)))))
                                      (_%g257546257579%_ _%g257547257583%_))))
                              (_%g257546257579%_ _%g257547257583%_))))
                      (_%g257546257579%_ _%g257547257583%_)))))
          (_%g257545257689%_ _%$stx257542%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx257694%_)
        (let* ((_%g257698257712%_
                (lambda (_%g257699257708%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257699257708%_))))
               (_%g257697257753%_
                (lambda (_%g257699257716%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257699257716%_))
                      (let ((_%e257701257719%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257699257716%_))))
                        (let ((_%hd257702257723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257701257719%_)))
                              (_%tl257703257726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257701257719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257703257726%_))
                              (let ((_%e257704257729%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257703257726%_))))
                                (let ((_%hd257705257733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257704257729%_)))
                                      (_%tl257706257736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257704257729%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl257706257736%_))
                                      ((lambda (_%g257700257739%_)
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
                                                           (cons _%g257700257739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd257705257733%_)
                                      (_%g257698257712%_ _%g257699257716%_))))
                              (_%g257698257712%_ _%g257699257716%_))))
                      (_%g257698257712%_ _%g257699257716%_)))))
          (_%g257697257753%_ _%$stx257694%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx257757%_)
        (let* ((_%g257761257815%_
                (lambda (_%g257762257811%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257762257811%_))))
               (_%g257760257996%_
                (lambda (_%g257762257819%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257762257819%_))
                      (let ((_%e257774257822%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257762257819%_))))
                        (let ((_%hd257775257826%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257774257822%_)))
                              (_%tl257776257829%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257774257822%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257776257829%_))
                              (let ((_%e257777257832%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257776257829%_))))
                                (let ((_%hd257778257836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257777257832%_)))
                                      (_%tl257779257839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257777257832%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl257779257839%_))
                                      (let ((_%e257780257842%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl257779257839%_))))
                                        (let ((_%hd257781257846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e257780257842%_)))
                                              (_%tl257782257849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e257780257842%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl257782257849%_))
                                              (let ((_%e257783257852%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl257782257849%_))))
                                                (let ((_%hd257784257856%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e257783257852%_)))
                                                      (_%tl257785257859%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e257783257852%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl257785257859%_))
                                                      (let ((_%e257786257862%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl257785257859%_))))
                (let ((_%hd257787257866%_
                       (let () (declare (not safe)) (##car _%e257786257862%_)))
                      (_%tl257788257869%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e257786257862%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl257788257869%_))
                      (let ((_%e257789257872%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl257788257869%_))))
                        (let ((_%hd257790257876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257789257872%_)))
                              (_%tl257791257879%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257789257872%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257791257879%_))
                              (let ((_%e257792257882%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257791257879%_))))
                                (let ((_%hd257793257886%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257792257882%_)))
                                      (_%tl257794257889%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257792257882%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl257794257889%_))
                                      (let ((_%e257795257892%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl257794257889%_))))
                                        (let ((_%hd257796257896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e257795257892%_)))
                                              (_%tl257797257899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e257795257892%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl257797257899%_))
                                              (let ((_%e257798257902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl257797257899%_))))
                                                (let ((_%hd257799257906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e257798257902%_)))
                                                      (_%tl257800257909%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e257798257902%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl257800257909%_))
                                                      (let ((_%e257801257912%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl257800257909%_))))
                (let ((_%hd257802257916%_
                       (let () (declare (not safe)) (##car _%e257801257912%_)))
                      (_%tl257803257919%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e257801257912%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl257803257919%_))
                      (let ((_%e257804257922%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl257803257919%_))))
                        (let ((_%hd257805257926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257804257922%_)))
                              (_%tl257806257929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257804257922%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257806257929%_))
                              (let ((_%e257807257932%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257806257929%_))))
                                (let ((_%hd257808257936%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257807257932%_)))
                                      (_%tl257809257939%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257807257932%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl257809257939%_))
                                      ((lambda (_%g257763257942%_
                                                _%g257764257944%_
                                                _%g257765257945%_
                                                _%g257766257946%_
                                                _%g257767257947%_
                                                _%g257768257948%_
                                                _%g257769257949%_
                                                _%g257770257950%_
                                                _%g257771257951%_
                                                _%g257772257952%_
                                                _%g257773257953%_)
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
                                                           (cons _%g257773257953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g257772257952%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g257771257951%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g257770257950%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g257769257949%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g257768257948%_ '()))
                                           (cons _%g257767257947%_
                                                 (cons _%g257766257946%_
                                                       (cons _%g257765257945%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g257764257944%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g257763257942%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd257808257936%_
                                       _%hd257805257926%_
                                       _%hd257802257916%_
                                       _%hd257799257906%_
                                       _%hd257796257896%_
                                       _%hd257793257886%_
                                       _%hd257790257876%_
                                       _%hd257787257866%_
                                       _%hd257784257856%_
                                       _%hd257781257846%_
                                       _%hd257778257836%_)
                                      (_%g257761257815%_ _%g257762257819%_))))
                              (_%g257761257815%_ _%g257762257819%_))))
                      (_%g257761257815%_ _%g257762257819%_))))
              (_%g257761257815%_ _%g257762257819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g257761257815%_
                                               _%g257762257819%_))))
                                      (_%g257761257815%_ _%g257762257819%_))))
                              (_%g257761257815%_ _%g257762257819%_))))
                      (_%g257761257815%_ _%g257762257819%_))))
              (_%g257761257815%_ _%g257762257819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g257761257815%_
                                               _%g257762257819%_))))
                                      (_%g257761257815%_ _%g257762257819%_))))
                              (_%g257761257815%_ _%g257762257819%_))))
                      (_%g257761257815%_ _%g257762257819%_)))))
          (_%g257760257996%_ _%$stx257757%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx258000%_)
        (let* ((_%g258004258018%_
                (lambda (_%g258005258014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258005258014%_))))
               (_%g258003258059%_
                (lambda (_%g258005258022%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258005258022%_))
                      (let ((_%e258007258025%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258005258022%_))))
                        (let ((_%hd258008258029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258007258025%_)))
                              (_%tl258009258032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258007258025%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258009258032%_))
                              (let ((_%e258010258035%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258009258032%_))))
                                (let ((_%hd258011258039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258010258035%_)))
                                      (_%tl258012258042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258010258035%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258012258042%_))
                                      ((lambda (_%g258006258045%_)
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
                                                           (cons _%g258006258045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd258011258039%_)
                                      (_%g258004258018%_ _%g258005258022%_))))
                              (_%g258004258018%_ _%g258005258022%_))))
                      (_%g258004258018%_ _%g258005258022%_)))))
          (_%g258003258059%_ _%$stx258000%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx258063%_)
        (let* ((_%g258067258081%_
                (lambda (_%g258068258077%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258068258077%_))))
               (_%g258066258122%_
                (lambda (_%g258068258085%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258068258085%_))
                      (let ((_%e258070258088%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258068258085%_))))
                        (let ((_%hd258071258092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258070258088%_)))
                              (_%tl258072258095%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258070258088%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258072258095%_))
                              (let ((_%e258073258098%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258072258095%_))))
                                (let ((_%hd258074258102%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258073258098%_)))
                                      (_%tl258075258105%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258073258098%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258075258105%_))
                                      ((lambda (_%g258069258108%_)
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
                                                           (cons _%g258069258108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd258074258102%_)
                                      (_%g258067258081%_ _%g258068258085%_))))
                              (_%g258067258081%_ _%g258068258085%_))))
                      (_%g258067258081%_ _%g258068258085%_)))))
          (_%g258066258122%_ _%$stx258063%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx258126%_)
        (let* ((_%g258130258152%_
                (lambda (_%g258131258148%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258131258148%_))))
               (_%g258129258221%_
                (lambda (_%g258131258156%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258131258156%_))
                      (let ((_%e258135258159%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258131258156%_))))
                        (let ((_%hd258136258163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258135258159%_)))
                              (_%tl258137258166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258135258159%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258137258166%_))
                              (let ((_%e258138258169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258137258166%_))))
                                (let ((_%hd258139258173%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258138258169%_)))
                                      (_%tl258140258176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258138258169%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258140258176%_))
                                      (let ((_%e258141258179%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258140258176%_))))
                                        (let ((_%hd258142258183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258141258179%_)))
                                              (_%tl258143258186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258141258179%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258143258186%_))
                                              (let ((_%e258144258189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl258143258186%_))))
                                                (let ((_%hd258145258193%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258144258189%_)))
                                                      (_%tl258146258196%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258144258189%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258146258196%_))
                                                      ((lambda (_%g258132258199%_
                                                                _%g258133258201%_
                                                                _%g258134258202%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g258134258202%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g258133258201%_ '()))
                                   (cons _%g258132258199%_ '())))))
               _%hd258145258193%_
               _%hd258142258183%_
               _%hd258139258173%_)
              (_%g258130258152%_ _%g258131258156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g258130258152%_
                                               _%g258131258156%_))))
                                      (_%g258130258152%_ _%g258131258156%_))))
                              (_%g258130258152%_ _%g258131258156%_))))
                      (_%g258130258152%_ _%g258131258156%_)))))
          (_%g258129258221%_ _%$stx258126%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx258225%_)
        (let* ((_%g258229258251%_
                (lambda (_%g258230258247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258230258247%_))))
               (_%g258228258320%_
                (lambda (_%g258230258255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258230258255%_))
                      (let ((_%e258234258258%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258230258255%_))))
                        (let ((_%hd258235258262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258234258258%_)))
                              (_%tl258236258265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258234258258%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258236258265%_))
                              (let ((_%e258237258268%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258236258265%_))))
                                (let ((_%hd258238258272%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258237258268%_)))
                                      (_%tl258239258275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258237258268%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258239258275%_))
                                      (let ((_%e258240258278%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258239258275%_))))
                                        (let ((_%hd258241258282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258240258278%_)))
                                              (_%tl258242258285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258240258278%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258242258285%_))
                                              (let ((_%e258243258288%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl258242258285%_))))
                                                (let ((_%hd258244258292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258243258288%_)))
                                                      (_%tl258245258295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258243258288%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258245258295%_))
                                                      ((lambda (_%g258231258298%_
                                                                _%g258232258300%_
                                                                _%g258233258301%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g258233258301%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g258232258300%_ '()))
                                   (cons _%g258231258298%_ '())))))
               _%hd258244258292%_
               _%hd258241258282%_
               _%hd258238258272%_)
              (_%g258229258251%_ _%g258230258255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g258229258251%_
                                               _%g258230258255%_))))
                                      (_%g258229258251%_ _%g258230258255%_))))
                              (_%g258229258251%_ _%g258230258255%_))))
                      (_%g258229258251%_ _%g258230258255%_)))))
          (_%g258228258320%_ _%$stx258225%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx258324%_)
        (let* ((_%g258328258342%_
                (lambda (_%g258329258338%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258329258338%_))))
               (_%g258327258383%_
                (lambda (_%g258329258346%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258329258346%_))
                      (let ((_%e258331258349%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258329258346%_))))
                        (let ((_%hd258332258353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258331258349%_)))
                              (_%tl258333258356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258331258349%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258333258356%_))
                              (let ((_%e258334258359%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258333258356%_))))
                                (let ((_%hd258335258363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258334258359%_)))
                                      (_%tl258336258366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258334258359%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258336258366%_))
                                      ((lambda (_%g258330258369%_)
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
                                                           (cons _%g258330258369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd258335258363%_)
                                      (_%g258328258342%_ _%g258329258346%_))))
                              (_%g258328258342%_ _%g258329258346%_))))
                      (_%g258328258342%_ _%g258329258346%_)))))
          (_%g258327258383%_ _%$stx258324%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx258387%_)
        (let* ((_%g258391258409%_
                (lambda (_%g258392258405%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258392258405%_))))
               (_%g258390258464%_
                (lambda (_%g258392258413%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258392258413%_))
                      (let ((_%e258395258416%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258392258413%_))))
                        (let ((_%hd258396258420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258395258416%_)))
                              (_%tl258397258423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258395258416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258397258423%_))
                              (let ((_%e258398258426%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258397258423%_))))
                                (let ((_%hd258399258430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258398258426%_)))
                                      (_%tl258400258433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258398258426%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258400258433%_))
                                      (let ((_%e258401258436%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258400258433%_))))
                                        (let ((_%hd258402258440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258401258436%_)))
                                              (_%tl258403258443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258401258436%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258403258443%_))
                                              ((lambda (_%g258393258446%_
                                                        _%g258394258448%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g258394258448%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g258393258446%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd258402258440%_
                                               _%hd258399258430%_)
                                              (_%g258391258409%_
                                               _%g258392258413%_))))
                                      (_%g258391258409%_ _%g258392258413%_))))
                              (_%g258391258409%_ _%g258392258413%_))))
                      (_%g258391258409%_ _%g258392258413%_)))))
          (_%g258390258464%_ _%$stx258387%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx258468%_)
        (let* ((_%__stx262784262785%_ _%$stx258468%_)
               (_%g258475258536%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262784262785%_)))))
          (let ((_%__kont262787262788%_
                 (lambda (_%g258477258774%_ _%g258478258776%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g258478258776%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g258477258774%_ '()))
                                     '())))))
                (_%__kont262789262790%_
                 (lambda (_%g258488258713%_
                          _%g258489258715%_
                          _%g258490258716%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g258490258716%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g258489258715%_ '()))
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
                                 (cons _%g258488258713%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont262791262792%_
                 (lambda (_%g258507258637%_ _%g258508258639%_)
                   (cons _%g258508258639%_
                         (cons _%g258507258637%_ (cons '#f '())))))
                (_%__kont262793262794%_
                 (lambda (_%g258515258587%_
                          _%g258516258589%_
                          _%g258517258590%_)
                   (cons _%g258517258590%_
                         (cons _%g258516258589%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g258515258587%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx262784262785%_))
                (let ((_%e258479258744%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx262784262785%_))))
                  (let ((_%tl258481258751%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e258479258744%_)))
                        (_%hd258480258748%_
                         (let ()
                           (declare (not safe))
                           (##car _%e258479258744%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl258481258751%_))
                        (let ((_%e258482258754%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl258481258751%_))))
                          (let ((_%tl258484258761%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e258482258754%_)))
                                (_%hd258483258758%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e258482258754%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl258484258761%_))
                                (let ((_%e258485258764%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl258484258761%_))))
                                  (let ((_%tl258487258771%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e258485258764%_)))
                                        (_%hd258486258768%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e258485258764%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl258487258771%_))
                                        (_%__kont262787262788%_
                                         _%hd258486258768%_
                                         _%hd258483258758%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl258487258771%_))
                                            (let ((_%e258500258689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl258487258771%_))))
                                              (let ((_%tl258502258696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e258500258689%_)))
                                                    (_%hd258501258693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e258500258689%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd258501258693%_))
                                                    (let ((_%e258503258699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd258501258693%_))))
                                                      (if (equal? _%e258503258699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl258502258696%_))
                      (let ((_%e258504258703%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl258502258696%_))))
                        (let ((_%tl258506258710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258504258703%_)))
                              (_%hd258505258707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258504258703%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl258506258710%_))
                              (_%__kont262789262790%_
                               _%hd258505258707%_
                               _%hd258486258768%_
                               _%hd258483258758%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd258486258768%_))
                                  (let ((_%e258527258573%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd258486258768%_))))
                                    (declare (not safe))
                                    (_%g258475258536%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g258475258536%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd258486258768%_))
                          (let ((_%e258527258573%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd258486258768%_))))
                            (if (equal? _%e258527258573%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl258502258696%_))
                                    (_%__kont262793262794%_
                                     _%hd258501258693%_
                                     _%hd258483258758%_
                                     _%hd258480258748%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g258475258536%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g258475258536%_))))
                          (let () (declare (not safe)) (_%g258475258536%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd258486258768%_))
                      (let ((_%e258527258573%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd258486258768%_))))
                        (if (equal? _%e258527258573%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl258502258696%_))
                                (_%__kont262793262794%_
                                 _%hd258501258693%_
                                 _%hd258483258758%_
                                 _%hd258480258748%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g258475258536%_)))
                            (let () (declare (not safe)) (_%g258475258536%_))))
                      (let () (declare (not safe)) (_%g258475258536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd258486258768%_))
                                                        (let ((_%e258527258573%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd258486258768%_))))
                  (if (equal? _%e258527258573%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl258502258696%_))
                          (_%__kont262793262794%_
                           _%hd258501258693%_
                           _%hd258483258758%_
                           _%hd258480258748%_)
                          (let () (declare (not safe)) (_%g258475258536%_)))
                      (let () (declare (not safe)) (_%g258475258536%_))))
                (let () (declare (not safe)) (_%g258475258536%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd258486258768%_))
                                                (let ((_%e258527258573%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd258486258768%_))))
                                                  (declare (not safe))
                                                  (_%g258475258536%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g258475258536%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl258484258761%_))
                                    (_%__kont262791262792%_
                                     _%hd258483258758%_
                                     _%hd258480258748%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g258475258536%_))))))
                        (let () (declare (not safe)) (_%g258475258536%_)))))
                (let () (declare (not safe)) (_%g258475258536%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx258795%_)
        (let* ((_%g258799258828%_
                (lambda (_%g258800258824%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258800258824%_))))
               (_%g258798258933%_
                (lambda (_%g258800258832%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258800258832%_))
                      (let ((_%e258802258835%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258800258832%_))))
                        (let ((_%hd258803258839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258802258835%_)))
                              (_%tl258804258842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258802258835%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl258804258842%_))
                              (let ((_g263414_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl258804258842%_
                                        '0))))
                                (begin
                                  (let ((_g263415_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263414_)
                                               (##values-length _g263414_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263415_ 2)))
                                        (error "Context expects 2 values"
                                               _g263415_)))
                                  (let ((_%target258805258845%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263414_ 0)))
                                        (_%tl258807258848%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263414_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl258807258848%_))
                                        (letrec ((_%loop258808258851%_
                                                  (lambda (_%hd258806258855%_
                                                           _%clause258812258858%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd258806258855%_))
                                                        (let ((_%e258809258860%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd258806258855%_))))
                  (let ((_%lp-hd258810258864%_
                         (let ()
                           (declare (not safe))
                           (##car _%e258809258860%_)))
                        (_%lp-tl258811258867%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e258809258860%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd258810258864%_))
                        (let ((_g263416_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd258810258864%_
                                  '0))))
                          (begin
                            (let ((_g263417_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g263416_)
                                         (##values-length _g263416_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g263417_ 2)))
                                  (error "Context expects 2 values"
                                         _g263417_)))
                            (let ((_%target258814258870%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g263416_ 0)))
                                  (_%tl258816258873%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g263416_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl258816258873%_))
                                  (letrec ((_%loop258817258876%_
                                            (lambda (_%hd258815258880%_
                                                     _%clause258821258883%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd258815258880%_))
                                                  (let ((_%e258818258885%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd258815258880%_))))
                                                    (let ((_%lp-hd258819258889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258818258885%_)))
                                                          (_%lp-tl258820258892%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258818258885%_))))
                                                      (_%loop258817258876%_
                                                       _%lp-tl258820258892%_
                                                       (cons _%lp-hd258819258889%_
                                                             _%clause258821258883%_))))
                                                  (let ((_%clause258822258895%_
                                                         (reverse _%clause258821258883%_)))
                                                    (_%loop258808258851%_
                                                     _%lp-tl258811258867%_
                                                     (cons _%clause258822258895%_
                                                           _%clause258812258858%_)))))))
                                    (_%loop258817258876%_
                                     _%target258814258870%_
                                     '()))
                                  (_%g258799258828%_ _%g258800258832%_)))))
                        (_%g258799258828%_ _%g258800258832%_))))
                (let ((_%clause258813258898%_
                       (reverse _%clause258812258858%_)))
                  ((lambda (_%g258801258901%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp263418
                                              (lambda (_%g258916258921%_
                                                       _%g258917258924%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp263419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g258918258927%_ _%g258919258930%_)
                             (cons _%g258918258927%_ _%g258919258930%_))))
                      (declare (not safe))
                      (foldr__0 __tmp263419 '() _%g258916258921%_)))
              _%g258917258924%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp263418
                                          '()
                                          _%g258801258901%_)))
                                 '())))
                   _%clause258813258898%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop258808258851%_
                                           _%target258805258845%_
                                           '()))
                                        (_%g258799258828%_
                                         _%g258800258832%_)))))
                              (_%g258799258828%_ _%g258800258832%_))))
                      (_%g258799258828%_ _%g258800258832%_)))))
          (_%g258798258933%_ _%$stx258795%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx258939%_)
        (let* ((_%g258943258961%_
                (lambda (_%g258944258957%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258944258957%_))))
               (_%g258942259016%_
                (lambda (_%g258944258965%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258944258965%_))
                      (let ((_%e258947258968%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258944258965%_))))
                        (let ((_%hd258948258972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258947258968%_)))
                              (_%tl258949258975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258947258968%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258949258975%_))
                              (let ((_%e258950258978%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258949258975%_))))
                                (let ((_%hd258951258982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258950258978%_)))
                                      (_%tl258952258985%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258950258978%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258952258985%_))
                                      (let ((_%e258953258988%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258952258985%_))))
                                        (let ((_%hd258954258992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258953258988%_)))
                                              (_%tl258955258995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258953258988%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258955258995%_))
                                              ((lambda (_%g258945258998%_
                                                        _%g258946259000%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g258946259000%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g258945258998%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd258954258992%_
                                               _%hd258951258982%_)
                                              (_%g258943258961%_
                                               _%g258944258965%_))))
                                      (_%g258943258961%_ _%g258944258965%_))))
                              (_%g258943258961%_ _%g258944258965%_))))
                      (_%g258943258961%_ _%g258944258965%_)))))
          (_%g258942259016%_ _%$stx258939%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx259020%_)
        (let* ((_%g259024259042%_
                (lambda (_%g259025259038%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259025259038%_))))
               (_%g259023259097%_
                (lambda (_%g259025259046%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259025259046%_))
                      (let ((_%e259028259049%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259025259046%_))))
                        (let ((_%hd259029259053%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259028259049%_)))
                              (_%tl259030259056%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259028259049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259030259056%_))
                              (let ((_%e259031259059%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259030259056%_))))
                                (let ((_%hd259032259063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259031259059%_)))
                                      (_%tl259033259066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259031259059%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259033259066%_))
                                      (let ((_%e259034259069%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259033259066%_))))
                                        (let ((_%hd259035259073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259034259069%_)))
                                              (_%tl259036259076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259034259069%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259036259076%_))
                                              ((lambda (_%g259026259079%_
                                                        _%g259027259081%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g259027259081%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g259026259079%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd259035259073%_
                                               _%hd259032259063%_)
                                              (_%g259024259042%_
                                               _%g259025259046%_))))
                                      (_%g259024259042%_ _%g259025259046%_))))
                              (_%g259024259042%_ _%g259025259046%_))))
                      (_%g259024259042%_ _%g259025259046%_)))))
          (_%g259023259097%_ _%$stx259020%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx259101%_)
        (let* ((_%g259105259134%_
                (lambda (_%g259106259130%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259106259130%_))))
               (_%g259104259230%_
                (lambda (_%g259106259138%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259106259138%_))
                      (let ((_%e259109259141%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259106259138%_))))
                        (let ((_%hd259110259145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259109259141%_)))
                              (_%tl259111259148%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259109259141%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl259111259148%_))
                              (let ((_g263420_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl259111259148%_
                                        '0))))
                                (begin
                                  (let ((_g263421_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263420_)
                                               (##values-length _g263420_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263421_ 2)))
                                        (error "Context expects 2 values"
                                               _g263421_)))
                                  (let ((_%target259112259151%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263420_ 0)))
                                        (_%tl259114259154%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263420_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259114259154%_))
                                        (letrec ((_%loop259115259157%_
                                                  (lambda (_%hd259113259161%_
                                                           _%rule259119259164%_
                                                           _%proc259120259165%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd259113259161%_))
                                                        (let ((_%e259116259167%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd259113259161%_))))
                  (let ((_%lp-hd259117259171%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259116259167%_)))
                        (_%lp-tl259118259174%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259116259167%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd259117259171%_))
                        (let ((_%e259123259177%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd259117259171%_))))
                          (let ((_%hd259124259181%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259123259177%_)))
                                (_%tl259125259184%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259123259177%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259125259184%_))
                                (let ((_%e259126259187%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259125259184%_))))
                                  (let ((_%hd259127259191%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259126259187%_)))
                                        (_%tl259128259194%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259126259187%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259128259194%_))
                                        (_%loop259115259157%_
                                         _%lp-tl259118259174%_
                                         (cons _%hd259127259191%_
                                               _%rule259119259164%_)
                                         (cons _%hd259124259181%_
                                               _%proc259120259165%_))
                                        (_%g259105259134%_
                                         _%g259106259138%_))))
                                (_%g259105259134%_ _%g259106259138%_))))
                        (_%g259105259134%_ _%g259106259138%_))))
                (let ((_%rule259121259197%_ (reverse _%rule259119259164%_))
                      (_%proc259122259199%_ (reverse _%proc259120259165%_)))
                  ((lambda (_%g259107259201%_ _%g259108259203%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g259107259201%_
                                _%g259108259203%_))
                             (let ((__tmp263422
                                    (lambda (_%g259218259222%_
                                             _%g259219259225%_
                                             _%g259220259227%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g259219259225%_
                                                        (cons _%g259218259222%_
                                                              '())))
                                            _%g259220259227%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp263422
                                '()
                                _%g259107259201%_
                                _%g259108259203%_)))))
                   _%rule259121259197%_
                   _%proc259122259199%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop259115259157%_
                                           _%target259112259151%_
                                           '()
                                           '()))
                                        (_%g259105259134%_
                                         _%g259106259138%_)))))
                              (_%g259105259134%_ _%g259106259138%_))))
                      (_%g259105259134%_ _%g259106259138%_)))))
          (_%g259104259230%_ _%$stx259101%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx259235%_)
        (let* ((_%g259239259257%_
                (lambda (_%g259240259253%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259240259253%_))))
               (_%g259238259312%_
                (lambda (_%g259240259261%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259240259261%_))
                      (let ((_%e259243259264%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259240259261%_))))
                        (let ((_%hd259244259268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259243259264%_)))
                              (_%tl259245259271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259243259264%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259245259271%_))
                              (let ((_%e259246259274%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259245259271%_))))
                                (let ((_%hd259247259278%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259246259274%_)))
                                      (_%tl259248259281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259246259274%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259248259281%_))
                                      (let ((_%e259249259284%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259248259281%_))))
                                        (let ((_%hd259250259288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259249259284%_)))
                                              (_%tl259251259291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259249259284%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259251259291%_))
                                              ((lambda (_%g259241259294%_
                                                        _%g259242259296%_)
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
                                                   (cons _%g259242259296%_
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
                 (cons _%g259241259294%_ '())))
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
                                   (cons _%g259242259296%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd259250259288%_
                                               _%hd259247259278%_)
                                              (_%g259239259257%_
                                               _%g259240259261%_))))
                                      (_%g259239259257%_ _%g259240259261%_))))
                              (_%g259239259257%_ _%g259240259261%_))))
                      (_%g259239259257%_ _%g259240259261%_)))))
          (_%g259238259312%_ _%$stx259235%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx259316%_)
        (let* ((_%__stx262902262903%_ _%$stx259316%_)
               (_%g259321259346%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262902262903%_)))))
          (let ((_%__kont262905262906%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont262907262908%_
                 (lambda (_%g259326259393%_
                          _%g259327259395%_
                          _%g259328259396%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g259328259396%_
                                           (cons _%g259327259395%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g259326259393%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx262902262903%_))
                (let ((_%e259323259422%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx262902262903%_))))
                  (let ((_%tl259325259429%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259323259422%_)))
                        (_%hd259324259426%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259323259422%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl259325259429%_))
                        (_%__kont262905262906%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl259325259429%_))
                            (let ((_%e259332259363%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl259325259429%_))))
                              (let ((_%tl259334259370%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e259332259363%_)))
                                    (_%hd259333259367%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e259332259363%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd259333259367%_))
                                    (let ((_%e259335259373%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd259333259367%_))))
                                      (let ((_%tl259337259380%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e259335259373%_)))
                                            (_%hd259336259377%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e259335259373%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259337259380%_))
                                            (let ((_%e259338259383%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl259337259380%_))))
                                              (let ((_%tl259340259390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259338259383%_)))
                                                    (_%hd259339259387%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259338259383%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl259340259390%_))
                                                    (_%__kont262907262908%_
                                                     _%tl259334259370%_
                                                     _%hd259339259387%_
                                                     _%hd259336259377%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g259321259346%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g259321259346%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g259321259346%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g259321259346%_))))))
                (let () (declare (not safe)) (_%g259321259346%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx259440%_)
        (let* ((_%__stx262946262947%_ _%$stx259440%_)
               (_%g259445259476%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262946262947%_)))))
          (let ((_%__kont262949262950%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont262951262952%_
                 (lambda (_%g259450259541%_
                          _%g259451259543%_
                          _%g259452259544%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g259452259544%_
                                           (let ((__tmp263423
                                                  (lambda (_%g259564259567%_
                                                           _%g259565259570%_)
                                                    (cons _%g259564259567%_
                                                          _%g259565259570%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp263423
                                              '()
                                              _%g259451259543%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g259450259541%_)
                                     '()))))))
            (let ((_%__match262989262990%_
                   (lambda (_%e259453259483%_
                            _%hd259454259487%_
                            _%tl259455259490%_
                            _%e259456259493%_
                            _%hd259457259497%_
                            _%tl259458259500%_
                            _%e259459259503%_
                            _%hd259460259507%_
                            _%tl259461259510%_
                            _%__splice262953262954%_
                            _%target259462259513%_
                            _%tl259464259516%_)
                     (letrec ((_%loop259465259519%_
                               (lambda (_%hd259463259523%_ _%sig259469259526%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd259463259523%_))
                                     (let ((_%e259466259528%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd259463259523%_))))
                                       (let ((_%lp-tl259468259535%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e259466259528%_)))
                                             (_%lp-hd259467259532%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e259466259528%_))))
                                         (_%loop259465259519%_
                                          _%lp-tl259468259535%_
                                          (cons _%lp-hd259467259532%_
                                                _%sig259469259526%_))))
                                     (let ((_%sig259470259538%_
                                            (reverse _%sig259469259526%_)))
                                       (_%__kont262951262952%_
                                        _%tl259458259500%_
                                        _%sig259470259538%_
                                        _%hd259460259507%_))))))
                       (_%loop259465259519%_ _%target259462259513%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx262946262947%_))
                  (let ((_%e259447259580%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx262946262947%_))))
                    (let ((_%tl259449259587%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259447259580%_)))
                          (_%hd259448259584%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259447259580%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259449259587%_))
                          (_%__kont262949262950%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259449259587%_))
                              (let ((_%e259456259493%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259449259587%_))))
                                (let ((_%tl259458259500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259456259493%_)))
                                      (_%hd259457259497%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259456259493%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd259457259497%_))
                                      (let ((_%e259459259503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd259457259497%_))))
                                        (let ((_%tl259461259510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259459259503%_)))
                                              (_%hd259460259507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259459259503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl259461259510%_))
                                              (let ((_%__splice262953262954%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl259461259510%_
                                                        '0))))
                                                (let ((_%tl259464259516%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice262953262954%_
                                                          '1)))
                                                      (_%target259462259513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice262953262954%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259464259516%_))
                                                      (_%__match262989262990%_
                                                       _%e259447259580%_
                                                       _%hd259448259584%_
                                                       _%tl259449259587%_
                                                       _%e259456259493%_
                                                       _%hd259457259497%_
                                                       _%tl259458259500%_
                                                       _%e259459259503%_
                                                       _%hd259460259507%_
                                                       _%tl259461259510%_
                                                       _%__splice262953262954%_
                                                       _%target259462259513%_
                                                       _%tl259464259516%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g259445259476%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g259445259476%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g259445259476%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g259445259476%_))))))
                  (let () (declare (not safe)) (_%g259445259476%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx259599%_)
        (let* ((_%__stx262992262993%_ _%$stx259599%_)
               (_%g259604259651%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262992262993%_)))))
          (let ((_%__kont262995262996%_
                 (lambda (_%g259606259809%_ _%g259607259811%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g259607259811%_
                               (let ((__tmp263424
                                      (lambda (_%g259831259834%_
                                               _%g259832259837%_)
                                        (cons _%g259831259834%_
                                              _%g259832259837%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp263424
                                  '()
                                  _%g259606259809%_))))))
                (_%__kont262999263000%_
                 (lambda (_%g259629259706%_ _%g259630259708%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g259630259708%_
                               (let ((__tmp263425
                                      (lambda (_%g259725259728%_
                                               _%g259726259731%_)
                                        (cons _%g259725259728%_
                                              _%g259726259731%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp263425
                                  '()
                                  _%g259629259706%_)))))))
            (let* ((_%__match263059263060%_
                    (lambda (_%e259631259658%_
                             _%hd259632259662%_
                             _%tl259633259665%_
                             _%e259634259668%_
                             _%hd259635259672%_
                             _%tl259636259675%_
                             _%__splice263001263002%_
                             _%target259637259678%_
                             _%tl259639259681%_)
                      (letrec ((_%loop259640259684%_
                                (lambda (_%hd259638259688%_
                                         _%sig259644259691%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd259638259688%_))
                                      (let ((_%e259641259693%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd259638259688%_))))
                                        (let ((_%lp-tl259643259700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259641259693%_)))
                                              (_%lp-hd259642259697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259641259693%_))))
                                          (_%loop259640259684%_
                                           _%lp-tl259643259700%_
                                           (cons _%lp-hd259642259697%_
                                                 _%sig259644259691%_))))
                                      (let ((_%sig259645259703%_
                                             (reverse _%sig259644259691%_)))
                                        (_%__kont262999263000%_
                                         _%sig259645259703%_
                                         _%hd259635259672%_))))))
                        (_%loop259640259684%_ _%target259637259678%_ '()))))
                   (_%__match263051263052%_
                    (lambda (_%e259631259658%_
                             _%hd259632259662%_
                             _%tl259633259665%_
                             _%e259634259668%_
                             _%hd259635259672%_
                             _%tl259636259675%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl259636259675%_))
                          (let ((_%__splice263001263002%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl259636259675%_
                                    '0))))
                            (let ((_%tl259639259681%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice263001263002%_
                                      '1)))
                                  (_%target259637259678%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice263001263002%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl259639259681%_))
                                  (_%__match263059263060%_
                                   _%e259631259658%_
                                   _%hd259632259662%_
                                   _%tl259633259665%_
                                   _%e259634259668%_
                                   _%hd259635259672%_
                                   _%tl259636259675%_
                                   _%__splice263001263002%_
                                   _%target259637259678%_
                                   _%tl259639259681%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g259604259651%_)))))
                          (let () (declare (not safe)) (_%g259604259651%_)))))
                   (_%__match263039263040%_
                    (lambda (_%e259608259741%_
                             _%hd259609259745%_
                             _%tl259610259748%_
                             _%e259611259751%_
                             _%hd259612259755%_
                             _%tl259613259758%_
                             _%e259614259761%_
                             _%hd259615259765%_
                             _%tl259616259768%_
                             _%e259617259771%_
                             _%hd259618259775%_
                             _%tl259619259778%_
                             _%__splice262997262998%_
                             _%target259620259781%_
                             _%tl259622259784%_)
                      (letrec ((_%loop259623259787%_
                                (lambda (_%hd259621259791%_
                                         _%sig259627259794%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd259621259791%_))
                                      (let ((_%e259624259796%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd259621259791%_))))
                                        (let ((_%lp-tl259626259803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259624259796%_)))
                                              (_%lp-hd259625259800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259624259796%_))))
                                          (_%loop259623259787%_
                                           _%lp-tl259626259803%_
                                           (cons _%lp-hd259625259800%_
                                                 _%sig259627259794%_))))
                                      (let ((_%sig259628259806%_
                                             (reverse _%sig259627259794%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl259616259768%_))
                                            (_%__kont262995262996%_
                                             _%sig259628259806%_
                                             _%hd259612259755%_)
                                            (_%__match263051263052%_
                                             _%e259608259741%_
                                             _%hd259609259745%_
                                             _%tl259610259748%_
                                             _%e259611259751%_
                                             _%hd259612259755%_
                                             _%tl259613259758%_)))))))
                        (_%loop259623259787%_ _%target259620259781%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx262992262993%_))
                  (let ((_%e259608259741%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx262992262993%_))))
                    (let ((_%tl259610259748%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259608259741%_)))
                          (_%hd259609259745%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259608259741%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl259610259748%_))
                          (let ((_%e259611259751%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl259610259748%_))))
                            (let ((_%tl259613259758%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e259611259751%_)))
                                  (_%hd259612259755%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e259611259751%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl259613259758%_))
                                  (let ((_%e259614259761%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl259613259758%_))))
                                    (let ((_%tl259616259768%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259614259761%_)))
                                          (_%hd259615259765%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259614259761%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd259615259765%_))
                                          (let ((_%e259617259771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd259615259765%_))))
                                            (let ((_%tl259619259778%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e259617259771%_)))
                                                  (_%hd259618259775%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e259617259771%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd259618259775%_))
                                                  (if (let ((__tmp263426
                                                             |gxc[1]#_g263427_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp263426
                                                         _%hd259618259775%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl259619259778%_))
                                                          (let ((_%__splice262997262998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl259619259778%_
                            '0))))
                    (let ((_%tl259622259784%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice262997262998%_ '1)))
                          (_%target259620259781%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice262997262998%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259622259784%_))
                          (_%__match263039263040%_
                           _%e259608259741%_
                           _%hd259609259745%_
                           _%tl259610259748%_
                           _%e259611259751%_
                           _%hd259612259755%_
                           _%tl259613259758%_
                           _%e259614259761%_
                           _%hd259615259765%_
                           _%tl259616259768%_
                           _%e259617259771%_
                           _%hd259618259775%_
                           _%tl259619259778%_
                           _%__splice262997262998%_
                           _%target259620259781%_
                           _%tl259622259784%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl259613259758%_))
                              (let ((_%__splice263001263002%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl259613259758%_
                                        '0))))
                                (let ((_%tl259639259681%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice263001263002%_
                                          '1)))
                                      (_%target259637259678%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice263001263002%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl259639259681%_))
                                      (_%__match263059263060%_
                                       _%e259608259741%_
                                       _%hd259609259745%_
                                       _%tl259610259748%_
                                       _%e259611259751%_
                                       _%hd259612259755%_
                                       _%tl259613259758%_
                                       _%__splice263001263002%_
                                       _%target259637259678%_
                                       _%tl259639259681%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g259604259651%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g259604259651%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl259613259758%_))
                      (let ((_%__splice263001263002%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl259613259758%_
                                '0))))
                        (let ((_%tl259639259681%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice263001263002%_ '1)))
                              (_%target259637259678%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice263001263002%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl259639259681%_))
                              (_%__match263059263060%_
                               _%e259608259741%_
                               _%hd259609259745%_
                               _%tl259610259748%_
                               _%e259611259751%_
                               _%hd259612259755%_
                               _%tl259613259758%_
                               _%__splice263001263002%_
                               _%target259637259678%_
                               _%tl259639259681%_)
                              (let ()
                                (declare (not safe))
                                (_%g259604259651%_)))))
                      (let () (declare (not safe)) (_%g259604259651%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl259613259758%_))
                  (let ((_%__splice263001263002%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl259613259758%_
                            '0))))
                    (let ((_%tl259639259681%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice263001263002%_ '1)))
                          (_%target259637259678%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice263001263002%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259639259681%_))
                          (_%__match263059263060%_
                           _%e259608259741%_
                           _%hd259609259745%_
                           _%tl259610259748%_
                           _%e259611259751%_
                           _%hd259612259755%_
                           _%tl259613259758%_
                           _%__splice263001263002%_
                           _%target259637259678%_
                           _%tl259639259681%_)
                          (let () (declare (not safe)) (_%g259604259651%_)))))
                  (let () (declare (not safe)) (_%g259604259651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl259613259758%_))
                                                      (let ((_%__splice263001263002%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl259613259758%_
                        '0))))
                (let ((_%tl259639259681%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice263001263002%_ '1)))
                      (_%target259637259678%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice263001263002%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl259639259681%_))
                      (_%__match263059263060%_
                       _%e259608259741%_
                       _%hd259609259745%_
                       _%tl259610259748%_
                       _%e259611259751%_
                       _%hd259612259755%_
                       _%tl259613259758%_
                       _%__splice263001263002%_
                       _%target259637259678%_
                       _%tl259639259681%_)
                      (let () (declare (not safe)) (_%g259604259651%_)))))
              (let () (declare (not safe)) (_%g259604259651%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl259613259758%_))
                                              (let ((_%__splice263001263002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl259613259758%_
                                                        '0))))
                                                (let ((_%tl259639259681%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice263001263002%_
                                                          '1)))
                                                      (_%target259637259678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice263001263002%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259639259681%_))
                                                      (_%__match263059263060%_
                                                       _%e259608259741%_
                                                       _%hd259609259745%_
                                                       _%tl259610259748%_
                                                       _%e259611259751%_
                                                       _%hd259612259755%_
                                                       _%tl259613259758%_
                                                       _%__splice263001263002%_
                                                       _%target259637259678%_
                                                       _%tl259639259681%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g259604259651%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g259604259651%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl259613259758%_))
                                      (let ((_%__splice263001263002%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl259613259758%_
                                                '0))))
                                        (let ((_%tl259639259681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice263001263002%_
                                                  '1)))
                                              (_%target259637259678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice263001263002%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259639259681%_))
                                              (_%__match263059263060%_
                                               _%e259608259741%_
                                               _%hd259609259745%_
                                               _%tl259610259748%_
                                               _%e259611259751%_
                                               _%hd259612259755%_
                                               _%tl259613259758%_
                                               _%__splice263001263002%_
                                               _%target259637259678%_
                                               _%tl259639259681%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g259604259651%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g259604259651%_))))))
                          (let () (declare (not safe)) (_%g259604259651%_)))))
                  (let () (declare (not safe)) (_%g259604259651%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx260994%_ _%id260996%_)
        (let ((_%proc261000%_
               (let ((__tmp263428
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id260996%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp263428))))
          (if (procedure? _%proc261000%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx260994%_
                 _%id260996%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx260985%_ _%id260987%_)
        (let ((_%klass260991%_
               (let ((__tmp263429
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id260987%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp263429))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass260991%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx260985%_
                 _%id260987%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx260235%_ _%proc260237%_ _%sig260238%_)
        (letrec ((_%signature-arity260240%_
                  (lambda (_%args260917%_)
                    (let _%loop260920%_ ((_%rest260923%_ _%args260917%_)
                                         (_%count260925%_ '0))
                      (let* ((_%rest260926260937%_ _%rest260923%_)
                             (_%E260930260943%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest260926260937%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K260933260974%_
                               (lambda (_%rest260971%_)
                                 (_%loop260920%_
                                  _%rest260971%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count260925%_ '1)))))
                              (_%K260932260963%_ (lambda () _%count260925%_))
                              (_%K260931260951%_
                               (lambda () (cons _%count260925%_ '()))))
                          (let ((_%try-match260928260967%_
                                 (lambda ()
                                   (if (null? _%rest260926260937%_)
                                       (_%K260932260963%_)
                                       (_%K260931260951%_)))))
                            (if (pair? _%rest260926260937%_)
                                (let* ((_%tl260935260978%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest260926260937%_)))
                                       (_%rest260982%_ _%tl260935260978%_))
                                  (_%K260933260974%_ _%rest260982%_))
                                (_%try-match260928260967%_))))))))
                 (_%make-signature260242%_
                  (lambda (_%args260799%_
                           _%return260801%_
                           _%effect260802%_
                           _%unchecked260803%_)
                    (let ((__tmp263430
                           (lambda (_%g260804260806%_)
                             (|gxc[1]#verify-class!|
                              _%ctx260235%_
                              _%g260804260806%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp263430 _%args260799%_))
                    (|gxc[1]#verify-class!| _%ctx260235%_ _%return260801%_)
                    (if _%unchecked260803%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx260235%_
                         _%unchecked260803%_)
                        '#!void)
                    (let ((_%arity260810%_
                           (_%signature-arity260240%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args260799%_)))))
                      (if _%effect260802%_
                          (let ((_%effect260813%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect260802%_))))
                            (if (and (list? _%effect260813%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect260813%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx260235%_
                                   _%proc260237%_
                                   _%effect260813%_))))
                          '#!void)
                      (cons _%arity260810%_
                            (cons (let* ((_%g260816260839%_
                                          (lambda (_%g260817260835%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g260817260835%_))))
                                         (_%g260815260913%_
                                          (lambda (_%g260817260843%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g260817260843%_))
                                                (let ((_%e260822260846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g260817260843%_))))
                                                  (let ((_%hd260823260850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e260822260846%_)))
                                                        (_%tl260824260853%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e260822260846%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl260824260853%_))
                                                        (let ((_%e260825260856%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl260824260853%_))))
                  (let ((_%hd260826260860%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260825260856%_)))
                        (_%tl260827260863%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260825260856%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl260827260863%_))
                        (let ((_%e260828260866%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl260827260863%_))))
                          (let ((_%hd260829260870%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260828260866%_)))
                                (_%tl260830260873%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260828260866%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260830260873%_))
                                (let ((_%e260831260876%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260830260873%_))))
                                  (let ((_%hd260832260880%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260831260876%_)))
                                        (_%tl260833260883%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260831260876%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260833260883%_))
                                        ((lambda (_%g260818260886%_
                                                  _%g260819260888%_
                                                  _%g260820260889%_
                                                  _%g260821260890%_)
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
                           (cons _%g260821260890%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g260820260889%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g260819260888%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g260818260886%_ '()))
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
                                         _%hd260832260880%_
                                         _%hd260829260870%_
                                         _%hd260826260860%_
                                         _%hd260823260850%_)
                                        (_%g260816260839%_
                                         _%g260817260843%_))))
                                (_%g260816260839%_ _%g260817260843%_))))
                        (_%g260816260839%_ _%g260817260843%_))))
                (_%g260816260839%_ _%g260817260843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g260816260839%_
                                                 _%g260817260843%_)))))
                                    (_%g260815260913%_
                                     (list _%args260799%_
                                           _%return260801%_
                                           _%effect260802%_
                                           _%unchecked260803%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx260235%_ _%proc260237%_)
          (let* ((_%__stx263070263071%_ _%sig260238%_)
                 (_%g260249260352%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx263070263071%_)))))
            (let ((_%__kont263073263074%_
                   (lambda (_%g260251260780%_ _%g260252260782%_)
                     (_%make-signature260242%_
                      _%g260252260782%_
                      _%g260251260780%_
                      '#f
                      '#f)))
                  (_%__kont263075263076%_
                   (lambda (_%g260259260731%_
                            _%g260260260733%_
                            _%g260261260734%_)
                     (_%make-signature260242%_
                      _%g260261260734%_
                      _%g260260260733%_
                      _%g260259260731%_
                      '#f)))
                  (_%__kont263077263078%_
                   (lambda (_%g260275260655%_
                            _%g260276260657%_
                            _%g260277260658%_)
                     (_%make-signature260242%_
                      _%g260277260658%_
                      _%g260276260657%_
                      _%g260275260655%_
                      (let ((__tmp263431
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc260237%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp263431)))))
                  (_%__kont263079263080%_
                   (lambda (_%g260295260561%_
                            _%g260296260563%_
                            _%g260297260564%_
                            _%g260298260565%_)
                     (_%make-signature260242%_
                      _%g260298260565%_
                      _%g260297260564%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g260295260561%_)))))
                  (_%__kont263081263082%_
                   (lambda (_%g260319260468%_ _%g260320260470%_)
                     (_%make-signature260242%_
                      _%g260320260470%_
                      _%g260319260468%_
                      '#f
                      (let ((__tmp263432
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc260237%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp263432)))))
                  (_%__kont263083263084%_
                   (lambda (_%g260331260403%_
                            _%g260332260405%_
                            _%g260333260406%_)
                     (_%make-signature260242%_
                      _%g260333260406%_
                      _%g260332260405%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g260331260403%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx263070263071%_))
                  (let ((_%e260253260760%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx263070263071%_))))
                    (let ((_%tl260255260767%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260253260760%_)))
                          (_%hd260254260764%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260253260760%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260255260767%_))
                          (let ((_%e260256260770%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl260255260767%_))))
                            (let ((_%tl260258260777%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260256260770%_)))
                                  (_%hd260257260774%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260256260770%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl260258260777%_))
                                  (_%__kont263073263074%_
                                   _%hd260257260774%_
                                   _%hd260254260764%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260258260777%_))
                                      (let ((_%e260268260707%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260258260777%_))))
                                        (let ((_%tl260270260714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260268260707%_)))
                                              (_%hd260269260711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260268260707%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd260269260711%_))
                                              (let ((_%e260271260717%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd260269260711%_))))
                                                (if (equal? _%e260271260717%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl260270260714%_))
                                                        (let ((_%e260272260721%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl260270260714%_))))
                  (let ((_%tl260274260728%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260272260721%_)))
                        (_%hd260273260725%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260272260721%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl260274260728%_))
                        (_%__kont263075263076%_
                         _%hd260273260725%_
                         _%hd260257260774%_
                         _%hd260254260764%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl260274260728%_))
                            (let ((_%e260291260641%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl260274260728%_))))
                              (let ((_%tl260293260648%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e260291260641%_)))
                                    (_%hd260292260645%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e260291260641%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd260292260645%_))
                                    (let ((_%e260294260651%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd260292260645%_))))
                                      (if (equal? _%e260294260651%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260293260648%_))
                                              (_%__kont263077263078%_
                                               _%hd260273260725%_
                                               _%hd260257260774%_
                                               _%hd260254260764%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl260293260648%_))
                                                  (let ((_%e260316260551%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl260293260648%_))))
                                                    (let ((_%tl260318260558%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e260316260551%_)))
                                                          (_%hd260317260555%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e260316260551%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl260318260558%_))
                                                          (_%__kont263079263080%_
                                                           _%hd260317260555%_
                                                           _%hd260273260725%_
                                                           _%hd260257260774%_
                                                           _%hd260254260764%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g260249260352%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g260249260352%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g260249260352%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g260249260352%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g260249260352%_))))))
                (let () (declare (not safe)) (_%g260249260352%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e260271260717%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl260270260714%_))
                                                            (_%__kont263081263082%_
                                                             _%hd260257260774%_
                                                             _%hd260254260764%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl260270260714%_))
                        (let ((_%e260344260393%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl260270260714%_))))
                          (let ((_%tl260346260400%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260344260393%_)))
                                (_%hd260345260397%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260344260393%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl260346260400%_))
                                (_%__kont263083263084%_
                                 _%hd260345260397%_
                                 _%hd260257260774%_
                                 _%hd260254260764%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g260249260352%_)))))
                        (let () (declare (not safe)) (_%g260249260352%_))))
                (let () (declare (not safe)) (_%g260249260352%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g260249260352%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g260249260352%_))))))
                          (let () (declare (not safe)) (_%g260249260352%_)))))
                  (let () (declare (not safe)) (_%g260249260352%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig259846%_)
        (let* ((_%g259849259929%_
                (lambda (_%g259850259925%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259850259925%_))))
               (_%g259848260231%_
                (lambda (_%g259850259933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259850259933%_))
                      (let ((_%e259856259936%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259850259933%_))))
                        (let ((_%hd259857259940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259856259936%_)))
                              (_%tl259858259943%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259856259936%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259858259943%_))
                              (let ((_%e259859259946%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259858259943%_))))
                                (let ((_%hd259860259950%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259859259946%_)))
                                      (_%tl259861259953%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259859259946%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd259860259950%_))
                                      (let ((_%e259862259956%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd259860259950%_))))
                                        (if (equal? _%e259862259956%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259861259953%_))
                                                (let ((_%e259863259960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl259861259953%_))))
                                                  (let ((_%hd259864259964%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259863259960%_)))
                                                        (_%tl259865259967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259863259960%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd259864259964%_))
                                                        (let ((_%e259866259970%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd259864259964%_))))
                  (let ((_%hd259867259974%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259866259970%_)))
                        (_%tl259868259977%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259866259970%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd259867259974%_))
                        (if (let ((__tmp263433 |gxc[1]#_g263434_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp263433
                               _%hd259867259974%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259868259977%_))
                                (let ((_%e259869259980%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259868259977%_))))
                                  (let ((_%hd259870259984%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259869259980%_)))
                                        (_%tl259871259987%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259869259980%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259871259987%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259865259967%_))
                                            (let ((_%e259872259990%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl259865259967%_))))
                                              (let ((_%hd259873259994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259872259990%_)))
                                                    (_%tl259874259997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259872259990%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd259873259994%_))
                                                    (let ((_%e259875260000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd259873259994%_))))
                                                      (if (equal? _%e259875260000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl259874259997%_))
                      (let ((_%e259876260004%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl259874259997%_))))
                        (let ((_%hd259877260008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259876260004%_)))
                              (_%tl259878260011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259876260004%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd259877260008%_))
                              (let ((_%e259879260014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd259877260008%_))))
                                (let ((_%hd259880260018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259879260014%_)))
                                      (_%tl259881260021%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259879260014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd259880260018%_))
                                      (if (let ((__tmp263435
                                                 |gxc[1]#_g263436_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp263435
                                             _%hd259880260018%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259881260021%_))
                                              (let ((_%e259882260024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl259881260021%_))))
                                                (let ((_%hd259883260028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259882260024%_)))
                                                      (_%tl259884260031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259882260024%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259884260031%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl259878260011%_))
                                                          (let ((_%e259885260034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl259878260011%_))))
                    (let ((_%hd259886260038%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259885260034%_)))
                          (_%tl259887260041%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259885260034%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd259886260038%_))
                          (let ((_%e259888260044%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd259886260038%_))))
                            (if (equal? _%e259888260044%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl259887260041%_))
                                    (let ((_%e259889260048%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl259887260041%_))))
                                      (let ((_%hd259890260052%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e259889260048%_)))
                                            (_%tl259891260055%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e259889260048%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd259890260052%_))
                                            (let ((_%e259892260058%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd259890260052%_))))
                                              (let ((_%hd259893260062%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259892260058%_)))
                                                    (_%tl259894260065%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259892260058%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd259893260062%_))
                                                    (if (let ((__tmp263437
                                                               |gxc[1]#_g263438_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp263437
                                                           _%hd259893260062%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl259894260065%_))
                                                            (let ((_%e259895260068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl259894260065%_))))
                      (let ((_%hd259896260072%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259895260068%_)))
                            (_%tl259897260075%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259895260068%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl259897260075%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259891260055%_))
                                (let ((_%e259898260078%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259891260055%_))))
                                  (let ((_%hd259899260082%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259898260078%_)))
                                        (_%tl259900260085%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259898260078%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd259899260082%_))
                                        (let ((_%e259901260088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd259899260082%_))))
                                          (if (equal? _%e259901260088%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl259900260085%_))
                                                  (let ((_%e259902260092%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl259900260085%_))))
                                                    (let ((_%hd259903260096%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e259902260092%_)))
                                                          (_%tl259904260099%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e259902260092%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd259903260096%_))
                                                          (let ((_%e259905260102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd259903260096%_))))
                    (let ((_%hd259906260106%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259905260102%_)))
                          (_%tl259907260109%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259905260102%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd259906260106%_))
                          (if (let ((__tmp263439 |gxc[1]#_g263440_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp263439
                                 _%hd259906260106%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl259907260109%_))
                                  (let ((_%e259908260112%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl259907260109%_))))
                                    (let ((_%hd259909260116%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259908260112%_)))
                                          (_%tl259910260119%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259908260112%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl259910260119%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259904260099%_))
                                              (let ((_%e259911260122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl259904260099%_))))
                                                (let ((_%hd259912260126%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259911260122%_)))
                                                      (_%tl259913260129%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259911260122%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd259912260126%_))
                                                      (let ((_%e259914260132%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd259912260126%_))))
                (if (equal? _%e259914260132%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl259913260129%_))
                        (let ((_%e259915260136%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl259913260129%_))))
                          (let ((_%hd259916260140%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259915260136%_)))
                                (_%tl259917260143%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259915260136%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd259916260140%_))
                                (let ((_%e259918260146%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd259916260140%_))))
                                  (let ((_%hd259919260150%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259918260146%_)))
                                        (_%tl259920260153%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259918260146%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd259919260150%_))
                                        (if (let ((__tmp263441
                                                   |gxc[1]#_g263442_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp263441
                                               _%hd259919260150%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259920260153%_))
                                                (let ((_%e259921260156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl259920260153%_))))
                                                  (let ((_%hd259922260160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259921260156%_)))
                                                        (_%tl259923260163%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259921260156%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259923260163%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl259917260143%_))
                                                            ((lambda (_%g259851260166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g259852260168%_
                              _%g259853260169%_
                              _%g259854260170%_
                              _%g259855260171%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g259852260168%_))
                           (cons _%g259852260168%_
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
                       (cons _%g259854260170%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g259851260166%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd259922260160%_
                     _%hd259909260116%_
                     _%hd259896260072%_
                     _%hd259883260028%_
                     _%hd259870259984%_)
                    (_%g259849259929%_ _%g259850259933%_))
                (_%g259849259929%_ _%g259850259933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g259849259929%_
                                                 _%g259850259933%_))
                                            (_%g259849259929%_
                                             _%g259850259933%_))
                                        (_%g259849259929%_
                                         _%g259850259933%_))))
                                (_%g259849259929%_ _%g259850259933%_))))
                        (_%g259849259929%_ _%g259850259933%_))
                    (_%g259849259929%_ _%g259850259933%_)))
              (_%g259849259929%_ _%g259850259933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g259849259929%_
                                               _%g259850259933%_))
                                          (_%g259849259929%_
                                           _%g259850259933%_))))
                                  (_%g259849259929%_ _%g259850259933%_))
                              (_%g259849259929%_ _%g259850259933%_))
                          (_%g259849259929%_ _%g259850259933%_))))
                  (_%g259849259929%_ _%g259850259933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g259849259929%_
                                                   _%g259850259933%_))
                                              (_%g259849259929%_
                                               _%g259850259933%_)))
                                        (_%g259849259929%_
                                         _%g259850259933%_))))
                                (_%g259849259929%_ _%g259850259933%_))
                            (_%g259849259929%_ _%g259850259933%_))))
                    (_%g259849259929%_ _%g259850259933%_))
                (_%g259849259929%_ _%g259850259933%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g259849259929%_
                                                     _%g259850259933%_))))
                                            (_%g259849259929%_
                                             _%g259850259933%_))))
                                    (_%g259849259929%_ _%g259850259933%_))
                                (_%g259849259929%_ _%g259850259933%_)))
                          (_%g259849259929%_ _%g259850259933%_))))
                  (_%g259849259929%_ _%g259850259933%_))
              (_%g259849259929%_ _%g259850259933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g259849259929%_
                                               _%g259850259933%_))
                                          (_%g259849259929%_
                                           _%g259850259933%_))
                                      (_%g259849259929%_ _%g259850259933%_))))
                              (_%g259849259929%_ _%g259850259933%_))))
                      (_%g259849259929%_ _%g259850259933%_))
                  (_%g259849259929%_ _%g259850259933%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g259849259929%_
                                                     _%g259850259933%_))))
                                            (_%g259849259929%_
                                             _%g259850259933%_))
                                        (_%g259849259929%_
                                         _%g259850259933%_))))
                                (_%g259849259929%_ _%g259850259933%_))
                            (_%g259849259929%_ _%g259850259933%_))
                        (_%g259849259929%_ _%g259850259933%_))))
                (_%g259849259929%_ _%g259850259933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g259849259929%_
                                                 _%g259850259933%_))
                                            (_%g259849259929%_
                                             _%g259850259933%_)))
                                      (_%g259849259929%_ _%g259850259933%_))))
                              (_%g259849259929%_ _%g259850259933%_))))
                      (_%g259849259929%_ _%g259850259933%_)))))
          (_%g259848260231%_ _%sig259846%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx261003%_)
        (let* ((_%g261006261024%_
                (lambda (_%g261007261020%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261007261020%_))))
               (_%g261005261079%_
                (lambda (_%g261007261028%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261007261028%_))
                      (let ((_%e261010261031%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261007261028%_))))
                        (let ((_%hd261011261035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261010261031%_)))
                              (_%tl261012261038%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261010261031%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261012261038%_))
                              (let ((_%e261013261041%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261012261038%_))))
                                (let ((_%hd261014261045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261013261041%_)))
                                      (_%tl261015261048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261013261041%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261015261048%_))
                                      (let ((_%e261016261051%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261015261048%_))))
                                        (let ((_%hd261017261055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261016261051%_)))
                                              (_%tl261018261058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261016261051%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261018261058%_))
                                              ((lambda (_%g261008261061%_
                                                        _%g261009261063%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g261009261063%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g261008261061%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx261003%_
                                                        _%g261009261063%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx261003%_
                                                        _%g261008261061%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g261009261063%_
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
                                                   (cons _%g261008261061%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261006261024%_
                                                      _%g261007261028%_)))
                                               _%hd261017261055%_
                                               _%hd261014261045%_)
                                              (_%g261006261024%_
                                               _%g261007261028%_))))
                                      (_%g261006261024%_ _%g261007261028%_))))
                              (_%g261006261024%_ _%g261007261028%_))))
                      (_%g261006261024%_ _%g261007261028%_)))))
          (_%g261005261079%_ _%stx261003%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx261083%_)
        (let* ((_%g261086261110%_
                (lambda (_%g261087261106%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261087261106%_))))
               (_%g261085261391%_
                (lambda (_%g261087261114%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261087261114%_))
                      (let ((_%e261090261117%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261087261114%_))))
                        (let ((_%hd261091261121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261090261117%_)))
                              (_%tl261092261124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261090261117%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261092261124%_))
                              (let ((_%e261093261127%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261092261124%_))))
                                (let ((_%hd261094261131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261093261127%_)))
                                      (_%tl261095261134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261093261127%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl261095261134%_))
                                      (let ((_g263443_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl261095261134%_
                                                '0))))
                                        (begin
                                          (let ((_g263444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g263443_)
                                                       (##values-length
                                                        _g263443_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g263444_ 2)))
                                                (error "Context expects 2 values"
                                                       _g263444_)))
                                          (let ((_%target261096261137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g263443_ 0)))
                                                (_%tl261098261140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g263443_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261098261140%_))
                                                (letrec ((_%loop261099261143%_
                                                          (lambda (_%hd261097261147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature261103261150%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd261097261147%_))
                        (let ((_%e261100261152%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd261097261147%_))))
                          (let ((_%lp-hd261101261156%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261100261152%_)))
                                (_%lp-tl261102261159%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261100261152%_))))
                            (_%loop261099261143%_
                             _%lp-tl261102261159%_
                             (cons _%lp-hd261101261156%_
                                   _%signature261103261150%_))))
                        (let ((_%signature261104261162%_
                               (reverse _%signature261103261150%_)))
                          ((lambda (_%g261088261165%_ _%g261089261167%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g261089261167%_))
                                 (let* ((_%g261185261200%_
                                         (lambda (_%g261186261196%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g261186261196%_))))
                                        (_%g261184261379%_
                                         (lambda (_%g261186261204%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g261186261204%_))
                                               (let ((_%e261189261207%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g261186261204%_))))
                                                 (let ((_%hd261190261211%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e261189261207%_)))
                                                       (_%tl261191261214%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e261189261207%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl261191261214%_))
                                                       (let ((_%e261192261217%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl261191261214%_))))
                 (let ((_%hd261193261221%_
                        (let ()
                          (declare (not safe))
                          (##car _%e261192261217%_)))
                       (_%tl261194261224%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e261192261217%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl261194261224%_))
                       ((lambda (_%g261187261227%_ _%g261188261229%_)
                          (let* ((_%g261245261253%_
                                  (lambda (_%g261246261249%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g261246261249%_))))
                                 (_%g261244261375%_
                                  (lambda (_%g261246261257%_)
                                    ((lambda (_%g261247261260%_)
                                       (let* ((_%unchecked261273%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g261187261227%_))
                                              (_%g261276261284%_
                                               (lambda (_%g261277261280%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g261277261280%_))))
                                              (_%g261275261307%_
                                               (lambda (_%g261277261288%_)
                                                 ((lambda (_%g261278261291%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g261247261260%_
                                                                (cons _%g261278261291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g261277261288%_))))
                                         (_%g261275261307%_
                                          (if _%unchecked261273%_
                                              (let* ((_%g261311261326%_
                                                      (lambda (_%g261312261322%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g261312261322%_))))
                                                     (_%g261310261371%_
                                                      (lambda (_%g261312261330%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g261312261330%_))
                                                            (let ((_%e261315261333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g261312261330%_))))
                      (let ((_%hd261316261337%_
                             (let ()
                               (declare (not safe))
                               (##car _%e261315261333%_)))
                            (_%tl261317261340%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e261315261333%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl261317261340%_))
                            (let ((_%e261318261343%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl261317261340%_))))
                              (let ((_%hd261319261347%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e261318261343%_)))
                                    (_%tl261320261350%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e261318261343%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl261320261350%_))
                                    ((lambda (_%g261313261353%_
                                              _%g261314261355%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g261314261355%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261188261229%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g261313261353%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd261319261347%_
                                     _%hd261316261337%_)
                                    (_%g261311261326%_ _%g261312261330%_))))
                            (_%g261311261326%_ _%g261312261330%_))))
                    (_%g261311261326%_ _%g261312261330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g261310261371%_
                                                 _%unchecked261273%_))
                                              '(begin)))))
                                     _%g261246261257%_))))
                            (_%g261244261375%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g261089261167%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g261188261229%_ '()))
                   (cons '#f (cons 'signature: (cons _%g261187261227%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd261193261221%_
                        _%hd261190261211%_)
                       (_%g261185261200%_ _%g261186261204%_))))
               (_%g261185261200%_ _%g261186261204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261185261200%_
                                                _%g261186261204%_)))))
                                   (_%g261184261379%_
                                    (|gxc[1]#parse-signature|
                                     _%stx261083%_
                                     _%g261089261167%_
                                     (let ((__tmp263445
                                            (lambda (_%g261382261385%_
                                                     _%g261383261388%_)
                                              (cons _%g261382261385%_
                                                    _%g261383261388%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp263445
                                        '()
                                        _%g261088261165%_)))))
                                 (_%g261086261110%_ _%g261087261114%_)))
                           _%signature261104261162%_
                           _%hd261094261131%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop261099261143%_
                                                   _%target261096261137%_
                                                   '()))
                                                (_%g261086261110%_
                                                 _%g261087261114%_)))))
                                      (_%g261086261110%_ _%g261087261114%_))))
                              (_%g261086261110%_ _%g261087261114%_))))
                      (_%g261086261110%_ _%g261087261114%_)))))
          (_%g261085261391%_ _%stx261083%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx261396%_)
        (let* ((_%g261399261423%_
                (lambda (_%g261400261419%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261400261419%_))))
               (_%g261398262298%_
                (lambda (_%g261400261427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261400261427%_))
                      (let ((_%e261403261430%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261400261427%_))))
                        (let ((_%hd261404261434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261403261430%_)))
                              (_%tl261405261437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261403261430%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261405261437%_))
                              (let ((_%e261406261440%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261405261437%_))))
                                (let ((_%hd261407261444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261406261440%_)))
                                      (_%tl261408261447%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261406261440%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl261408261447%_))
                                      (let ((_g263446_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl261408261447%_
                                                '0))))
                                        (begin
                                          (let ((_g263447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g263446_)
                                                       (##values-length
                                                        _g263446_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g263447_ 2)))
                                                (error "Context expects 2 values"
                                                       _g263447_)))
                                          (let ((_%target261409261450%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g263446_ 0)))
                                                (_%tl261411261453%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g263446_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261411261453%_))
                                                (letrec ((_%loop261412261456%_
                                                          (lambda (_%hd261410261460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature261416261463%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd261410261460%_))
                        (let ((_%e261413261465%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd261410261460%_))))
                          (let ((_%lp-hd261414261469%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261413261465%_)))
                                (_%lp-tl261415261472%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261413261465%_))))
                            (_%loop261412261456%_
                             _%lp-tl261415261472%_
                             (cons _%lp-hd261414261469%_
                                   _%case-signature261416261463%_))))
                        (let ((_%case-signature261417261475%_
                               (reverse _%case-signature261416261463%_)))
                          ((lambda (_%g261401261478%_ _%g261402261480%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g261402261480%_))
                                 (let* ((_%signatures261511%_
                                         (map (lambda (_%g261497261499%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx261396%_
                                                 _%g261402261480%_
                                                 _%g261497261499%_))
                                              (let ((__tmp263448
                                                     (lambda (_%g261502261505%_
                                                              _%g261503261508%_)
                                                       (cons _%g261502261505%_
                                                             _%g261503261508%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp263448
                                                 '()
                                                 _%g261401261478%_))))
                                        (_%g261514261540%_
                                         (lambda (_%g261515261536%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g261515261536%_))))
                                        (_%g261513262294%_
                                         (lambda (_%g261515261544%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g261515261544%_))
                                               (let ((_g263449_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g261515261544%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g263450_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g263449_)
                        (##values-length _g263449_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g263450_ 2)))
                 (error "Context expects 2 values" _g263450_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target261518261547%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g263449_
                                                             0)))
                                                         (_%tl261520261550%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g263449_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl261520261550%_))
                                                         (letrec ((_%loop261521261553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd261519261557%_
                                    _%sig261525261560%_
                                    _%arity261526261561%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd261519261557%_))
                                 (let ((_%e261522261563%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd261519261557%_))))
                                   (let ((_%lp-hd261523261567%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e261522261563%_)))
                                         (_%lp-tl261524261570%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e261522261563%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd261523261567%_))
                                         (let ((_%e261529261573%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd261523261567%_))))
                                           (let ((_%hd261530261577%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e261529261573%_)))
                                                 (_%tl261531261580%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e261529261573%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl261531261580%_))
                                                 (let ((_%e261532261583%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl261531261580%_))))
                                                   (let ((_%hd261533261587%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e261532261583%_)))
                                                         (_%tl261534261590%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e261532261583%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl261534261590%_))
                                                         (_%loop261521261553%_
                                                          _%lp-tl261524261570%_
                                                          (cons _%hd261533261587%_
                                                                _%sig261525261560%_)
                                                          (cons _%hd261530261577%_
                                                                _%arity261526261561%_))
                                                         (_%g261514261540%_
                                                          _%g261515261544%_))))
                                                 (_%g261514261540%_
                                                  _%g261515261544%_))))
                                         (_%g261514261540%_
                                          _%g261515261544%_))))
                                 (let ((_%sig261527261593%_
                                        (reverse _%sig261525261560%_))
                                       (_%arity261528261595%_
                                        (reverse _%arity261526261561%_)))
                                   ((lambda (_%g261516261597%_
                                             _%g261517261599%_)
                                      (let* ((_%g261616261624%_
                                              (lambda (_%g261617261620%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g261617261620%_))))
                                             (_%g261615262279%_
                                              (lambda (_%g261617261628%_)
                                                ((lambda (_%g261618261631%_)
                                                   (let* ((_%g261644261652%_
                                                           (lambda (_%g261645261648%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g261645261648%_))))
                  (_%g261643261674%_
                   (lambda (_%g261645261656%_)
                     ((lambda (_%g261646261659%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g261618261631%_
                                    (cons _%g261646261659%_ '()))))
                      _%g261645261656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261643261674%_
                                                      (let ((_g263451_
                                                             (let _%loop261678%_ ((_%rest261681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures261511%_)
                                          (_%unchecked-proc261683%_ '#f)
                                          (_%unchecked-clauses261684%_ '()))
                       (let* ((_%rest261685261693%_ _%rest261681%_)
                              (_%else261687261705%_
                               (lambda ()
                                 (values _%unchecked-proc261683%_
                                         (reverse!
                                          _%unchecked-clauses261684%_))))
                              (_%K261689262146%_
                               (lambda (_%rest261709%_ _%hd261711%_)
                                 (let* ((_%g261713261800%_
                                         (lambda (_%g261714261796%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g261714261796%_))))
                                        (_%g261712262142%_
                                         (lambda (_%g261714261804%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g261714261804%_))
                                               (let ((_%e261721261807%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g261714261804%_))))
                                                 (let ((_%hd261722261811%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e261721261807%_)))
                                                       (_%tl261723261814%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e261721261807%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl261723261814%_))
                                                       (let ((_%e261724261817%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl261723261814%_))))
                 (let ((_%hd261725261821%_
                        (let ()
                          (declare (not safe))
                          (##car _%e261724261817%_)))
                       (_%tl261726261824%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e261724261817%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd261725261821%_))
                       (let ((_%e261727261827%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd261725261821%_))))
                         (let ((_%hd261728261831%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e261727261827%_)))
                               (_%tl261729261834%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e261727261827%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl261729261834%_))
                               (let ((_%e261730261837%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl261729261834%_))))
                                 (let ((_%hd261731261841%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e261730261837%_)))
                                       (_%tl261732261844%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e261730261837%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd261731261841%_))
                                       (let ((_%e261733261847%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd261731261841%_))))
                                         (if (equal? _%e261733261847%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl261732261844%_))
                                                 (let ((_%e261734261851%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl261732261844%_))))
                                                   (let ((_%hd261735261855%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e261734261851%_)))
                                                         (_%tl261736261858%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e261734261851%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd261735261855%_))
                                                         (let ((_%e261737261861%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd261735261855%_))))
                   (let ((_%hd261738261865%_
                          (let ()
                            (declare (not safe))
                            (##car _%e261737261861%_)))
                         (_%tl261739261868%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e261737261861%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd261738261865%_))
                         (if (let ((__tmp263453 |gxc[1]#_g263454_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp263453
                                _%hd261738261865%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl261739261868%_))
                                 (let ((_%e261740261871%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl261739261868%_))))
                                   (let ((_%hd261741261875%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e261740261871%_)))
                                         (_%tl261742261878%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e261740261871%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl261742261878%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl261736261858%_))
                                             (let ((_%e261743261881%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl261736261858%_))))
                                               (let ((_%hd261744261885%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e261743261881%_)))
                                                     (_%tl261745261888%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e261743261881%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd261744261885%_))
                                                     (let ((_%e261746261891%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd261744261885%_))))
                                                       (if (equal? _%e261746261891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl261745261888%_))
                       (let ((_%e261747261895%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl261745261888%_))))
                         (let ((_%hd261748261899%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e261747261895%_)))
                               (_%tl261749261902%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e261747261895%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd261748261899%_))
                               (let ((_%e261750261905%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd261748261899%_))))
                                 (let ((_%hd261751261909%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e261750261905%_)))
                                       (_%tl261752261912%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e261750261905%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd261751261909%_))
                                       (if (let ((__tmp263455
                                                  |gxc[1]#_g263456_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp263455
                                              _%hd261751261909%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl261752261912%_))
                                               (let ((_%e261753261915%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl261752261912%_))))
                                                 (let ((_%hd261754261919%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e261753261915%_)))
                                                       (_%tl261755261922%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e261753261915%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl261755261922%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl261749261902%_))
                                                           (let ((_%e261756261925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl261749261902%_))))
                     (let ((_%hd261757261929%_
                            (let ()
                              (declare (not safe))
                              (##car _%e261756261925%_)))
                           (_%tl261758261932%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e261756261925%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd261757261929%_))
                           (let ((_%e261759261935%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd261757261929%_))))
                             (if (equal? _%e261759261935%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl261758261932%_))
                                     (let ((_%e261760261939%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl261758261932%_))))
                                       (let ((_%hd261761261943%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e261760261939%_)))
                                             (_%tl261762261946%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e261760261939%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd261761261943%_))
                                             (let ((_%e261763261949%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd261761261943%_))))
                                               (let ((_%hd261764261953%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e261763261949%_)))
                                                     (_%tl261765261956%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e261763261949%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd261764261953%_))
                                                     (if (let ((__tmp263457
                                                                |gxc[1]#_g263458_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp263457
                                                            _%hd261764261953%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl261765261956%_))
                     (let ((_%e261766261959%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl261765261956%_))))
                       (let ((_%hd261767261963%_
                              (let ()
                                (declare (not safe))
                                (##car _%e261766261959%_)))
                             (_%tl261768261966%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e261766261959%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl261768261966%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl261762261946%_))
                                 (let ((_%e261769261969%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl261762261946%_))))
                                   (let ((_%hd261770261973%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e261769261969%_)))
                                         (_%tl261771261976%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e261769261969%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd261770261973%_))
                                         (let ((_%e261772261979%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd261770261973%_))))
                                           (if (equal? _%e261772261979%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl261771261976%_))
                                                   (let ((_%e261773261983%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl261771261976%_))))
                                                     (let ((_%hd261774261987%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e261773261983%_)))
                                                           (_%tl261775261990%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e261773261983%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd261774261987%_))
                                                           (let ((_%e261776261993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd261774261987%_))))
                     (let ((_%hd261777261997%_
                            (let ()
                              (declare (not safe))
                              (##car _%e261776261993%_)))
                           (_%tl261778262000%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e261776261993%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd261777261997%_))
                           (if (let ((__tmp263459 |gxc[1]#_g263460_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp263459
                                  _%hd261777261997%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl261778262000%_))
                                   (let ((_%e261779262003%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl261778262000%_))))
                                     (let ((_%hd261780262007%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e261779262003%_)))
                                           (_%tl261781262010%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e261779262003%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl261781262010%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl261775261990%_))
                                               (let ((_%e261782262013%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl261775261990%_))))
                                                 (let ((_%hd261783262017%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e261782262013%_)))
                                                       (_%tl261784262020%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e261782262013%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd261783262017%_))
                                                       (let ((_%e261785262023%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd261783262017%_))))
                 (if (equal? _%e261785262023%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl261784262020%_))
                         (let ((_%e261786262027%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl261784262020%_))))
                           (let ((_%hd261787262031%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e261786262027%_)))
                                 (_%tl261788262034%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e261786262027%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd261787262031%_))
                                 (let ((_%e261789262037%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd261787262031%_))))
                                   (let ((_%hd261790262041%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e261789262037%_)))
                                         (_%tl261791262044%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e261789262037%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd261790262041%_))
                                         (if (let ((__tmp263461
                                                    |gxc[1]#_g263462_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp263461
                                                _%hd261790262041%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl261791262044%_))
                                                 (let ((_%e261792262047%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl261791262044%_))))
                                                   (let ((_%hd261793262051%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e261792262047%_)))
                                                         (_%tl261794262054%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e261792262047%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl261794262054%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl261788262034%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl261726261824%_))
                         ((lambda (_%g261715262057%_
                                   _%g261716262059%_
                                   _%g261717262060%_
                                   _%g261718262061%_
                                   _%g261719262062%_
                                   _%g261720262063%_)
                            (let ((_%clause262134%_
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
                                                     (cons _%g261720262063%_
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
                                                 (cons _%g261718262061%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g261715262057%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked262136%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g261716262059%_))))
                              (_%loop261678%_
                               _%rest261709%_
                               (let ((_%$e262138%_ _%unchecked262136%_))
                                 (if _%$e262138%_
                                     _%$e262138%_
                                     _%unchecked-proc261683%_))
                               (cons _%clause262134%_
                                     _%unchecked-clauses261684%_))))
                          _%hd261793262051%_
                          _%hd261780262007%_
                          _%hd261767261963%_
                          _%hd261754261919%_
                          _%hd261741261875%_
                          _%hd261722261811%_)
                         (_%g261713261800%_ _%g261714261804%_))
                     (_%g261713261800%_ _%g261714261804%_))
                 (_%g261713261800%_ _%g261714261804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g261713261800%_
                                                  _%g261714261804%_))
                                             (_%g261713261800%_
                                              _%g261714261804%_))
                                         (_%g261713261800%_
                                          _%g261714261804%_))))
                                 (_%g261713261800%_ _%g261714261804%_))))
                         (_%g261713261800%_ _%g261714261804%_))
                     (_%g261713261800%_ _%g261714261804%_)))
               (_%g261713261800%_ _%g261714261804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261713261800%_
                                                _%g261714261804%_))
                                           (_%g261713261800%_
                                            _%g261714261804%_))))
                                   (_%g261713261800%_ _%g261714261804%_))
                               (_%g261713261800%_ _%g261714261804%_))
                           (_%g261713261800%_ _%g261714261804%_))))
                   (_%g261713261800%_ _%g261714261804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g261713261800%_
                                                    _%g261714261804%_))
                                               (_%g261713261800%_
                                                _%g261714261804%_)))
                                         (_%g261713261800%_
                                          _%g261714261804%_))))
                                 (_%g261713261800%_ _%g261714261804%_))
                             (_%g261713261800%_ _%g261714261804%_))))
                     (_%g261713261800%_ _%g261714261804%_))
                 (_%g261713261800%_ _%g261714261804%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261713261800%_
                                                      _%g261714261804%_))))
                                             (_%g261713261800%_
                                              _%g261714261804%_))))
                                     (_%g261713261800%_ _%g261714261804%_))
                                 (_%g261713261800%_ _%g261714261804%_)))
                           (_%g261713261800%_ _%g261714261804%_))))
                   (_%g261713261800%_ _%g261714261804%_))
               (_%g261713261800%_ _%g261714261804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261713261800%_
                                                _%g261714261804%_))
                                           (_%g261713261800%_
                                            _%g261714261804%_))
                                       (_%g261713261800%_ _%g261714261804%_))))
                               (_%g261713261800%_ _%g261714261804%_))))
                       (_%g261713261800%_ _%g261714261804%_))
                   (_%g261713261800%_ _%g261714261804%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261713261800%_
                                                      _%g261714261804%_))))
                                             (_%g261713261800%_
                                              _%g261714261804%_))
                                         (_%g261713261800%_
                                          _%g261714261804%_))))
                                 (_%g261713261800%_ _%g261714261804%_))
                             (_%g261713261800%_ _%g261714261804%_))
                         (_%g261713261800%_ _%g261714261804%_))))
                 (_%g261713261800%_ _%g261714261804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g261713261800%_
                                                  _%g261714261804%_))
                                             (_%g261713261800%_
                                              _%g261714261804%_)))
                                       (_%g261713261800%_ _%g261714261804%_))))
                               (_%g261713261800%_ _%g261714261804%_))))
                       (_%g261713261800%_ _%g261714261804%_))))
               (_%g261713261800%_ _%g261714261804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261713261800%_
                                                _%g261714261804%_)))))
                                   (_%g261712262142%_ _%hd261711%_)))))
                         (if (pair? _%rest261685261693%_)
                             (let ((_%hd261690262150%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest261685261693%_)))
                                   (_%tl261691262153%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest261685261693%_))))
                               (let* ((_%hd262156%_ _%hd261690262150%_)
                                      (_%rest262159%_ _%tl261691262153%_))
                                 (_%K261689262146%_
                                  _%rest262159%_
                                  _%hd262156%_)))
                             (_%else261687261705%_))))))
                (begin
                  (let ((_g263452_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g263451_)
                               (##values-length _g263451_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g263452_ 2)))
                        (error "Context expects 2 values" _g263452_)))
                  (let ((_%unchecked-proc262162%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g263451_ 0)))
                        (_%unchecked-clauses262164%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g263451_ 1))))
                    (if _%unchecked-proc262162%_
                        (let* ((_%g262166262190%_
                                (lambda (_%g262167262186%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g262167262186%_))))
                               (_%g262165262275%_
                                (lambda (_%g262167262194%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g262167262194%_))
                                      (let ((_%e262170262197%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g262167262194%_))))
                                        (let ((_%hd262171262201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262170262197%_)))
                                              (_%tl262172262204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262170262197%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262172262204%_))
                                              (let ((_%e262173262207%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262172262204%_))))
                                                (let ((_%hd262174262211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262173262207%_)))
                                                      (_%tl262175262214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262173262207%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd262174262211%_))
                                                      (let ((_g263463_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd262174262211%_ '0))))
                (begin
                  (let ((_g263464_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g263463_)
                               (##values-length _g263463_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g263464_ 2)))
                        (error "Context expects 2 values" _g263464_)))
                  (let ((_%target262176262217%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g263463_ 0)))
                        (_%tl262178262220%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g263463_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl262178262220%_))
                        (letrec ((_%loop262179262223%_
                                  (lambda (_%hd262177262227%_
                                           _%clause262183262230%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd262177262227%_))
                                        (let ((_%e262180262232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd262177262227%_))))
                                          (let ((_%lp-hd262181262236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e262180262232%_)))
                                                (_%lp-tl262182262239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e262180262232%_))))
                                            (_%loop262179262223%_
                                             _%lp-tl262182262239%_
                                             (cons _%lp-hd262181262236%_
                                                   _%clause262183262230%_))))
                                        (let ((_%clause262184262242%_
                                               (reverse _%clause262183262230%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262175262214%_))
                                              ((lambda (_%g262168262245%_
                                                        _%g262169262247%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g262169262247%_
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
                                             (let ((__tmp263465
                                                    (lambda (_%g262266262269%_
                                                             _%g262267262272%_)
                                                      (cons _%g262266262269%_
                                                            _%g262267262272%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp263465
                                                '()
                                                _%g262168262245%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause262184262242%_
                                               _%hd262171262201%_)
                                              (_%g262166262190%_
                                               _%g262167262194%_)))))))
                          (_%loop262179262223%_ _%target262176262217%_ '()))
                        (_%g262166262190%_ _%g262167262194%_)))))
              (_%g262166262190%_ _%g262167262194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262166262190%_
                                               _%g262167262194%_))))
                                      (_%g262166262190%_ _%g262167262194%_)))))
                          (_%g262165262275%_
                           (list _%unchecked-proc262162%_
                                 _%unchecked-clauses262164%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g261617261628%_))))
                                        (_%g261615262279%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g261402261480%_
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
                                          _%g261516261597%_
                                          _%g261517261599%_))
                                       (let ((__tmp263466
                                              (lambda (_%g262282262286%_
                                                       _%g262283262289%_
                                                       _%g262284262291%_)
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
                                (cons _%g262283262289%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g262282262286%_ '())))))
              _%g262284262291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp263466
                                          '()
                                          _%g261516261597%_
                                          _%g261517261599%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig261527261593%_
                                    _%arity261528261595%_))))))
                   (_%loop261521261553%_ _%target261518261547%_ '() '()))
                 (_%g261514261540%_ _%g261515261544%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261514261540%_
                                                _%g261515261544%_)))))
                                   (_%g261513262294%_ _%signatures261511%_))
                                 (_%g261399261423%_ _%g261400261427%_)))
                           _%case-signature261417261475%_
                           _%hd261407261444%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop261412261456%_
                                                   _%target261409261450%_
                                                   '()))
                                                (_%g261399261423%_
                                                 _%g261400261427%_)))))
                                      (_%g261399261423%_ _%g261400261427%_))))
                              (_%g261399261423%_ _%g261400261427%_))))
                      (_%g261399261423%_ _%g261400261427%_)))))
          (_%g261398262298%_ _%stx261396%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx262306%_)
        (let* ((_%__stx263286263287%_ _%$stx262306%_)
               (_%g262312262372%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx263286263287%_)))))
          (let ((_%__kont263289263290%_
                 (lambda (_%g262314262594%_ _%g262315262596%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262315262596%_ '()))
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
                                                       (cons _%g262315262596%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g262314262594%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont263291263292%_
                 (lambda (_%g262329262519%_
                          _%g262330262521%_
                          _%g262331262522%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262331262522%_ '()))
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
                                                       (cons _%g262331262522%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g262330262521%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262329262519%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont263293263294%_
                 (lambda (_%g262348262433%_
                          _%g262349262435%_
                          _%g262350262436%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262350262436%_ '()))
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
                                                       (cons _%g262350262436%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g262349262435%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262348262433%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx263286263287%_))
                (let ((_%e262316262550%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx263286263287%_))))
                  (let ((_%tl262318262557%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262316262550%_)))
                        (_%hd262317262554%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262316262550%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl262318262557%_))
                        (let ((_%e262319262560%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262318262557%_))))
                          (let ((_%tl262321262567%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262319262560%_)))
                                (_%hd262320262564%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262319262560%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd262320262564%_))
                                (let ((_%e262322262570%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd262320262564%_))))
                                  (if (equal? _%e262322262570%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl262321262567%_))
                                          (let ((_%e262323262574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl262321262567%_))))
                                            (let ((_%tl262325262581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e262323262574%_)))
                                                  (_%hd262324262578%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e262323262574%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262325262581%_))
                                                  (let ((_%e262326262584%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl262325262581%_))))
                                                    (let ((_%tl262328262591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262326262584%_)))
                                                          (_%hd262327262588%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262326262584%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl262328262591%_))
                                                          (_%__kont263289263290%_
                                                           _%hd262327262588%_
                                                           _%hd262324262578%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g262312262372%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g262312262372%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g262312262372%_)))
                                      (if (equal? _%e262322262570%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262321262567%_))
                                              (let ((_%e262339262489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262321262567%_))))
                                                (let ((_%tl262341262496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262339262489%_)))
                                                      (_%hd262340262493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262339262489%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl262341262496%_))
                                                      (let ((_%e262342262499%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl262341262496%_))))
                (let ((_%tl262344262506%_
                       (let () (declare (not safe)) (##cdr _%e262342262499%_)))
                      (_%hd262343262503%_
                       (let ()
                         (declare (not safe))
                         (##car _%e262342262499%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262344262506%_))
                      (let ((_%e262345262509%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262344262506%_))))
                        (let ((_%tl262347262516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262345262509%_)))
                              (_%hd262346262513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262345262509%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262347262516%_))
                              (_%__kont263291263292%_
                               _%hd262346262513%_
                               _%hd262343262503%_
                               _%hd262340262493%_)
                              (let ()
                                (declare (not safe))
                                (_%g262312262372%_)))))
                      (let () (declare (not safe)) (_%g262312262372%_)))))
              (let () (declare (not safe)) (_%g262312262372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g262312262372%_)))
                                          (if (equal? _%e262322262570%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262321262567%_))
                                                  (let ((_%e262358262403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl262321262567%_))))
                                                    (let ((_%tl262360262410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262358262403%_)))
                                                          (_%hd262359262407%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262358262403%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl262360262410%_))
                                                          (let ((_%e262361262413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl262360262410%_))))
                    (let ((_%tl262363262420%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262361262413%_)))
                          (_%hd262362262417%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262361262413%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl262363262420%_))
                          (let ((_%e262364262423%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl262363262420%_))))
                            (let ((_%tl262366262430%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e262364262423%_)))
                                  (_%hd262365262427%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e262364262423%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262366262430%_))
                                  (_%__kont263293263294%_
                                   _%hd262365262427%_
                                   _%hd262362262417%_
                                   _%hd262359262407%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g262312262372%_)))))
                          (let () (declare (not safe)) (_%g262312262372%_)))))
                  (let () (declare (not safe)) (_%g262312262372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g262312262372%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g262312262372%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g262312262372%_)))))
                        (let () (declare (not safe)) (_%g262312262372%_)))))
                (let () (declare (not safe)) (_%g262312262372%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx262618%_)
        (let* ((_%g262622262642%_
                (lambda (_%g262623262638%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262623262638%_))))
               (_%g262621262711%_
                (lambda (_%g262623262646%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262623262646%_))
                      (let ((_%e262625262649%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262623262646%_))))
                        (let ((_%hd262626262653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262625262649%_)))
                              (_%tl262627262656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262625262649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262627262656%_))
                              (let ((_g263467_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262627262656%_
                                        '0))))
                                (begin
                                  (let ((_g263468_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263467_)
                                               (##values-length _g263467_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263468_ 2)))
                                        (error "Context expects 2 values"
                                               _g263468_)))
                                  (let ((_%target262628262659%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263467_ 0)))
                                        (_%tl262630262662%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263467_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262630262662%_))
                                        (letrec ((_%loop262631262665%_
                                                  (lambda (_%hd262629262669%_
                                                           _%decl262635262672%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262629262669%_))
                                                        (let ((_%e262632262674%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262629262669%_))))
                  (let ((_%lp-hd262633262678%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262632262674%_)))
                        (_%lp-tl262634262681%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262632262674%_))))
                    (_%loop262631262665%_
                     _%lp-tl262634262681%_
                     (cons _%lp-hd262633262678%_ _%decl262635262672%_))))
                (let ((_%decl262636262684%_ (reverse _%decl262635262672%_)))
                  ((lambda (_%g262624262687%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp263469
                                  (lambda (_%g262702262705%_ _%g262703262708%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g262702262705%_)
                                          _%g262703262708%_))))
                             (declare (not safe))
                             (foldr__0 __tmp263469 '() _%g262624262687%_))))
                   _%decl262636262684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262631262665%_
                                           _%target262628262659%_
                                           '()))
                                        (_%g262622262642%_
                                         _%g262623262646%_)))))
                              (_%g262622262642%_ _%g262623262646%_))))
                      (_%g262622262642%_ _%g262623262646%_)))))
          (_%g262621262711%_ _%$stx262618%_))))))
