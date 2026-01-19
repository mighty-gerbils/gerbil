(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx56083%_)
      (let* ((_%g5608756101%_
              (lambda (_%g5608856097%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5608856097%_)))
             (_%g5608656143%_
              (lambda (_%g5608856105%_)
                (if (gx#stx-pair? _%g5608856105%_)
                    (let ((_%e5609056108%_ (gx#syntax-e _%g5608856105%_)))
                      (let ((_%hd5609156112%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5609056108%_)))
                            (_%tl5609256115%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5609056108%_))))
                        (if (gx#stx-pair? _%tl5609256115%_)
                            (let ((_%e5609356118%_
                                   (gx#syntax-e _%tl5609256115%_)))
                              (let ((_%hd5609456122%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5609356118%_)))
                                    (_%tl5609556125%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5609356118%_))))
                                (if (gx#stx-null? _%tl5609556125%_)
                                    ((lambda (_%L56128%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L56128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5609456122%_)
                                    (_%g5608756101%_ _%g5608856105%_))))
                            (_%g5608756101%_ _%g5608856105%_))))
                    (_%g5608756101%_ _%g5608856105%_)))))
        (_%g5608656143%_ _%$stx56083%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx56147%_)
      (let* ((_%g5615156169%_
              (lambda (_%g5615256165%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5615256165%_)))
             (_%g5615056224%_
              (lambda (_%g5615256173%_)
                (if (gx#stx-pair? _%g5615256173%_)
                    (let ((_%e5615556176%_ (gx#syntax-e _%g5615256173%_)))
                      (let ((_%hd5615656180%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5615556176%_)))
                            (_%tl5615756183%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5615556176%_))))
                        (if (gx#stx-pair? _%tl5615756183%_)
                            (let ((_%e5615856186%_
                                   (gx#syntax-e _%tl5615756183%_)))
                              (let ((_%hd5615956190%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5615856186%_)))
                                    (_%tl5616056193%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5615856186%_))))
                                (if (gx#stx-pair? _%tl5616056193%_)
                                    (let ((_%e5616156196%_
                                           (gx#syntax-e _%tl5616056193%_)))
                                      (let ((_%hd5616256200%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5616156196%_)))
                                            (_%tl5616356203%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5616156196%_))))
                                        (if (gx#stx-null? _%tl5616356203%_)
                                            ((lambda (_%L56206%_ _%L56208%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx>=)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'o)
                                                       (cons _%L56208%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L56206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5616256200%_
                                             _%hd5615956190%_)
                                            (_%g5615156169%_
                                             _%g5615256173%_))))
                                    (_%g5615156169%_ _%g5615256173%_))))
                            (_%g5615156169%_ _%g5615256173%_))))
                    (_%g5615156169%_ _%g5615256173%_)))))
        (_%g5615056224%_ _%$stx56147%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx56228%_)
      (let* ((_%g5623256250%_
              (lambda (_%g5623356246%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5623356246%_)))
             (_%g5623156305%_
              (lambda (_%g5623356254%_)
                (if (gx#stx-pair? _%g5623356254%_)
                    (let ((_%e5623656257%_ (gx#syntax-e _%g5623356254%_)))
                      (let ((_%hd5623756261%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5623656257%_)))
                            (_%tl5623856264%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5623656257%_))))
                        (if (gx#stx-pair? _%tl5623856264%_)
                            (let ((_%e5623956267%_
                                   (gx#syntax-e _%tl5623856264%_)))
                              (let ((_%hd5624056271%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5623956267%_)))
                                    (_%tl5624156274%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5623956267%_))))
                                (if (gx#stx-pair? _%tl5624156274%_)
                                    (let ((_%e5624256277%_
                                           (gx#syntax-e _%tl5624156274%_)))
                                      (let ((_%hd5624356281%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5624256277%_)))
                                            (_%tl5624456284%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5624256277%_))))
                                        (if (gx#stx-null? _%tl5624456284%_)
                                            ((lambda (_%L56287%_ _%L56289%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx<=)
                                                 (cons _%L56289%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L56287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5624356281%_
                                             _%hd5624056271%_)
                                            (_%g5623256250%_
                                             _%g5623356254%_))))
                                    (_%g5623256250%_ _%g5623356254%_))))
                            (_%g5623256250%_ _%g5623356254%_))))
                    (_%g5623256250%_ _%g5623356254%_)))))
        (_%g5623156305%_ _%$stx56228%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx56309%_)
      (let* ((_%g5631356327%_
              (lambda (_%g5631456323%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5631456323%_)))
             (_%g5631256368%_
              (lambda (_%g5631456331%_)
                (if (gx#stx-pair? _%g5631456331%_)
                    (let ((_%e5631656334%_ (gx#syntax-e _%g5631456331%_)))
                      (let ((_%hd5631756338%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5631656334%_)))
                            (_%tl5631856341%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5631656334%_))))
                        (if (gx#stx-pair? _%tl5631856341%_)
                            (let ((_%e5631956344%_
                                   (gx#syntax-e _%tl5631856341%_)))
                              (let ((_%hd5632056348%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5631956344%_)))
                                    (_%tl5632156351%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5631956344%_))))
                                (if (gx#stx-null? _%tl5632156351%_)
                                    ((lambda (_%L56354%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'o)
                                                         '())
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'and)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'list?)
                                   (cons (gx#datum->syntax '#f 'o) '()))
                             (cons (cons (gx#datum->syntax '#f 'andmap)
                                         (cons _%L56354%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5632056348%_)
                                    (_%g5631356327%_ _%g5631456331%_))))
                            (_%g5631356327%_ _%g5631456331%_))))
                    (_%g5631356327%_ _%g5631456331%_)))))
        (_%g5631256368%_ _%$stx56309%_)))))
