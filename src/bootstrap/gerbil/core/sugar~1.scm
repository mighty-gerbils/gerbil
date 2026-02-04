(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g20920_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20921_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20924_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20925_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_%$stx1904%_)
        (let* ((_%g19081936%_
                (lambda (_%g19091932%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g19091932%_)))
               (_%g19072035%_
                (lambda (_%g19091940%_)
                  (if (gx#stx-pair? _%g19091940%_)
                      (let ((_%e19131943%_ (gx#syntax-e _%g19091940%_)))
                        (let ((_%hd19141947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e19131943%_)))
                              (_%tl19151950%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e19131943%_))))
                          (if (gx#stx-pair? _%tl19151950%_)
                              (let ((_%e19161953%_
                                     (gx#syntax-e _%tl19151950%_)))
                                (let ((_%hd19171957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e19161953%_)))
                                      (_%tl19181960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e19161953%_))))
                                  (if (gx#stx-pair? _%tl19181960%_)
                                      (let ((_%e19191963%_
                                             (gx#syntax-e _%tl19181960%_)))
                                        (let ((_%hd19201967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e19191963%_)))
                                              (_%tl19211970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e19191963%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl19211970%_)
                                              (let ((_g20912_
                                                     (gx#syntax-split-splice
                                                      _%tl19211970%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20913_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20912_)
                                                               (##values-length
                                                                _g20912_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20913_ 2)))
                (error "Context expects 2 values" _g20913_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target19221973%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20912_
                                                            0)))
                                                        (_%tl19241976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20912_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl19241976%_)
                                                        (letrec ((_%loop19251979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd19231983%_ _%clauses19291986%_)
                            (if (gx#stx-pair? _%hd19231983%_)
                                (let ((_%e19261988%_
                                       (gx#syntax-e _%hd19231983%_)))
                                  (let ((_%lp-hd19271992%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e19261988%_)))
                                        (_%lp-tl19281995%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e19261988%_))))
                                    (_%loop19251979%_
                                     _%lp-tl19281995%_
                                     (cons _%lp-hd19271992%_
                                           _%clauses19291986%_))))
                                (let ((_%clauses19301998%_
                                       (reverse _%clauses19291986%_)))
                                  ((lambda (_%g19102001%_
                                            _%g19112003%_
                                            _%g19122004%_)
                                     (if (gx#identifier? _%g19122004%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _%g19122004%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _%g19112003%_
                               (foldr (lambda (_%g20262029%_ _%g20272032%_)
                                        (cons _%g20262029%_ _%g20272032%_))
                                      '()
                                      _%g19102001%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%g19081936%_ _%g19091940%_)))
                                   _%clauses19301998%_
                                   _%hd19201967%_
                                   _%hd19171957%_))))))
                  (_%loop19251979%_ _%target19221973%_ '()))
                (_%g19081936%_ _%g19091940%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g19081936%_ _%g19091940%_))))
                                      (_%g19081936%_ _%g19091940%_))))
                              (_%g19081936%_ _%g19091940%_))))
                      (_%g19081936%_ _%g19091940%_)))))
          (_%g19072035%_ _%$stx1904%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrule|
      (lambda (_%$stx2040%_)
        (let* ((_%__stx1838718388%_ _%$stx2040%_)
               (_%g20452086%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1838718388%_))))
          (let ((_%__kont1839018391%_
                 (lambda (_%g20472216%_ _%g20482218%_ _%g20492219%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g20492219%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%g20482218%_)
                     (cons _%g20472216%_ '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1839218393%_
                 (lambda (_%g20622143%_
                          _%g20632145%_
                          _%g20642146%_
                          _%g20652147%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g20652147%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%g20642146%_)
                     (cons _%g20632145%_ (cons _%g20622143%_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1845218453%_
                    (lambda (_%e20662093%_
                             _%hd20672097%_
                             _%tl20682100%_
                             _%e20692103%_
                             _%hd20702107%_
                             _%tl20712110%_
                             _%e20722113%_
                             _%hd20732117%_
                             _%tl20742120%_
                             _%e20752123%_
                             _%hd20762127%_
                             _%tl20772130%_
                             _%e20782133%_
                             _%hd20792137%_
                             _%tl20802140%_)
                      (let ((_%g20622143%_ _%hd20792137%_)
                            (_%g20632145%_ _%hd20762127%_)
                            (_%g20642146%_ _%tl20742120%_)
                            (_%g20652147%_ _%hd20732117%_))
                        (if (gx#identifier? _%g20652147%_)
                            (_%__kont1839218393%_
                             _%g20622143%_
                             _%g20632145%_
                             _%g20642146%_
                             _%g20652147%_)
                            (let () (declare (not safe)) (_%g20452086%_))))))
                   (_%__match1842018421%_
                    (lambda (_%e20502176%_
                             _%hd20512180%_
                             _%tl20522183%_
                             _%e20532186%_
                             _%hd20542190%_
                             _%tl20552193%_
                             _%e20562196%_
                             _%hd20572200%_
                             _%tl20582203%_
                             _%e20592206%_
                             _%hd20602210%_
                             _%tl20612213%_)
                      (let ((_%g20472216%_ _%hd20602210%_)
                            (_%g20482218%_ _%tl20582203%_)
                            (_%g20492219%_ _%hd20572200%_))
                        (if (gx#identifier? _%g20492219%_)
                            (_%__kont1839018391%_
                             _%g20472216%_
                             _%g20482218%_
                             _%g20492219%_)
                            (let () (declare (not safe)) (_%g20452086%_)))))))
              (if (gx#stx-pair? _%__stx1838718388%_)
                  (let ((_%e20502176%_ (gx#syntax-e _%__stx1838718388%_)))
                    (let ((_%tl20522183%_
                           (let () (declare (not safe)) (##cdr _%e20502176%_)))
                          (_%hd20512180%_
                           (let ()
                             (declare (not safe))
                             (##car _%e20502176%_))))
                      (if (gx#stx-pair? _%tl20522183%_)
                          (let ((_%e20532186%_ (gx#syntax-e _%tl20522183%_)))
                            (let ((_%tl20552193%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e20532186%_)))
                                  (_%hd20542190%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e20532186%_))))
                              (if (gx#stx-pair? _%hd20542190%_)
                                  (let ((_%e20562196%_
                                         (gx#syntax-e _%hd20542190%_)))
                                    (let ((_%tl20582203%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e20562196%_)))
                                          (_%hd20572200%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e20562196%_))))
                                      (if (gx#stx-pair? _%tl20552193%_)
                                          (let ((_%e20592206%_
                                                 (gx#syntax-e _%tl20552193%_)))
                                            (let ((_%tl20612213%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e20592206%_)))
                                                  (_%hd20602210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e20592206%_))))
                                              (if (gx#stx-null? _%tl20612213%_)
                                                  (_%__match1842018421%_
                                                   _%e20502176%_
                                                   _%hd20512180%_
                                                   _%tl20522183%_
                                                   _%e20532186%_
                                                   _%hd20542190%_
                                                   _%tl20552193%_
                                                   _%e20562196%_
                                                   _%hd20572200%_
                                                   _%tl20582203%_
                                                   _%e20592206%_
                                                   _%hd20602210%_
                                                   _%tl20612213%_)
                                                  (if (gx#stx-pair?
                                                       _%tl20612213%_)
                                                      (let ((_%e20782133%_
                                                             (gx#syntax-e
                                                              _%tl20612213%_)))
                                                        (let ((_%tl20802140%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e20782133%_)))
                      (_%hd20792137%_
                       (let () (declare (not safe)) (##car _%e20782133%_))))
                  (if (gx#stx-null? _%tl20802140%_)
                      (_%__match1845218453%_
                       _%e20502176%_
                       _%hd20512180%_
                       _%tl20522183%_
                       _%e20532186%_
                       _%hd20542190%_
                       _%tl20552193%_
                       _%e20562196%_
                       _%hd20572200%_
                       _%tl20582203%_
                       _%e20592206%_
                       _%hd20602210%_
                       _%tl20612213%_
                       _%e20782133%_
                       _%hd20792137%_
                       _%tl20802140%_)
                      (let () (declare (not safe)) (_%g20452086%_)))))
              (let () (declare (not safe)) (_%g20452086%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%g20452086%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g20452086%_)))))
                          (let () (declare (not safe)) (_%g20452086%_)))))
                  (let () (declare (not safe)) (_%g20452086%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_%$stx2241%_)
        (let* ((_%__stx1845518456%_ _%$stx2241%_)
               (_%g22462285%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1845518456%_))))
          (let ((_%__kont1845818459%_
                 (lambda (_%g22482405%_ _%g22492407%_ _%g22502408%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g22502408%_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%g22492407%_
                                                 (foldr (lambda (_%g24272430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g24282433%_)
                  (cons _%g24272430%_ _%g24282433%_))
                '()
                _%g22482405%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1846218463%_
                 (lambda (_%g22692322%_ _%g22702324%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g22702324%_ (cons _%g22692322%_ '()))))))
            (let* ((_%__match1851018511%_
                    (lambda (_%e22712292%_
                             _%hd22722296%_
                             _%tl22732299%_
                             _%e22742302%_
                             _%hd22752306%_
                             _%tl22762309%_
                             _%e22772312%_
                             _%hd22782316%_
                             _%tl22792319%_)
                      (let ((_%g22692322%_ _%hd22782316%_)
                            (_%g22702324%_ _%hd22752306%_))
                        (if (gx#identifier? _%g22702324%_)
                            (_%__kont1846218463%_ _%g22692322%_ _%g22702324%_)
                            (let () (declare (not safe)) (_%g22462285%_))))))
                   (_%__match1850218503%_
                    (lambda (_%e22712292%_
                             _%hd22722296%_
                             _%tl22732299%_
                             _%e22742302%_
                             _%hd22752306%_
                             _%tl22762309%_)
                      (if (gx#stx-pair? _%tl22762309%_)
                          (let ((_%e22772312%_ (gx#syntax-e _%tl22762309%_)))
                            (let ((_%tl22792319%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e22772312%_)))
                                  (_%hd22782316%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e22772312%_))))
                              (if (gx#stx-null? _%tl22792319%_)
                                  (_%__match1851018511%_
                                   _%e22712292%_
                                   _%hd22722296%_
                                   _%tl22732299%_
                                   _%e22742302%_
                                   _%hd22752306%_
                                   _%tl22762309%_
                                   _%e22772312%_
                                   _%hd22782316%_
                                   _%tl22792319%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g22462285%_)))))
                          (let () (declare (not safe)) (_%g22462285%_)))))
                   (_%__match1849018491%_
                    (lambda (_%e22512347%_
                             _%hd22522351%_
                             _%tl22532354%_
                             _%e22542357%_
                             _%hd22552361%_
                             _%tl22562364%_
                             _%e22572367%_
                             _%hd22582371%_
                             _%tl22592374%_
                             _%__splice1846018461%_
                             _%target22602377%_
                             _%tl22622380%_)
                      (letrec ((_%loop22632383%_
                                (lambda (_%hd22612387%_ _%body22672390%_)
                                  (if (gx#stx-pair? _%hd22612387%_)
                                      (let ((_%e22642392%_
                                             (gx#syntax-e _%hd22612387%_)))
                                        (let ((_%lp-tl22662399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e22642392%_)))
                                              (_%lp-hd22652396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e22642392%_))))
                                          (_%loop22632383%_
                                           _%lp-tl22662399%_
                                           (cons _%lp-hd22652396%_
                                                 _%body22672390%_))))
                                      (let ((_%body22682402%_
                                             (reverse _%body22672390%_)))
                                        (let ((_%g22482405%_ _%body22682402%_)
                                              (_%g22492407%_ _%tl22592374%_)
                                              (_%g22502408%_ _%hd22582371%_))
                                          (if (gx#identifier? _%g22502408%_)
                                              (_%__kont1845818459%_
                                               _%g22482405%_
                                               _%g22492407%_
                                               _%g22502408%_)
                                              (_%__match1850218503%_
                                               _%e22512347%_
                                               _%hd22522351%_
                                               _%tl22532354%_
                                               _%e22542357%_
                                               _%hd22552361%_
                                               _%tl22562364%_))))))))
                        (_%loop22632383%_ _%target22602377%_ '())))))
              (if (gx#stx-pair? _%__stx1845518456%_)
                  (let ((_%e22512347%_ (gx#syntax-e _%__stx1845518456%_)))
                    (let ((_%tl22532354%_
                           (let () (declare (not safe)) (##cdr _%e22512347%_)))
                          (_%hd22522351%_
                           (let ()
                             (declare (not safe))
                             (##car _%e22512347%_))))
                      (if (gx#stx-pair? _%tl22532354%_)
                          (let ((_%e22542357%_ (gx#syntax-e _%tl22532354%_)))
                            (let ((_%tl22562364%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e22542357%_)))
                                  (_%hd22552361%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e22542357%_))))
                              (if (gx#stx-pair? _%hd22552361%_)
                                  (let ((_%e22572367%_
                                         (gx#syntax-e _%hd22552361%_)))
                                    (let ((_%tl22592374%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e22572367%_)))
                                          (_%hd22582371%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e22572367%_))))
                                      (if (gx#stx-pair/null? _%tl22562364%_)
                                          (let ((_%__splice1846018461%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl22562364%_
                                                  '0)))
                                            (let ((_%tl22622380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1846018461%_
                                                      '1)))
                                                  (_%target22602377%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1846018461%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl22622380%_)
                                                  (_%__match1849018491%_
                                                   _%e22512347%_
                                                   _%hd22522351%_
                                                   _%tl22532354%_
                                                   _%e22542357%_
                                                   _%hd22552361%_
                                                   _%tl22562364%_
                                                   _%e22572367%_
                                                   _%hd22582371%_
                                                   _%tl22592374%_
                                                   _%__splice1846018461%_
                                                   _%target22602377%_
                                                   _%tl22622380%_)
                                                  (if (gx#stx-pair?
                                                       _%tl22562364%_)
                                                      (let ((_%e22772312%_
                                                             (gx#syntax-e
                                                              _%tl22562364%_)))
                                                        (let ((_%tl22792319%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e22772312%_)))
                      (_%hd22782316%_
                       (let () (declare (not safe)) (##car _%e22772312%_))))
                  (if (gx#stx-null? _%tl22792319%_)
                      (_%__match1851018511%_
                       _%e22512347%_
                       _%hd22522351%_
                       _%tl22532354%_
                       _%e22542357%_
                       _%hd22552361%_
                       _%tl22562364%_
                       _%e22772312%_
                       _%hd22782316%_
                       _%tl22792319%_)
                      (let () (declare (not safe)) (_%g22462285%_)))))
              (let () (declare (not safe)) (_%g22462285%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl22562364%_)
                                              (let ((_%e22772312%_
                                                     (gx#syntax-e
                                                      _%tl22562364%_)))
                                                (let ((_%tl22792319%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e22772312%_)))
                                                      (_%hd22782316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e22772312%_))))
                                                  (if (gx#stx-null?
                                                       _%tl22792319%_)
                                                      (_%__match1851018511%_
                                                       _%e22512347%_
                                                       _%hd22522351%_
                                                       _%tl22532354%_
                                                       _%e22542357%_
                                                       _%hd22552361%_
                                                       _%tl22562364%_
                                                       _%e22772312%_
                                                       _%hd22782316%_
                                                       _%tl22792319%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g22462285%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g22462285%_))))))
                                  (if (gx#stx-pair? _%tl22562364%_)
                                      (let ((_%e22772312%_
                                             (gx#syntax-e _%tl22562364%_)))
                                        (let ((_%tl22792319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e22772312%_)))
                                              (_%hd22782316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e22772312%_))))
                                          (if (gx#stx-null? _%tl22792319%_)
                                              (_%__match1851018511%_
                                               _%e22512347%_
                                               _%hd22522351%_
                                               _%tl22532354%_
                                               _%e22542357%_
                                               _%hd22552361%_
                                               _%tl22562364%_
                                               _%e22772312%_
                                               _%hd22782316%_
                                               _%tl22792319%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g22462285%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g22462285%_))))))
                          (let () (declare (not safe)) (_%g22462285%_)))))
                  (let () (declare (not safe)) (_%g22462285%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_%$stx2441%_)
        (let* ((_%__stx1851318514%_ _%$stx2441%_)
               (_%g24462485%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1851318514%_))))
          (let ((_%__kont1851618517%_
                 (lambda (_%g24482605%_ _%g24492607%_ _%g24502608%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g24502608%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%g24492607%_
                                                 (foldr (lambda (_%g26272630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g26282633%_)
                  (cons _%g26272630%_ _%g26282633%_))
                '()
                _%g24482605%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1852018521%_
                 (lambda (_%g24692522%_ _%g24702524%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g24702524%_ '())
                               (cons _%g24692522%_ '()))))))
            (let* ((_%__match1856818569%_
                    (lambda (_%e24712492%_
                             _%hd24722496%_
                             _%tl24732499%_
                             _%e24742502%_
                             _%hd24752506%_
                             _%tl24762509%_
                             _%e24772512%_
                             _%hd24782516%_
                             _%tl24792519%_)
                      (let ((_%g24692522%_ _%hd24782516%_)
                            (_%g24702524%_ _%hd24752506%_))
                        (if (gx#identifier? _%g24702524%_)
                            (_%__kont1852018521%_ _%g24692522%_ _%g24702524%_)
                            (let () (declare (not safe)) (_%g24462485%_))))))
                   (_%__match1856018561%_
                    (lambda (_%e24712492%_
                             _%hd24722496%_
                             _%tl24732499%_
                             _%e24742502%_
                             _%hd24752506%_
                             _%tl24762509%_)
                      (if (gx#stx-pair? _%tl24762509%_)
                          (let ((_%e24772512%_ (gx#syntax-e _%tl24762509%_)))
                            (let ((_%tl24792519%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e24772512%_)))
                                  (_%hd24782516%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e24772512%_))))
                              (if (gx#stx-null? _%tl24792519%_)
                                  (_%__match1856818569%_
                                   _%e24712492%_
                                   _%hd24722496%_
                                   _%tl24732499%_
                                   _%e24742502%_
                                   _%hd24752506%_
                                   _%tl24762509%_
                                   _%e24772512%_
                                   _%hd24782516%_
                                   _%tl24792519%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g24462485%_)))))
                          (let () (declare (not safe)) (_%g24462485%_)))))
                   (_%__match1854818549%_
                    (lambda (_%e24512547%_
                             _%hd24522551%_
                             _%tl24532554%_
                             _%e24542557%_
                             _%hd24552561%_
                             _%tl24562564%_
                             _%e24572567%_
                             _%hd24582571%_
                             _%tl24592574%_
                             _%__splice1851818519%_
                             _%target24602577%_
                             _%tl24622580%_)
                      (letrec ((_%loop24632583%_
                                (lambda (_%hd24612587%_ _%body24672590%_)
                                  (if (gx#stx-pair? _%hd24612587%_)
                                      (let ((_%e24642592%_
                                             (gx#syntax-e _%hd24612587%_)))
                                        (let ((_%lp-tl24662599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e24642592%_)))
                                              (_%lp-hd24652596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e24642592%_))))
                                          (_%loop24632583%_
                                           _%lp-tl24662599%_
                                           (cons _%lp-hd24652596%_
                                                 _%body24672590%_))))
                                      (let ((_%body24682602%_
                                             (reverse _%body24672590%_)))
                                        (let ((_%g24482605%_ _%body24682602%_)
                                              (_%g24492607%_ _%tl24592574%_)
                                              (_%g24502608%_ _%hd24582571%_))
                                          (if (gx#identifier? _%g24502608%_)
                                              (_%__kont1851618517%_
                                               _%g24482605%_
                                               _%g24492607%_
                                               _%g24502608%_)
                                              (_%__match1856018561%_
                                               _%e24512547%_
                                               _%hd24522551%_
                                               _%tl24532554%_
                                               _%e24542557%_
                                               _%hd24552561%_
                                               _%tl24562564%_))))))))
                        (_%loop24632583%_ _%target24602577%_ '())))))
              (if (gx#stx-pair? _%__stx1851318514%_)
                  (let ((_%e24512547%_ (gx#syntax-e _%__stx1851318514%_)))
                    (let ((_%tl24532554%_
                           (let () (declare (not safe)) (##cdr _%e24512547%_)))
                          (_%hd24522551%_
                           (let ()
                             (declare (not safe))
                             (##car _%e24512547%_))))
                      (if (gx#stx-pair? _%tl24532554%_)
                          (let ((_%e24542557%_ (gx#syntax-e _%tl24532554%_)))
                            (let ((_%tl24562564%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e24542557%_)))
                                  (_%hd24552561%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e24542557%_))))
                              (if (gx#stx-pair? _%hd24552561%_)
                                  (let ((_%e24572567%_
                                         (gx#syntax-e _%hd24552561%_)))
                                    (let ((_%tl24592574%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e24572567%_)))
                                          (_%hd24582571%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e24572567%_))))
                                      (if (gx#stx-pair/null? _%tl24562564%_)
                                          (let ((_%__splice1851818519%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl24562564%_
                                                  '0)))
                                            (let ((_%tl24622580%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1851818519%_
                                                      '1)))
                                                  (_%target24602577%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1851818519%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl24622580%_)
                                                  (_%__match1854818549%_
                                                   _%e24512547%_
                                                   _%hd24522551%_
                                                   _%tl24532554%_
                                                   _%e24542557%_
                                                   _%hd24552561%_
                                                   _%tl24562564%_
                                                   _%e24572567%_
                                                   _%hd24582571%_
                                                   _%tl24592574%_
                                                   _%__splice1851818519%_
                                                   _%target24602577%_
                                                   _%tl24622580%_)
                                                  (if (gx#stx-pair?
                                                       _%tl24562564%_)
                                                      (let ((_%e24772512%_
                                                             (gx#syntax-e
                                                              _%tl24562564%_)))
                                                        (let ((_%tl24792519%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e24772512%_)))
                      (_%hd24782516%_
                       (let () (declare (not safe)) (##car _%e24772512%_))))
                  (if (gx#stx-null? _%tl24792519%_)
                      (_%__match1856818569%_
                       _%e24512547%_
                       _%hd24522551%_
                       _%tl24532554%_
                       _%e24542557%_
                       _%hd24552561%_
                       _%tl24562564%_
                       _%e24772512%_
                       _%hd24782516%_
                       _%tl24792519%_)
                      (let () (declare (not safe)) (_%g24462485%_)))))
              (let () (declare (not safe)) (_%g24462485%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl24562564%_)
                                              (let ((_%e24772512%_
                                                     (gx#syntax-e
                                                      _%tl24562564%_)))
                                                (let ((_%tl24792519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e24772512%_)))
                                                      (_%hd24782516%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e24772512%_))))
                                                  (if (gx#stx-null?
                                                       _%tl24792519%_)
                                                      (_%__match1856818569%_
                                                       _%e24512547%_
                                                       _%hd24522551%_
                                                       _%tl24532554%_
                                                       _%e24542557%_
                                                       _%hd24552561%_
                                                       _%tl24562564%_
                                                       _%e24772512%_
                                                       _%hd24782516%_
                                                       _%tl24792519%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g24462485%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g24462485%_))))))
                                  (if (gx#stx-pair? _%tl24562564%_)
                                      (let ((_%e24772512%_
                                             (gx#syntax-e _%tl24562564%_)))
                                        (let ((_%tl24792519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e24772512%_)))
                                              (_%hd24782516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e24772512%_))))
                                          (if (gx#stx-null? _%tl24792519%_)
                                              (_%__match1856818569%_
                                               _%e24512547%_
                                               _%hd24522551%_
                                               _%tl24532554%_
                                               _%e24542557%_
                                               _%hd24552561%_
                                               _%tl24562564%_
                                               _%e24772512%_
                                               _%hd24782516%_
                                               _%tl24792519%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g24462485%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g24462485%_))))))
                          (let () (declare (not safe)) (_%g24462485%_)))))
                  (let () (declare (not safe)) (_%g24462485%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_%$stx2641%_)
        (let* ((_%__stx1857118572%_ _%$stx2641%_)
               (_%g26462691%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1857118572%_))))
          (let ((_%__kont1857418575%_
                 (lambda (_%g26482845%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g28612864%_ _%g28622867%_)
                                        (cons _%g28612864%_ _%g28622867%_))
                                      '()
                                      _%g26482845%_)))))
                (_%__kont1857818579%_
                 (lambda (_%g26642756%_
                          _%g26652758%_
                          _%g26662759%_
                          _%g26672760%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _%g26662759%_ '())
                               (cons (cons _%g26672760%_
                                           (cons _%g26652758%_
                                                 (foldr (lambda (_%g27812784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g27822787%_)
                  (cons _%g27812784%_ _%g27822787%_))
                '()
                _%g26642756%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1863018631%_
                    (lambda (_%e26682698%_
                             _%hd26692702%_
                             _%tl26702705%_
                             _%e26712708%_
                             _%hd26722712%_
                             _%tl26732715%_
                             _%e26742718%_
                             _%hd26752722%_
                             _%tl26762725%_
                             _%__splice1858018581%_
                             _%target26772728%_
                             _%tl26792731%_)
                      (letrec ((_%loop26802734%_
                                (lambda (_%hd26782738%_ _%body26842741%_)
                                  (if (gx#stx-pair? _%hd26782738%_)
                                      (let ((_%e26812743%_
                                             (gx#syntax-e _%hd26782738%_)))
                                        (let ((_%lp-tl26832750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e26812743%_)))
                                              (_%lp-hd26822747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e26812743%_))))
                                          (_%loop26802734%_
                                           _%lp-tl26832750%_
                                           (cons _%lp-hd26822747%_
                                                 _%body26842741%_))))
                                      (let ((_%body26852753%_
                                             (reverse _%body26842741%_)))
                                        (_%__kont1857818579%_
                                         _%body26852753%_
                                         _%tl26762725%_
                                         _%hd26752722%_
                                         _%hd26692702%_))))))
                        (_%loop26802734%_ _%target26772728%_ '()))))
                   (_%__match1860418605%_
                    (lambda (_%e26492797%_
                             _%hd26502801%_
                             _%tl26512804%_
                             _%e26522807%_
                             _%hd26532811%_
                             _%tl26542814%_
                             _%__splice1857618577%_
                             _%target26552817%_
                             _%tl26572820%_)
                      (letrec ((_%loop26582823%_
                                (lambda (_%hd26562827%_ _%body26622830%_)
                                  (if (gx#stx-pair? _%hd26562827%_)
                                      (let ((_%e26592832%_
                                             (gx#syntax-e _%hd26562827%_)))
                                        (let ((_%lp-tl26612839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e26592832%_)))
                                              (_%lp-hd26602836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e26592832%_))))
                                          (_%loop26582823%_
                                           _%lp-tl26612839%_
                                           (cons _%lp-hd26602836%_
                                                 _%body26622830%_))))
                                      (let ((_%body26632842%_
                                             (reverse _%body26622830%_)))
                                        (_%__kont1857418575%_
                                         _%body26632842%_))))))
                        (_%loop26582823%_ _%target26552817%_ '())))))
              (if (gx#stx-pair? _%__stx1857118572%_)
                  (let ((_%e26492797%_ (gx#syntax-e _%__stx1857118572%_)))
                    (let ((_%tl26512804%_
                           (let () (declare (not safe)) (##cdr _%e26492797%_)))
                          (_%hd26502801%_
                           (let ()
                             (declare (not safe))
                             (##car _%e26492797%_))))
                      (if (gx#stx-pair? _%tl26512804%_)
                          (let ((_%e26522807%_ (gx#syntax-e _%tl26512804%_)))
                            (let ((_%tl26542814%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e26522807%_)))
                                  (_%hd26532811%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e26522807%_))))
                              (if (gx#stx-null? _%hd26532811%_)
                                  (if (gx#stx-pair/null? _%tl26542814%_)
                                      (let ((_%__splice1857618577%_
                                             (gx#syntax-split-splice->vector
                                              _%tl26542814%_
                                              '0)))
                                        (let ((_%tl26572820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1857618577%_
                                                  '1)))
                                              (_%target26552817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1857618577%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl26572820%_)
                                              (_%__match1860418605%_
                                               _%e26492797%_
                                               _%hd26502801%_
                                               _%tl26512804%_
                                               _%e26522807%_
                                               _%hd26532811%_
                                               _%tl26542814%_
                                               _%__splice1857618577%_
                                               _%target26552817%_
                                               _%tl26572820%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g26462691%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g26462691%_)))
                                  (if (gx#stx-pair? _%hd26532811%_)
                                      (let ((_%e26742718%_
                                             (gx#syntax-e _%hd26532811%_)))
                                        (let ((_%tl26762725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e26742718%_)))
                                              (_%hd26752722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e26742718%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl26542814%_)
                                              (let ((_%__splice1858018581%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl26542814%_
                                                      '0)))
                                                (let ((_%tl26792731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1858018581%_
                                                          '1)))
                                                      (_%target26772728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1858018581%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl26792731%_)
                                                      (_%__match1863018631%_
                                                       _%e26492797%_
                                                       _%hd26502801%_
                                                       _%tl26512804%_
                                                       _%e26522807%_
                                                       _%hd26532811%_
                                                       _%tl26542814%_
                                                       _%e26742718%_
                                                       _%hd26752722%_
                                                       _%tl26762725%_
                                                       _%__splice1858018581%_
                                                       _%target26772728%_
                                                       _%tl26792731%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g26462691%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g26462691%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g26462691%_))))))
                          (let () (declare (not safe)) (_%g26462691%_)))))
                  (let () (declare (not safe)) (_%g26462691%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_%$stx2876%_)
        (let* ((_%__stx1863318634%_ _%$stx2876%_)
               (_%g28812945%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1863318634%_))))
          (let ((_%__kont1863618637%_
                 (lambda (_%g28833143%_
                          _%g28843145%_
                          _%g28853146%_
                          _%g28863147%_
                          _%g28873148%_)
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (gx#datum->syntax '#f '@loop)
                               (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'letrec-values)
                                                 (cons (cons (cons (cons _%g28873148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'lambda%)
                                       (cons (foldr (lambda (_%g31733180%_
                                                             _%g31743183%_)
                                                      (cons _%g31733180%_
                                                            _%g31743183%_))
                                                    _%g28843145%_
                                                    _%g28863147%_)
                                             (foldr (lambda (_%g31753186%_
                                                             _%g31763189%_)
                                                      (cons _%g31753186%_
                                                            _%g31763189%_))
                                                    '()
                                                    _%g28833143%_)))
                                 '()))
                     '())
               (cons _%g28873148%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (foldr (lambda (_%g31773192%_
                                                           _%g31783195%_)
                                                    (cons _%g31773192%_
                                                          _%g31783195%_))
                                                  '()
                                                  _%g28853146%_))
                                     '())))))
                (_%__kont1864218643%_
                 (lambda (_%g29233000%_ _%g29243002%_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _%g29243002%_
                                     (foldr (lambda (_%g30193022%_
                                                     _%g30203025%_)
                                              (cons _%g30193022%_
                                                    _%g30203025%_))
                                            '()
                                            _%g29233000%_)))))))
            (let* ((_%__match1869018691%_
                    (lambda (_%e29252952%_
                             _%hd29262956%_
                             _%tl29272959%_
                             _%e29282962%_
                             _%hd29292966%_
                             _%tl29302969%_
                             _%__splice1864418645%_
                             _%target29312972%_
                             _%tl29332975%_)
                      (letrec ((_%loop29342978%_
                                (lambda (_%hd29322982%_ _%body29382985%_)
                                  (if (gx#stx-pair? _%hd29322982%_)
                                      (let ((_%e29352987%_
                                             (gx#syntax-e _%hd29322982%_)))
                                        (let ((_%lp-tl29372994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29352987%_)))
                                              (_%lp-hd29362991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29352987%_))))
                                          (_%loop29342978%_
                                           _%lp-tl29372994%_
                                           (cons _%lp-hd29362991%_
                                                 _%body29382985%_))))
                                      (let ((_%body29392997%_
                                             (reverse _%body29382985%_)))
                                        (_%__kont1864218643%_
                                         _%body29392997%_
                                         _%hd29292966%_))))))
                        (_%loop29342978%_ _%target29312972%_ '()))))
                   (_%__match1868218683%_
                    (lambda (_%e29252952%_
                             _%hd29262956%_
                             _%tl29272959%_
                             _%e29282962%_
                             _%hd29292966%_
                             _%tl29302969%_)
                      (if (gx#stx-pair/null? _%tl29302969%_)
                          (let ((_%__splice1864418645%_
                                 (gx#syntax-split-splice->vector
                                  _%tl29302969%_
                                  '0)))
                            (let ((_%tl29332975%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1864418645%_ '1)))
                                  (_%target29312972%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1864418645%_
                                      '0))))
                              (if (gx#stx-null? _%tl29332975%_)
                                  (_%__match1869018691%_
                                   _%e29252952%_
                                   _%hd29262956%_
                                   _%tl29272959%_
                                   _%e29282962%_
                                   _%hd29292966%_
                                   _%tl29302969%_
                                   _%__splice1864418645%_
                                   _%target29312972%_
                                   _%tl29332975%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g28812945%_)))))
                          (let () (declare (not safe)) (_%g28812945%_)))))
                   (_%__match1867018671%_
                    (lambda (_%e28883035%_
                             _%hd28893039%_
                             _%tl28903042%_
                             _%e28913045%_
                             _%hd28923049%_
                             _%tl28933052%_
                             _%e28943055%_
                             _%hd28953059%_
                             _%tl28963062%_
                             _%__splice1863818639%_
                             _%target28973065%_
                             _%tl28993068%_)
                      (letrec ((_%loop29003071%_
                                (lambda (_%hd28983075%_
                                         _%arg29043078%_
                                         _%var29053079%_)
                                  (if (gx#stx-pair? _%hd28983075%_)
                                      (let ((_%e29013081%_
                                             (gx#syntax-e _%hd28983075%_)))
                                        (let ((_%lp-tl29033088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29013081%_)))
                                              (_%lp-hd29023085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29013081%_))))
                                          (if (gx#stx-pair? _%lp-hd29023085%_)
                                              (let ((_%e29083091%_
                                                     (gx#syntax-e
                                                      _%lp-hd29023085%_)))
                                                (let ((_%tl29103098%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e29083091%_)))
                                                      (_%hd29093095%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e29083091%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl29103098%_)
                                                      (let ((_%e29113101%_
                                                             (gx#syntax-e
                                                              _%tl29103098%_)))
                                                        (let ((_%tl29133108%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e29113101%_)))
                      (_%hd29123105%_
                       (let () (declare (not safe)) (##car _%e29113101%_))))
                  (if (gx#stx-null? _%tl29133108%_)
                      (_%loop29003071%_
                       _%lp-tl29033088%_
                       (cons _%hd29123105%_ _%arg29043078%_)
                       (cons _%hd29093095%_ _%var29053079%_))
                      (_%__match1868218683%_
                       _%e28883035%_
                       _%hd28893039%_
                       _%tl28903042%_
                       _%e28913045%_
                       _%hd28923049%_
                       _%tl28933052%_))))
              (_%__match1868218683%_
               _%e28883035%_
               _%hd28893039%_
               _%tl28903042%_
               _%e28913045%_
               _%hd28923049%_
               _%tl28933052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match1868218683%_
                                               _%e28883035%_
                                               _%hd28893039%_
                                               _%tl28903042%_
                                               _%e28913045%_
                                               _%hd28923049%_
                                               _%tl28933052%_))))
                                      (let ((_%var29073113%_
                                             (reverse _%var29053079%_))
                                            (_%arg29063111%_
                                             (reverse _%arg29043078%_)))
                                        (if (gx#stx-pair/null? _%tl28963062%_)
                                            (let ((_%__splice1864018641%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl28963062%_
                                                    '0)))
                                              (let ((_%tl29163118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1864018641%_
                                                        '1)))
                                                    (_%target29143115%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1864018641%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl29163118%_)
                                                    (letrec ((_%loop29173121%_
                                                              (lambda (_%hd29153125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body29213128%_)
                        (if (gx#stx-pair? _%hd29153125%_)
                            (let ((_%e29183130%_ (gx#syntax-e _%hd29153125%_)))
                              (let ((_%lp-tl29203137%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e29183130%_)))
                                    (_%lp-hd29193134%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e29183130%_))))
                                (_%loop29173121%_
                                 _%lp-tl29203137%_
                                 (cons _%lp-hd29193134%_ _%body29213128%_))))
                            (let ((_%body29223140%_
                                   (reverse _%body29213128%_)))
                              (let ((_%g28833143%_ _%body29223140%_)
                                    (_%g28843145%_ _%tl28993068%_)
                                    (_%g28853146%_ _%arg29063111%_)
                                    (_%g28863147%_ _%var29073113%_)
                                    (_%g28873148%_ _%hd28923049%_))
                                (if (gx#identifier? _%g28873148%_)
                                    (_%__kont1863618637%_
                                     _%g28833143%_
                                     _%g28843145%_
                                     _%g28853146%_
                                     _%g28863147%_
                                     _%g28873148%_)
                                    (_%__match1868218683%_
                                     _%e28883035%_
                                     _%hd28893039%_
                                     _%tl28903042%_
                                     _%e28913045%_
                                     _%hd28923049%_
                                     _%tl28933052%_))))))))
              (_%loop29173121%_ _%target29143115%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match1868218683%_
                                                     _%e28883035%_
                                                     _%hd28893039%_
                                                     _%tl28903042%_
                                                     _%e28913045%_
                                                     _%hd28923049%_
                                                     _%tl28933052%_))))
                                            (_%__match1868218683%_
                                             _%e28883035%_
                                             _%hd28893039%_
                                             _%tl28903042%_
                                             _%e28913045%_
                                             _%hd28923049%_
                                             _%tl28933052%_)))))))
                        (_%loop29003071%_ _%target28973065%_ '() '())))))
              (if (gx#stx-pair? _%__stx1863318634%_)
                  (let ((_%e28883035%_ (gx#syntax-e _%__stx1863318634%_)))
                    (let ((_%tl28903042%_
                           (let () (declare (not safe)) (##cdr _%e28883035%_)))
                          (_%hd28893039%_
                           (let ()
                             (declare (not safe))
                             (##car _%e28883035%_))))
                      (if (gx#stx-pair? _%tl28903042%_)
                          (let ((_%e28913045%_ (gx#syntax-e _%tl28903042%_)))
                            (let ((_%tl28933052%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e28913045%_)))
                                  (_%hd28923049%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e28913045%_))))
                              (if (gx#stx-pair? _%tl28933052%_)
                                  (let ((_%e28943055%_
                                         (gx#syntax-e _%tl28933052%_)))
                                    (let ((_%tl28963062%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e28943055%_)))
                                          (_%hd28953059%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e28943055%_))))
                                      (if (gx#stx-pair/null? _%hd28953059%_)
                                          (let ((_%__splice1863818639%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd28953059%_
                                                  '0)))
                                            (let ((_%tl28993068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1863818639%_
                                                      '1)))
                                                  (_%target28973065%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1863818639%_
                                                      '0))))
                                              (_%__match1867018671%_
                                               _%e28883035%_
                                               _%hd28893039%_
                                               _%tl28903042%_
                                               _%e28913045%_
                                               _%hd28923049%_
                                               _%tl28933052%_
                                               _%e28943055%_
                                               _%hd28953059%_
                                               _%tl28963062%_
                                               _%__splice1863818639%_
                                               _%target28973065%_
                                               _%tl28993068%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl28933052%_)
                                              (let ((_%__splice1864418645%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl28933052%_
                                                      '0)))
                                                (let ((_%tl29332975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1864418645%_
                                                          '1)))
                                                      (_%target29312972%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1864418645%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl29332975%_)
                                                      (_%__match1869018691%_
                                                       _%e28883035%_
                                                       _%hd28893039%_
                                                       _%tl28903042%_
                                                       _%e28913045%_
                                                       _%hd28923049%_
                                                       _%tl28933052%_
                                                       _%__splice1864418645%_
                                                       _%target29312972%_
                                                       _%tl29332975%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g28812945%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g28812945%_))))))
                                  (if (gx#stx-pair/null? _%tl28933052%_)
                                      (let ((_%__splice1864418645%_
                                             (gx#syntax-split-splice->vector
                                              _%tl28933052%_
                                              '0)))
                                        (let ((_%tl29332975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1864418645%_
                                                  '1)))
                                              (_%target29312972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1864418645%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl29332975%_)
                                              (_%__match1869018691%_
                                               _%e28883035%_
                                               _%hd28893039%_
                                               _%tl28903042%_
                                               _%e28913045%_
                                               _%hd28923049%_
                                               _%tl28933052%_
                                               _%__splice1864418645%_
                                               _%target29312972%_
                                               _%tl29332975%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g28812945%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g28812945%_))))))
                          (let () (declare (not safe)) (_%g28812945%_)))))
                  (let () (declare (not safe)) (_%g28812945%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_%$stx3205%_)
        (let* ((_%g32093233%_
                (lambda (_%g32103229%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g32103229%_)))
               (_%g32083316%_
                (lambda (_%g32103237%_)
                  (if (gx#stx-pair? _%g32103237%_)
                      (let ((_%e32133240%_ (gx#syntax-e _%g32103237%_)))
                        (let ((_%hd32143244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e32133240%_)))
                              (_%tl32153247%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e32133240%_))))
                          (if (gx#stx-pair? _%tl32153247%_)
                              (let ((_%e32163250%_
                                     (gx#syntax-e _%tl32153247%_)))
                                (let ((_%hd32173254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e32163250%_)))
                                      (_%tl32183257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e32163250%_))))
                                  (if (gx#stx-pair/null? _%tl32183257%_)
                                      (let ((_g20914_
                                             (gx#syntax-split-splice
                                              _%tl32183257%_
                                              '0)))
                                        (begin
                                          (let ((_g20915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20914_)
                                                       (##values-length
                                                        _g20914_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20915_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20915_)))
                                          (let ((_%target32193260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20914_ 0)))
                                                (_%tl32213263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20914_ 1))))
                                            (if (gx#stx-null? _%tl32213263%_)
                                                (letrec ((_%loop32223266%_
                                                          (lambda (_%hd32203270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body32263273%_)
                    (if (gx#stx-pair? _%hd32203270%_)
                        (let ((_%e32233275%_ (gx#syntax-e _%hd32203270%_)))
                          (let ((_%lp-hd32243279%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e32233275%_)))
                                (_%lp-tl32253282%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e32233275%_))))
                            (_%loop32223266%_
                             _%lp-tl32253282%_
                             (cons _%lp-hd32243279%_ _%body32263273%_))))
                        (let ((_%body32273285%_ (reverse _%body32263273%_)))
                          ((lambda (_%g32113288%_ _%g32123290%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _%g32123290%_
                                               (foldr (lambda (_%g33073310%_
                                                               _%g33083313%_)
                                                        (cons _%g33073310%_
                                                              _%g33083313%_))
                                                      '()
                                                      _%g32113288%_)))))
                           _%body32273285%_
                           _%hd32173254%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop32223266%_
                                                   _%target32193260%_
                                                   '()))
                                                (_%g32093233%_
                                                 _%g32103237%_)))))
                                      (_%g32093233%_ _%g32103237%_))))
                              (_%g32093233%_ _%g32103237%_))))
                      (_%g32093233%_ _%g32103237%_)))))
          (_%g32083316%_ _%$stx3205%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_%$stx3321%_)
        (let* ((_%g33253349%_
                (lambda (_%g33263345%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g33263345%_)))
               (_%g33243432%_
                (lambda (_%g33263353%_)
                  (if (gx#stx-pair? _%g33263353%_)
                      (let ((_%e33293356%_ (gx#syntax-e _%g33263353%_)))
                        (let ((_%hd33303360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e33293356%_)))
                              (_%tl33313363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e33293356%_))))
                          (if (gx#stx-pair? _%tl33313363%_)
                              (let ((_%e33323366%_
                                     (gx#syntax-e _%tl33313363%_)))
                                (let ((_%hd33333370%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e33323366%_)))
                                      (_%tl33343373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e33323366%_))))
                                  (if (gx#stx-pair/null? _%tl33343373%_)
                                      (let ((_g20916_
                                             (gx#syntax-split-splice
                                              _%tl33343373%_
                                              '0)))
                                        (begin
                                          (let ((_g20917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20916_)
                                                       (##values-length
                                                        _g20916_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20917_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20917_)))
                                          (let ((_%target33353376%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20916_ 0)))
                                                (_%tl33373379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20916_ 1))))
                                            (if (gx#stx-null? _%tl33373379%_)
                                                (letrec ((_%loop33383382%_
                                                          (lambda (_%hd33363386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body33423389%_)
                    (if (gx#stx-pair? _%hd33363386%_)
                        (let ((_%e33393391%_ (gx#syntax-e _%hd33363386%_)))
                          (let ((_%lp-hd33403395%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e33393391%_)))
                                (_%lp-tl33413398%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e33393391%_))))
                            (_%loop33383382%_
                             _%lp-tl33413398%_
                             (cons _%lp-hd33403395%_ _%body33423389%_))))
                        (let ((_%body33433401%_ (reverse _%body33423389%_)))
                          ((lambda (_%g33273404%_ _%g33283406%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _%g33283406%_
                                               (foldr (lambda (_%g34233426%_
                                                               _%g34243429%_)
                                                        (cons _%g34233426%_
                                                              _%g34243429%_))
                                                      '()
                                                      _%g33273404%_)))))
                           _%body33433401%_
                           _%hd33333370%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop33383382%_
                                                   _%target33353376%_
                                                   '()))
                                                (_%g33253349%_
                                                 _%g33263353%_)))))
                                      (_%g33253349%_ _%g33263353%_))))
                              (_%g33253349%_ _%g33263353%_))))
                      (_%g33253349%_ _%g33263353%_)))))
          (_%g33243432%_ _%$stx3321%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_%$stx3437%_)
        (let* ((_%g34413465%_
                (lambda (_%g34423461%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g34423461%_)))
               (_%g34403548%_
                (lambda (_%g34423469%_)
                  (if (gx#stx-pair? _%g34423469%_)
                      (let ((_%e34453472%_ (gx#syntax-e _%g34423469%_)))
                        (let ((_%hd34463476%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e34453472%_)))
                              (_%tl34473479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e34453472%_))))
                          (if (gx#stx-pair? _%tl34473479%_)
                              (let ((_%e34483482%_
                                     (gx#syntax-e _%tl34473479%_)))
                                (let ((_%hd34493486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e34483482%_)))
                                      (_%tl34503489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e34483482%_))))
                                  (if (gx#stx-pair/null? _%tl34503489%_)
                                      (let ((_g20918_
                                             (gx#syntax-split-splice
                                              _%tl34503489%_
                                              '0)))
                                        (begin
                                          (let ((_g20919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20918_)
                                                       (##values-length
                                                        _g20918_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20919_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20919_)))
                                          (let ((_%target34513492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20918_ 0)))
                                                (_%tl34533495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20918_ 1))))
                                            (if (gx#stx-null? _%tl34533495%_)
                                                (letrec ((_%loop34543498%_
                                                          (lambda (_%hd34523502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body34583505%_)
                    (if (gx#stx-pair? _%hd34523502%_)
                        (let ((_%e34553507%_ (gx#syntax-e _%hd34523502%_)))
                          (let ((_%lp-hd34563511%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e34553507%_)))
                                (_%lp-tl34573514%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e34553507%_))))
                            (_%loop34543498%_
                             _%lp-tl34573514%_
                             (cons _%lp-hd34563511%_ _%body34583505%_))))
                        (let ((_%body34593517%_ (reverse _%body34583505%_)))
                          ((lambda (_%g34433520%_ _%g34443522%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _%g34443522%_
                                               (foldr (lambda (_%g35393542%_
                                                               _%g35403545%_)
                                                        (cons _%g35393542%_
                                                              _%g35403545%_))
                                                      '()
                                                      _%g34433520%_)))))
                           _%body34593517%_
                           _%hd34493486%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop34543498%_
                                                   _%target34513492%_
                                                   '()))
                                                (_%g34413465%_
                                                 _%g34423469%_)))))
                                      (_%g34413465%_ _%g34423469%_))))
                              (_%g34413465%_ _%g34423469%_))))
                      (_%g34413465%_ _%g34423469%_)))))
          (_%g34403548%_ _%$stx3437%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_%stx3553%_)
        (letrec ((_%let-head?3556%_
                  (lambda (_%x4028%_)
                    (let* ((_%__stx1869318694%_ _%x4028%_)
                           (_%g40324043%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1869318694%_))))
                      (let ((_%__kont1869618697%_
                             (lambda (_%g40344071%_)
                               (gx#stx-andmap gx#identifier? _%g40344071%_)))
                            (_%__kont1869818699%_
                             (lambda () (gx#identifier? _%x4028%_))))
                        (if (gx#stx-pair? _%__stx1869318694%_)
                            (let ((_%e40354061%_
                                   (gx#syntax-e _%__stx1869318694%_)))
                              (let ((_%tl40374068%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40354061%_)))
                                    (_%hd40364065%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40354061%_))))
                                (if (gx#identifier? _%hd40364065%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20920_|
                                         _%hd40364065%_)
                                        (_%__kont1869618697%_ _%tl40374068%_)
                                        (_%__kont1869818699%_))
                                    (_%__kont1869818699%_))))
                            (_%__kont1869818699%_))))))
                 (_%let-head3558%_
                  (lambda (_%x3968%_)
                    (let* ((_%__stx1871318714%_ _%x3968%_)
                           (_%g39723983%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1871318714%_))))
                      (let ((_%__kont1871618717%_
                             (lambda (_%g39744011%_) _%g39744011%_))
                            (_%__kont1871818719%_
                             (lambda () (list _%x3968%_))))
                        (if (gx#stx-pair? _%__stx1871318714%_)
                            (let ((_%e39754001%_
                                   (gx#syntax-e _%__stx1871318714%_)))
                              (let ((_%tl39774008%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e39754001%_)))
                                    (_%hd39764005%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e39754001%_))))
                                (if (gx#identifier? _%hd39764005%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20921_|
                                         _%hd39764005%_)
                                        (_%__kont1871618717%_ _%tl39774008%_)
                                        (_%__kont1871818719%_))
                                    (_%__kont1871818719%_))))
                            (_%__kont1871818719%_)))))))
          (let* ((_%__stx1873318734%_ _%stx3553%_)
                 (_%g35613627%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1873318734%_))))
            (let ((_%__kont1873618737%_
                   (lambda (_%g35633937%_
                            _%g35643939%_
                            _%g35653940%_
                            _%g35663941%_
                            _%g35673942%_)
                     (cons _%g35673942%_
                           (cons _%g35663941%_
                                 (cons (cons (cons _%g35653940%_
                                                   (cons _%g35643939%_ '()))
                                             '())
                                       _%g35633937%_)))))
                  (_%__kont1873818739%_
                   (lambda (_%g35833742%_
                            _%g35843744%_
                            _%g35853745%_
                            _%g35863746%_)
                     (let* ((_%g37813798%_
                             (lambda (_%g37823794%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g37823794%_)))
                            (_%g37803868%_
                             (lambda (_%g37823802%_)
                               (if (gx#stx-pair/null? _%g37823802%_)
                                   (let ((_g20922_
                                          (gx#syntax-split-splice
                                           _%g37823802%_
                                           '0)))
                                     (begin
                                       (let ((_g20923_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20922_)
                                                    (##values-length _g20922_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20923_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20923_)))
                                       (let ((_%target37843805%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20922_ 0)))
                                             (_%tl37863808%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20922_ 1))))
                                         (if (gx#stx-null? _%tl37863808%_)
                                             (letrec ((_%loop37873811%_
                                                       (lambda (_%hd37853815%_
                                                                _%hd-bind37913818%_)
                                                         (if (gx#stx-pair?
                                                              _%hd37853815%_)
                                                             (let ((_%e37883820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd37853815%_)))
                       (let ((_%lp-hd37893824%_
                              (let ()
                                (declare (not safe))
                                (##car _%e37883820%_)))
                             (_%lp-tl37903827%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e37883820%_))))
                         (_%loop37873811%_
                          _%lp-tl37903827%_
                          (cons _%lp-hd37893824%_ _%hd-bind37913818%_))))
                     (let ((_%hd-bind37923830%_ (reverse _%hd-bind37913818%_)))
                       ((lambda (_%g37833833%_)
                          (cons _%g35863746%_
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _%g35843744%_
                                         _%g37833833%_)
                                        (foldr (lambda (_%g38483854%_
                                                        _%g38493857%_
                                                        _%g38503859%_)
                                                 (cons (cons _%g38493857%_
                                                             (cons _%g38483854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%g38503859%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%g35843744%_
                                               _%g37833833%_))
                                      (foldr (lambda (_%g38513862%_
                                                      _%g38523865%_)
                                               (cons _%g38513862%_
                                                     _%g38523865%_))
                                             '()
                                             _%g35833742%_))))
                        _%hd-bind37923830%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop37873811%_
                                                _%target37843805%_
                                                '()))
                                             (_%g37813798%_ _%g37823802%_)))))
                                   (_%g37813798%_ _%g37823802%_)))))
                       (_%g37803868%_
                        (gx#stx-map
                         _%let-head3558%_
                         (foldr (lambda (_%g38713874%_ _%g38723877%_)
                                  (cons _%g38713874%_ _%g38723877%_))
                                '()
                                _%g35853745%_)))))))
              (let* ((_%__match1880218803%_
                      (lambda (_%e35873634%_
                               _%hd35883638%_
                               _%tl35893641%_
                               _%e35903644%_
                               _%hd35913648%_
                               _%tl35923651%_
                               _%e35933654%_
                               _%hd35943658%_
                               _%tl35953661%_
                               _%__splice1874018741%_
                               _%target35963664%_
                               _%tl35983667%_)
                        (letrec ((_%loop35993670%_
                                  (lambda (_%hd35973674%_
                                           _%e36033677%_
                                           _%hd36043678%_)
                                    (if (gx#stx-pair? _%hd35973674%_)
                                        (let ((_%e36003680%_
                                               (gx#syntax-e _%hd35973674%_)))
                                          (let ((_%lp-tl36023687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e36003680%_)))
                                                (_%lp-hd36013684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e36003680%_))))
                                            (if (gx#stx-pair?
                                                 _%lp-hd36013684%_)
                                                (let ((_%e36073690%_
                                                       (gx#syntax-e
                                                        _%lp-hd36013684%_)))
                                                  (let ((_%tl36093697%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e36073690%_)))
                                                        (_%hd36083694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e36073690%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl36093697%_)
                                                        (let ((_%e36103700%_
                                                               (gx#syntax-e
                                                                _%tl36093697%_)))
                                                          (let ((_%tl36123707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e36103700%_)))
                        (_%hd36113704%_
                         (let () (declare (not safe)) (##car _%e36103700%_))))
                    (if (gx#stx-null? _%tl36123707%_)
                        (_%loop35993670%_
                         _%lp-tl36023687%_
                         (cons _%hd36113704%_ _%e36033677%_)
                         (cons _%hd36083694%_ _%hd36043678%_))
                        (let () (declare (not safe)) (_%g35613627%_)))))
                (let () (declare (not safe)) (_%g35613627%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g35613627%_)))))
                                        (let ((_%hd36063712%_
                                               (reverse _%hd36043678%_))
                                              (_%e36053710%_
                                               (reverse _%e36033677%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl35953661%_)
                                              (let ((_%__splice1874218743%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl35953661%_
                                                      '0)))
                                                (let ((_%tl36153717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1874218743%_
                                                          '1)))
                                                      (_%target36133714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1874218743%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl36153717%_)
                                                      (letrec ((_%loop36163720%_
                                                                (lambda (_%hd36143724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body36203727%_)
                          (if (gx#stx-pair? _%hd36143724%_)
                              (let ((_%e36173729%_
                                     (gx#syntax-e _%hd36143724%_)))
                                (let ((_%lp-tl36193736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e36173729%_)))
                                      (_%lp-hd36183733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e36173729%_))))
                                  (_%loop36163720%_
                                   _%lp-tl36193736%_
                                   (cons _%lp-hd36183733%_ _%body36203727%_))))
                              (let ((_%body36213739%_
                                     (reverse _%body36203727%_)))
                                (let ((_%g35833742%_ _%body36213739%_)
                                      (_%g35843744%_ _%e36053710%_)
                                      (_%g35853745%_ _%hd36063712%_)
                                      (_%g35863746%_ _%hd35913648%_))
                                  (if (gx#stx-andmap
                                       _%let-head?3556%_
                                       (foldr (lambda (_%g37723775%_
                                                       _%g37733778%_)
                                                (cons _%g37723775%_
                                                      _%g37733778%_))
                                              '()
                                              _%g35853745%_))
                                      (_%__kont1873818739%_
                                       _%g35833742%_
                                       _%g35843744%_
                                       _%g35853745%_
                                       _%g35863746%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g35613627%_)))))))))
                (_%loop36163720%_ _%target36133714%_ '()))
              (let () (declare (not safe)) (_%g35613627%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g35613627%_))))))))
                          (_%loop35993670%_ _%target35963664%_ '() '()))))
                     (_%__match1877618777%_
                      (lambda (_%e35683887%_
                               _%hd35693891%_
                               _%tl35703894%_
                               _%e35713897%_
                               _%hd35723901%_
                               _%tl35733904%_
                               _%e35743907%_
                               _%hd35753911%_
                               _%tl35763914%_
                               _%e35773917%_
                               _%hd35783921%_
                               _%tl35793924%_
                               _%e35803927%_
                               _%hd35813931%_
                               _%tl35823934%_)
                        (let ((_%g35633937%_ _%tl35763914%_)
                              (_%g35643939%_ _%hd35813931%_)
                              (_%g35653940%_ _%hd35783921%_)
                              (_%g35663941%_ _%hd35723901%_)
                              (_%g35673942%_ _%hd35693891%_))
                          (if (_%let-head?3556%_ _%g35653940%_)
                              (_%__kont1873618737%_
                               _%g35633937%_
                               _%g35643939%_
                               _%g35653940%_
                               _%g35663941%_
                               _%g35673942%_)
                              (if (gx#stx-pair/null? _%hd35753911%_)
                                  (let ((_%__splice1874018741%_
                                         (gx#syntax-split-splice->vector
                                          _%hd35753911%_
                                          '0)))
                                    (let ((_%tl35983667%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1874018741%_
                                              '1)))
                                          (_%target35963664%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1874018741%_
                                              '0))))
                                      (if (gx#stx-null? _%tl35983667%_)
                                          (_%__match1880218803%_
                                           _%e35683887%_
                                           _%hd35693891%_
                                           _%tl35703894%_
                                           _%e35713897%_
                                           _%hd35723901%_
                                           _%tl35733904%_
                                           _%e35743907%_
                                           _%hd35753911%_
                                           _%tl35763914%_
                                           _%__splice1874018741%_
                                           _%target35963664%_
                                           _%tl35983667%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g35613627%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g35613627%_))))))))
                (if (gx#stx-pair? _%__stx1873318734%_)
                    (let ((_%e35683887%_ (gx#syntax-e _%__stx1873318734%_)))
                      (let ((_%tl35703894%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e35683887%_)))
                            (_%hd35693891%_
                             (let ()
                               (declare (not safe))
                               (##car _%e35683887%_))))
                        (if (gx#stx-pair? _%tl35703894%_)
                            (let ((_%e35713897%_ (gx#syntax-e _%tl35703894%_)))
                              (let ((_%tl35733904%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e35713897%_)))
                                    (_%hd35723901%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e35713897%_))))
                                (if (gx#stx-pair? _%tl35733904%_)
                                    (let ((_%e35743907%_
                                           (gx#syntax-e _%tl35733904%_)))
                                      (let ((_%tl35763914%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e35743907%_)))
                                            (_%hd35753911%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e35743907%_))))
                                        (if (gx#stx-pair? _%hd35753911%_)
                                            (let ((_%e35773917%_
                                                   (gx#syntax-e
                                                    _%hd35753911%_)))
                                              (let ((_%tl35793924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e35773917%_)))
                                                    (_%hd35783921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e35773917%_))))
                                                (if (gx#stx-pair?
                                                     _%tl35793924%_)
                                                    (let ((_%e35803927%_
                                                           (gx#syntax-e
                                                            _%tl35793924%_)))
                                                      (let ((_%tl35823934%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e35803927%_)))
                    (_%hd35813931%_
                     (let () (declare (not safe)) (##car _%e35803927%_))))
                (if (gx#stx-null? _%tl35823934%_)
                    (_%__match1877618777%_
                     _%e35683887%_
                     _%hd35693891%_
                     _%tl35703894%_
                     _%e35713897%_
                     _%hd35723901%_
                     _%tl35733904%_
                     _%e35743907%_
                     _%hd35753911%_
                     _%tl35763914%_
                     _%e35773917%_
                     _%hd35783921%_
                     _%tl35793924%_
                     _%e35803927%_
                     _%hd35813931%_
                     _%tl35823934%_)
                    (if (gx#stx-pair/null? _%hd35753911%_)
                        (let ((_%__splice1874018741%_
                               (gx#syntax-split-splice->vector
                                _%hd35753911%_
                                '0)))
                          (let ((_%tl35983667%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1874018741%_ '1)))
                                (_%target35963664%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1874018741%_ '0))))
                            (if (gx#stx-null? _%tl35983667%_)
                                (_%__match1880218803%_
                                 _%e35683887%_
                                 _%hd35693891%_
                                 _%tl35703894%_
                                 _%e35713897%_
                                 _%hd35723901%_
                                 _%tl35733904%_
                                 _%e35743907%_
                                 _%hd35753911%_
                                 _%tl35763914%_
                                 _%__splice1874018741%_
                                 _%target35963664%_
                                 _%tl35983667%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g35613627%_)))))
                        (let () (declare (not safe)) (_%g35613627%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%hd35753911%_)
                                                        (let ((_%__splice1874018741%_
                                                               (gx#syntax-split-splice->vector
                                                                _%hd35753911%_
                                                                '0)))
                                                          (let ((_%tl35983667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1874018741%_ '1)))
                        (_%target35963664%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1874018741%_ '0))))
                    (if (gx#stx-null? _%tl35983667%_)
                        (_%__match1880218803%_
                         _%e35683887%_
                         _%hd35693891%_
                         _%tl35703894%_
                         _%e35713897%_
                         _%hd35723901%_
                         _%tl35733904%_
                         _%e35743907%_
                         _%hd35753911%_
                         _%tl35763914%_
                         _%__splice1874018741%_
                         _%target35963664%_
                         _%tl35983667%_)
                        (let () (declare (not safe)) (_%g35613627%_)))))
                (let () (declare (not safe)) (_%g35613627%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%hd35753911%_)
                                                (let ((_%__splice1874018741%_
                                                       (gx#syntax-split-splice->vector
                                                        _%hd35753911%_
                                                        '0)))
                                                  (let ((_%tl35983667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1874018741%_
                                                            '1)))
                                                        (_%target35963664%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1874018741%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl35983667%_)
                                                        (_%__match1880218803%_
                                                         _%e35683887%_
                                                         _%hd35693891%_
                                                         _%tl35703894%_
                                                         _%e35713897%_
                                                         _%hd35723901%_
                                                         _%tl35733904%_
                                                         _%e35743907%_
                                                         _%hd35753911%_
                                                         _%tl35763914%_
                                                         _%__splice1874018741%_
                                                         _%target35963664%_
                                                         _%tl35983667%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g35613627%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g35613627%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g35613627%_)))))
                            (let () (declare (not safe)) (_%g35613627%_)))))
                    (let () (declare (not safe)) (_%g35613627%_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_%$stx4091%_)
        (let* ((_%__stx1880518806%_ _%$stx4091%_)
               (_%g40974123%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1880518806%_))))
          (let ((_%__kont1880818809%_ (lambda () '#t))
                (_%__kont1881018811%_ (lambda (_%g41024195%_) _%g41024195%_))
                (_%__kont1881218813%_
                 (lambda (_%g41094150%_ _%g41104152%_ _%g41114153%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%g41104152%_
                               (cons (cons _%g41114153%_ _%g41094150%_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? _%__stx1880518806%_)
                (let ((_%e40994215%_ (gx#syntax-e _%__stx1880518806%_)))
                  (let ((_%tl41014222%_
                         (let () (declare (not safe)) (##cdr _%e40994215%_)))
                        (_%hd41004219%_
                         (let () (declare (not safe)) (##car _%e40994215%_))))
                    (if (gx#stx-null? _%tl41014222%_)
                        (_%__kont1880818809%_)
                        (if (gx#stx-pair? _%tl41014222%_)
                            (let ((_%e41064185%_ (gx#syntax-e _%tl41014222%_)))
                              (let ((_%tl41084192%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e41064185%_)))
                                    (_%hd41074189%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e41064185%_))))
                                (if (gx#stx-null? _%tl41084192%_)
                                    (_%__kont1881018811%_ _%hd41074189%_)
                                    (_%__kont1881218813%_
                                     _%tl41084192%_
                                     _%hd41074189%_
                                     _%hd41004219%_))))
                            (let () (declare (not safe)) (_%g40974123%_))))))
                (let () (declare (not safe)) (_%g40974123%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_%$stx4233%_)
        (let* ((_%__stx1885118852%_ _%$stx4233%_)
               (_%g42394265%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1885118852%_))))
          (let ((_%__kont1885418855%_ (lambda () '#f))
                (_%__kont1885618857%_ (lambda (_%g42444337%_) _%g42444337%_))
                (_%__kont1885818859%_
                 (lambda (_%g42514292%_ _%g42524294%_ _%g42534295%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g42524294%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%g42534295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g42514292%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? _%__stx1885118852%_)
                (let ((_%e42414357%_ (gx#syntax-e _%__stx1885118852%_)))
                  (let ((_%tl42434364%_
                         (let () (declare (not safe)) (##cdr _%e42414357%_)))
                        (_%hd42424361%_
                         (let () (declare (not safe)) (##car _%e42414357%_))))
                    (if (gx#stx-null? _%tl42434364%_)
                        (_%__kont1885418855%_)
                        (if (gx#stx-pair? _%tl42434364%_)
                            (let ((_%e42484327%_ (gx#syntax-e _%tl42434364%_)))
                              (let ((_%tl42504334%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e42484327%_)))
                                    (_%hd42494331%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e42484327%_))))
                                (if (gx#stx-null? _%tl42504334%_)
                                    (_%__kont1885618857%_ _%hd42494331%_)
                                    (_%__kont1885818859%_
                                     _%tl42504334%_
                                     _%hd42494331%_
                                     _%hd42424361%_))))
                            (let () (declare (not safe)) (_%g42394265%_))))))
                (let () (declare (not safe)) (_%g42394265%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_%$stx4375%_)
        (let* ((_%__stx1889718898%_ _%$stx4375%_)
               (_%g43844475%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1889718898%_))))
          (let ((_%__kont1890018901%_ (lambda () '#!void))
                (_%__kont1890218903%_
                 (lambda (_%g43894818%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g48374840%_ _%g48384843%_)
                                        (cons _%g48374840%_ _%g48384843%_))
                                      '()
                                      _%g43894818%_)))))
                (_%__kont1890618907%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"bad syntax; misplaced else" '()))))
                (_%__kont1890818909%_
                 (lambda (_%g44174693%_ _%g44184695%_ _%g44194696%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g44184695%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%g44194696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g44174693%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1891018911%_
                 (lambda (_%g44294631%_
                          _%g44304633%_
                          _%g44314634%_
                          _%g44324635%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g44314634%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _%g44304633%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _%g44324635%_ _%g44294631%_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1891218913%_
                 (lambda (_%g44484540%_
                          _%g44494542%_
                          _%g44504543%_
                          _%g44514544%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%g44504543%_
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (foldr (lambda (_%g45654568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g45664571%_)
                  (cons _%g45654568%_ _%g45664571%_))
                '()
                _%g44494542%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g44514544%_ _%g44484540%_)
                                           '())))))))
            (let* ((_%__match1905819059%_
                    (lambda (_%e44524482%_
                             _%hd44534486%_
                             _%tl44544489%_
                             _%e44554492%_
                             _%hd44564496%_
                             _%tl44574499%_
                             _%e44584502%_
                             _%hd44594506%_
                             _%tl44604509%_
                             _%__splice1891418915%_
                             _%target44614512%_
                             _%tl44634515%_)
                      (letrec ((_%loop44644518%_
                                (lambda (_%hd44624522%_ _%body44684525%_)
                                  (if (gx#stx-pair? _%hd44624522%_)
                                      (let ((_%e44654527%_
                                             (gx#syntax-e _%hd44624522%_)))
                                        (let ((_%lp-tl44674534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44654527%_)))
                                              (_%lp-hd44664531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44654527%_))))
                                          (_%loop44644518%_
                                           _%lp-tl44674534%_
                                           (cons _%lp-hd44664531%_
                                                 _%body44684525%_))))
                                      (let ((_%body44694537%_
                                             (reverse _%body44684525%_)))
                                        (_%__kont1891218913%_
                                         _%tl44574499%_
                                         _%body44694537%_
                                         _%hd44594506%_
                                         _%hd44534486%_))))))
                        (_%loop44644518%_ _%target44614512%_ '()))))
                   (_%__match1895418955%_
                    (lambda (_%e43904760%_
                             _%hd43914764%_
                             _%tl43924767%_
                             _%e43934770%_
                             _%hd43944774%_
                             _%tl43954777%_
                             _%e43964780%_
                             _%hd43974784%_
                             _%tl43984787%_
                             _%__splice1890418905%_
                             _%target43994790%_
                             _%tl44014793%_)
                      (letrec ((_%loop44024796%_
                                (lambda (_%hd44004800%_ _%body44064803%_)
                                  (if (gx#stx-pair? _%hd44004800%_)
                                      (let ((_%e44034805%_
                                             (gx#syntax-e _%hd44004800%_)))
                                        (let ((_%lp-tl44054812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44034805%_)))
                                              (_%lp-hd44044809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44034805%_))))
                                          (_%loop44024796%_
                                           _%lp-tl44054812%_
                                           (cons _%lp-hd44044809%_
                                                 _%body44064803%_))))
                                      (let ((_%body44074815%_
                                             (reverse _%body44064803%_)))
                                        (if (gx#stx-null? _%tl43954777%_)
                                            (_%__kont1890218903%_
                                             _%body44074815%_)
                                            (_%__kont1890618907%_)))))))
                        (_%loop44024796%_ _%target43994790%_ '())))))
              (if (gx#stx-pair? _%__stx1889718898%_)
                  (let ((_%e43864853%_ (gx#syntax-e _%__stx1889718898%_)))
                    (let ((_%tl43884860%_
                           (let () (declare (not safe)) (##cdr _%e43864853%_)))
                          (_%hd43874857%_
                           (let ()
                             (declare (not safe))
                             (##car _%e43864853%_))))
                      (if (gx#stx-null? _%tl43884860%_)
                          (_%__kont1890018901%_)
                          (if (gx#stx-pair? _%tl43884860%_)
                              (let ((_%e43934770%_
                                     (gx#syntax-e _%tl43884860%_)))
                                (let ((_%tl43954777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e43934770%_)))
                                      (_%hd43944774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e43934770%_))))
                                  (if (gx#stx-pair? _%hd43944774%_)
                                      (let ((_%e43964780%_
                                             (gx#syntax-e _%hd43944774%_)))
                                        (let ((_%tl43984787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e43964780%_)))
                                              (_%hd43974784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e43964780%_))))
                                          (if (gx#identifier? _%hd43974784%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g20924_|
                                                   _%hd43974784%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl43984787%_)
                                                      (let ((_%__splice1890418905%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl43984787%_
                                                              '0)))
                                                        (let ((_%tl44014793%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1890418905%_ '1)))
                      (_%target43994790%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1890418905%_ '0))))
                  (if (gx#stx-null? _%tl44014793%_)
                      (_%__match1895418955%_
                       _%e43864853%_
                       _%hd43874857%_
                       _%tl43884860%_
                       _%e43934770%_
                       _%hd43944774%_
                       _%tl43954777%_
                       _%e43964780%_
                       _%hd43974784%_
                       _%tl43984787%_
                       _%__splice1890418905%_
                       _%target43994790%_
                       _%tl44014793%_)
                      (_%__kont1890618907%_))))
              (_%__kont1890618907%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl43984787%_)
                                                      (_%__kont1890818909%_
                                                       _%tl43954777%_
                                                       _%hd43974784%_
                                                       _%hd43874857%_)
                                                      (if (gx#stx-pair?
                                                           _%tl43984787%_)
                                                          (let ((_%e44424611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl43984787%_)))
                    (let ((_%tl44444618%_
                           (let () (declare (not safe)) (##cdr _%e44424611%_)))
                          (_%hd44434615%_
                           (let ()
                             (declare (not safe))
                             (##car _%e44424611%_))))
                      (if (gx#identifier? _%hd44434615%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g20925_|
                               _%hd44434615%_)
                              (if (gx#stx-pair? _%tl44444618%_)
                                  (let ((_%e44454621%_
                                         (gx#syntax-e _%tl44444618%_)))
                                    (let ((_%tl44474628%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e44454621%_)))
                                          (_%hd44464625%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e44454621%_))))
                                      (if (gx#stx-null? _%tl44474628%_)
                                          (_%__kont1891018911%_
                                           _%tl43954777%_
                                           _%hd44464625%_
                                           _%hd43974784%_
                                           _%hd43874857%_)
                                          (if (gx#stx-pair/null?
                                               _%tl43984787%_)
                                              (let ((_%__splice1891418915%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl43984787%_
                                                      '0)))
                                                (let ((_%tl44634515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1891418915%_
                                                          '1)))
                                                      (_%target44614512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1891418915%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl44634515%_)
                                                      (_%__match1905819059%_
                                                       _%e43864853%_
                                                       _%hd43874857%_
                                                       _%tl43884860%_
                                                       _%e43934770%_
                                                       _%hd43944774%_
                                                       _%tl43954777%_
                                                       _%e43964780%_
                                                       _%hd43974784%_
                                                       _%tl43984787%_
                                                       _%__splice1891418915%_
                                                       _%target44614512%_
                                                       _%tl44634515%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g43844475%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g43844475%_))))))
                                  (if (gx#stx-pair/null? _%tl43984787%_)
                                      (let ((_%__splice1891418915%_
                                             (gx#syntax-split-splice->vector
                                              _%tl43984787%_
                                              '0)))
                                        (let ((_%tl44634515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1891418915%_
                                                  '1)))
                                              (_%target44614512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1891418915%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl44634515%_)
                                              (_%__match1905819059%_
                                               _%e43864853%_
                                               _%hd43874857%_
                                               _%tl43884860%_
                                               _%e43934770%_
                                               _%hd43944774%_
                                               _%tl43954777%_
                                               _%e43964780%_
                                               _%hd43974784%_
                                               _%tl43984787%_
                                               _%__splice1891418915%_
                                               _%target44614512%_
                                               _%tl44634515%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g43844475%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g43844475%_))))
                              (if (gx#stx-pair/null? _%tl43984787%_)
                                  (let ((_%__splice1891418915%_
                                         (gx#syntax-split-splice->vector
                                          _%tl43984787%_
                                          '0)))
                                    (let ((_%tl44634515%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1891418915%_
                                              '1)))
                                          (_%target44614512%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1891418915%_
                                              '0))))
                                      (if (gx#stx-null? _%tl44634515%_)
                                          (_%__match1905819059%_
                                           _%e43864853%_
                                           _%hd43874857%_
                                           _%tl43884860%_
                                           _%e43934770%_
                                           _%hd43944774%_
                                           _%tl43954777%_
                                           _%e43964780%_
                                           _%hd43974784%_
                                           _%tl43984787%_
                                           _%__splice1891418915%_
                                           _%target44614512%_
                                           _%tl44634515%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g43844475%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g43844475%_))))
                          (if (gx#stx-pair/null? _%tl43984787%_)
                              (let ((_%__splice1891418915%_
                                     (gx#syntax-split-splice->vector
                                      _%tl43984787%_
                                      '0)))
                                (let ((_%tl44634515%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1891418915%_
                                          '1)))
                                      (_%target44614512%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1891418915%_
                                          '0))))
                                  (if (gx#stx-null? _%tl44634515%_)
                                      (_%__match1905819059%_
                                       _%e43864853%_
                                       _%hd43874857%_
                                       _%tl43884860%_
                                       _%e43934770%_
                                       _%hd43944774%_
                                       _%tl43954777%_
                                       _%e43964780%_
                                       _%hd43974784%_
                                       _%tl43984787%_
                                       _%__splice1891418915%_
                                       _%target44614512%_
                                       _%tl44634515%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g43844475%_)))))
                              (let () (declare (not safe)) (_%g43844475%_))))))
                  (if (gx#stx-pair/null? _%tl43984787%_)
                      (let ((_%__splice1891418915%_
                             (gx#syntax-split-splice->vector
                              _%tl43984787%_
                              '0)))
                        (let ((_%tl44634515%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1891418915%_ '1)))
                              (_%target44614512%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1891418915%_ '0))))
                          (if (gx#stx-null? _%tl44634515%_)
                              (_%__match1905819059%_
                               _%e43864853%_
                               _%hd43874857%_
                               _%tl43884860%_
                               _%e43934770%_
                               _%hd43944774%_
                               _%tl43954777%_
                               _%e43964780%_
                               _%hd43974784%_
                               _%tl43984787%_
                               _%__splice1891418915%_
                               _%target44614512%_
                               _%tl44634515%_)
                              (let () (declare (not safe)) (_%g43844475%_)))))
                      (let () (declare (not safe)) (_%g43844475%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _%tl43984787%_)
                                                  (_%__kont1890818909%_
                                                   _%tl43954777%_
                                                   _%hd43974784%_
                                                   _%hd43874857%_)
                                                  (if (gx#stx-pair?
                                                       _%tl43984787%_)
                                                      (let ((_%e44424611%_
                                                             (gx#syntax-e
                                                              _%tl43984787%_)))
                                                        (let ((_%tl44444618%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e44424611%_)))
                      (_%hd44434615%_
                       (let () (declare (not safe)) (##car _%e44424611%_))))
                  (if (gx#identifier? _%hd44434615%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g20925_|
                           _%hd44434615%_)
                          (if (gx#stx-pair? _%tl44444618%_)
                              (let ((_%e44454621%_
                                     (gx#syntax-e _%tl44444618%_)))
                                (let ((_%tl44474628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e44454621%_)))
                                      (_%hd44464625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e44454621%_))))
                                  (if (gx#stx-null? _%tl44474628%_)
                                      (_%__kont1891018911%_
                                       _%tl43954777%_
                                       _%hd44464625%_
                                       _%hd43974784%_
                                       _%hd43874857%_)
                                      (if (gx#stx-pair/null? _%tl43984787%_)
                                          (let ((_%__splice1891418915%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl43984787%_
                                                  '0)))
                                            (let ((_%tl44634515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1891418915%_
                                                      '1)))
                                                  (_%target44614512%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1891418915%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl44634515%_)
                                                  (_%__match1905819059%_
                                                   _%e43864853%_
                                                   _%hd43874857%_
                                                   _%tl43884860%_
                                                   _%e43934770%_
                                                   _%hd43944774%_
                                                   _%tl43954777%_
                                                   _%e43964780%_
                                                   _%hd43974784%_
                                                   _%tl43984787%_
                                                   _%__splice1891418915%_
                                                   _%target44614512%_
                                                   _%tl44634515%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g43844475%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g43844475%_))))))
                              (if (gx#stx-pair/null? _%tl43984787%_)
                                  (let ((_%__splice1891418915%_
                                         (gx#syntax-split-splice->vector
                                          _%tl43984787%_
                                          '0)))
                                    (let ((_%tl44634515%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1891418915%_
                                              '1)))
                                          (_%target44614512%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1891418915%_
                                              '0))))
                                      (if (gx#stx-null? _%tl44634515%_)
                                          (_%__match1905819059%_
                                           _%e43864853%_
                                           _%hd43874857%_
                                           _%tl43884860%_
                                           _%e43934770%_
                                           _%hd43944774%_
                                           _%tl43954777%_
                                           _%e43964780%_
                                           _%hd43974784%_
                                           _%tl43984787%_
                                           _%__splice1891418915%_
                                           _%target44614512%_
                                           _%tl44634515%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g43844475%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g43844475%_))))
                          (if (gx#stx-pair/null? _%tl43984787%_)
                              (let ((_%__splice1891418915%_
                                     (gx#syntax-split-splice->vector
                                      _%tl43984787%_
                                      '0)))
                                (let ((_%tl44634515%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1891418915%_
                                          '1)))
                                      (_%target44614512%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1891418915%_
                                          '0))))
                                  (if (gx#stx-null? _%tl44634515%_)
                                      (_%__match1905819059%_
                                       _%e43864853%_
                                       _%hd43874857%_
                                       _%tl43884860%_
                                       _%e43934770%_
                                       _%hd43944774%_
                                       _%tl43954777%_
                                       _%e43964780%_
                                       _%hd43974784%_
                                       _%tl43984787%_
                                       _%__splice1891418915%_
                                       _%target44614512%_
                                       _%tl44634515%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g43844475%_)))))
                              (let () (declare (not safe)) (_%g43844475%_))))
                      (if (gx#stx-pair/null? _%tl43984787%_)
                          (let ((_%__splice1891418915%_
                                 (gx#syntax-split-splice->vector
                                  _%tl43984787%_
                                  '0)))
                            (let ((_%tl44634515%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1891418915%_ '1)))
                                  (_%target44614512%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1891418915%_
                                      '0))))
                              (if (gx#stx-null? _%tl44634515%_)
                                  (_%__match1905819059%_
                                   _%e43864853%_
                                   _%hd43874857%_
                                   _%tl43884860%_
                                   _%e43934770%_
                                   _%hd43944774%_
                                   _%tl43954777%_
                                   _%e43964780%_
                                   _%hd43974784%_
                                   _%tl43984787%_
                                   _%__splice1891418915%_
                                   _%target44614512%_
                                   _%tl44634515%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g43844475%_)))))
                          (let () (declare (not safe)) (_%g43844475%_))))))
              (if (gx#stx-pair/null? _%tl43984787%_)
                  (let ((_%__splice1891418915%_
                         (gx#syntax-split-splice->vector _%tl43984787%_ '0)))
                    (let ((_%tl44634515%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1891418915%_ '1)))
                          (_%target44614512%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1891418915%_ '0))))
                      (if (gx#stx-null? _%tl44634515%_)
                          (_%__match1905819059%_
                           _%e43864853%_
                           _%hd43874857%_
                           _%tl43884860%_
                           _%e43934770%_
                           _%hd43944774%_
                           _%tl43954777%_
                           _%e43964780%_
                           _%hd43974784%_
                           _%tl43984787%_
                           _%__splice1891418915%_
                           _%target44614512%_
                           _%tl44634515%_)
                          (let () (declare (not safe)) (_%g43844475%_)))))
                  (let () (declare (not safe)) (_%g43844475%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%g43844475%_)))))
                              (let () (declare (not safe)) (_%g43844475%_))))))
                  (let () (declare (not safe)) (_%g43844475%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_%$stx4873%_)
        (let* ((_%g48774905%_
                (lambda (_%g48784901%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g48784901%_)))
               (_%g48765002%_
                (lambda (_%g48784909%_)
                  (if (gx#stx-pair? _%g48784909%_)
                      (let ((_%e48824912%_ (gx#syntax-e _%g48784909%_)))
                        (let ((_%hd48834916%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e48824912%_)))
                              (_%tl48844919%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e48824912%_))))
                          (if (gx#stx-pair? _%tl48844919%_)
                              (let ((_%e48854922%_
                                     (gx#syntax-e _%tl48844919%_)))
                                (let ((_%hd48864926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e48854922%_)))
                                      (_%tl48874929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e48854922%_))))
                                  (if (gx#stx-pair? _%tl48874929%_)
                                      (let ((_%e48884932%_
                                             (gx#syntax-e _%tl48874929%_)))
                                        (let ((_%hd48894936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e48884932%_)))
                                              (_%tl48904939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e48884932%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl48904939%_)
                                              (let ((_g20926_
                                                     (gx#syntax-split-splice
                                                      _%tl48904939%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20926_)
                                                               (##values-length
                                                                _g20926_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20927_ 2)))
                (error "Context expects 2 values" _g20927_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target48914942%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20926_
                                                            0)))
                                                        (_%tl48934945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20926_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl48934945%_)
                                                        (letrec ((_%loop48944948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd48924952%_ _%rest48984955%_)
                            (if (gx#stx-pair? _%hd48924952%_)
                                (let ((_%e48954957%_
                                       (gx#syntax-e _%hd48924952%_)))
                                  (let ((_%lp-hd48964961%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e48954957%_)))
                                        (_%lp-tl48974964%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e48954957%_))))
                                    (_%loop48944948%_
                                     _%lp-tl48974964%_
                                     (cons _%lp-hd48964961%_
                                           _%rest48984955%_))))
                                (let ((_%rest48994967%_
                                       (reverse _%rest48984955%_)))
                                  ((lambda (_%g48794970%_
                                            _%g48804972%_
                                            _%g48814973%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%g48814973%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (cons _%g48804972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g49934996%_ _%g49944999%_)
                                    (cons _%g49934996%_ _%g49944999%_))
                                  '()
                                  _%g48794970%_)))
               (cons '#!void '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest48994967%_
                                   _%hd48894936%_
                                   _%hd48864926%_))))))
                  (_%loop48944948%_ _%target48914942%_ '()))
                (_%g48774905%_ _%g48784909%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g48774905%_ _%g48784909%_))))
                                      (_%g48774905%_ _%g48784909%_))))
                              (_%g48774905%_ _%g48784909%_))))
                      (_%g48774905%_ _%g48784909%_)))))
          (_%g48765002%_ _%$stx4873%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_%$stx5007%_)
        (let* ((_%g50115039%_
                (lambda (_%g50125035%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g50125035%_)))
               (_%g50105136%_
                (lambda (_%g50125043%_)
                  (if (gx#stx-pair? _%g50125043%_)
                      (let ((_%e50165046%_ (gx#syntax-e _%g50125043%_)))
                        (let ((_%hd50175050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e50165046%_)))
                              (_%tl50185053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e50165046%_))))
                          (if (gx#stx-pair? _%tl50185053%_)
                              (let ((_%e50195056%_
                                     (gx#syntax-e _%tl50185053%_)))
                                (let ((_%hd50205060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e50195056%_)))
                                      (_%tl50215063%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e50195056%_))))
                                  (if (gx#stx-pair? _%tl50215063%_)
                                      (let ((_%e50225066%_
                                             (gx#syntax-e _%tl50215063%_)))
                                        (let ((_%hd50235070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e50225066%_)))
                                              (_%tl50245073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e50225066%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl50245073%_)
                                              (let ((_g20928_
                                                     (gx#syntax-split-splice
                                                      _%tl50245073%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20929_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20928_)
                                                               (##values-length
                                                                _g20928_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20929_ 2)))
                (error "Context expects 2 values" _g20929_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target50255076%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20928_
                                                            0)))
                                                        (_%tl50275079%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20928_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl50275079%_)
                                                        (letrec ((_%loop50285082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd50265086%_ _%rest50325089%_)
                            (if (gx#stx-pair? _%hd50265086%_)
                                (let ((_%e50295091%_
                                       (gx#syntax-e _%hd50265086%_)))
                                  (let ((_%lp-hd50305095%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e50295091%_)))
                                        (_%lp-tl50315098%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e50295091%_))))
                                    (_%loop50285082%_
                                     _%lp-tl50315098%_
                                     (cons _%lp-hd50305095%_
                                           _%rest50325089%_))))
                                (let ((_%rest50335101%_
                                       (reverse _%rest50325089%_)))
                                  ((lambda (_%g50135104%_
                                            _%g50145106%_
                                            _%g50155107%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%g50155107%_
                                                 (cons '#!void
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           (cons _%g50145106%_
                                 (foldr (lambda (_%g51275130%_ _%g51285133%_)
                                          (cons _%g51275130%_ _%g51285133%_))
                                        '()
                                        _%g50135104%_)))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest50335101%_
                                   _%hd50235070%_
                                   _%hd50205060%_))))))
                  (_%loop50285082%_ _%target50255076%_ '()))
                (_%g50115039%_ _%g50125043%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g50115039%_ _%g50125043%_))))
                                      (_%g50115039%_ _%g50125043%_))))
                              (_%g50115039%_ _%g50125043%_))))
                      (_%g50115039%_ _%g50125043%_)))))
          (_%g50105136%_ _%$stx5007%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_%stx5141%_)
        (let* ((_%g51445168%_
                (lambda (_%g51455164%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g51455164%_)))
               (_%g51435251%_
                (lambda (_%g51455172%_)
                  (if (gx#stx-pair? _%g51455172%_)
                      (let ((_%e51485175%_ (gx#syntax-e _%g51455172%_)))
                        (let ((_%hd51495179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e51485175%_)))
                              (_%tl51505182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e51485175%_))))
                          (if (gx#stx-pair? _%tl51505182%_)
                              (let ((_%e51515185%_
                                     (gx#syntax-e _%tl51505182%_)))
                                (let ((_%hd51525189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e51515185%_)))
                                      (_%tl51535192%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e51515185%_))))
                                  (if (gx#stx-pair/null? _%tl51535192%_)
                                      (let ((_g20930_
                                             (gx#syntax-split-splice
                                              _%tl51535192%_
                                              '0)))
                                        (begin
                                          (let ((_g20931_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20930_)
                                                       (##values-length
                                                        _g20930_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20931_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20931_)))
                                          (let ((_%target51545195%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20930_ 0)))
                                                (_%tl51565198%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20930_ 1))))
                                            (if (gx#stx-null? _%tl51565198%_)
                                                (letrec ((_%loop51575201%_
                                                          (lambda (_%hd51555205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%detail51615208%_)
                    (if (gx#stx-pair? _%hd51555205%_)
                        (let ((_%e51585210%_ (gx#syntax-e _%hd51555205%_)))
                          (let ((_%lp-hd51595214%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e51585210%_)))
                                (_%lp-tl51605217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e51585210%_))))
                            (_%loop51575201%_
                             _%lp-tl51605217%_
                             (cons _%lp-hd51595214%_ _%detail51615208%_))))
                        (let ((_%detail51625220%_
                               (reverse _%detail51615208%_)))
                          ((lambda (_%g51465223%_ _%g51475225%_)
                             (if (gx#stx-string? _%g51475225%_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _%g51475225%_)
                                        _%stx5141%_
                                        (gx#syntax->list
                                         (foldr (lambda (_%g52425245%_
                                                         _%g52435248%_)
                                                  (cons _%g52425245%_
                                                        _%g52435248%_))
                                                '()
                                                _%g51465223%_)))
                                 (_%g51445168%_ _%g51455172%_)))
                           _%detail51625220%_
                           _%hd51525189%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop51575201%_
                                                   _%target51545195%_
                                                   '()))
                                                (_%g51445168%_
                                                 _%g51455172%_)))))
                                      (_%g51445168%_ _%g51455172%_))))
                              (_%g51445168%_ _%g51455172%_))))
                      (_%g51445168%_ _%g51455172%_)))))
          (_%g51435251%_ _%stx5141%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#compilation-target?|
      (lambda (_%$stx5256%_)
        (let* ((_%g52605274%_
                (lambda (_%g52615270%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g52615270%_)))
               (_%g52595315%_
                (lambda (_%g52615278%_)
                  (if (gx#stx-pair? _%g52615278%_)
                      (let ((_%e52635281%_ (gx#syntax-e _%g52615278%_)))
                        (let ((_%hd52645285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e52635281%_)))
                              (_%tl52655288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e52635281%_))))
                          (if (gx#stx-pair? _%tl52655288%_)
                              (let ((_%e52665291%_
                                     (gx#syntax-e _%tl52655288%_)))
                                (let ((_%hd52675295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e52665291%_)))
                                      (_%tl52685298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e52665291%_))))
                                  (if (gx#stx-null? _%tl52685298%_)
                                      ((lambda (_%g52625301%_)
                                         (cons (gx#datum->syntax '#f 'eq?)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'current-compilation-target)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g52625301%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd52675295%_)
                                      (_%g52605274%_ _%g52615278%_))))
                              (_%g52605274%_ _%g52615278%_))))
                      (_%g52605274%_ _%g52615278%_)))))
          (_%g52595315%_ _%$stx5256%_))))))
