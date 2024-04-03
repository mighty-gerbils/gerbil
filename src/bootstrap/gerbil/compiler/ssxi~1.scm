(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g201615_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201629_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201631_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201633_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201635_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201648_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201650_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201652_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201654_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx195171%_)
        (let* ((_%g195175195193%_
                (lambda (_%g195176195189%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195176195189%_))))
               (_%g195174195248%_
                (lambda (_%g195176195197%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195176195197%_))
                      (let ((_%e195181195200%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195176195197%_))))
                        (let ((_%hd195180195204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195181195200%_)))
                              (_%tl195179195207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195181195200%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195179195207%_))
                              (let ((_%e195184195210%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195179195207%_))))
                                (let ((_%hd195183195214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195184195210%_)))
                                      (_%tl195182195217%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195184195210%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195182195217%_))
                                      (let ((_%e195187195220%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195182195217%_))))
                                        (let ((_%hd195186195224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195187195220%_)))
                                              (_%tl195185195227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195187195220%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195185195227%_))
                                              ((lambda (_%L195230%_
                                                        _%L195232%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195232%_))
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
                               (cons _%L195232%_ '()))
                         (cons _%L195230%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195175195193%_
                                                      _%g195176195197%_)))
                                               _%hd195186195224%_
                                               _%hd195183195214%_)
                                              (_%g195175195193%_
                                               _%g195176195197%_))))
                                      (_%g195175195193%_ _%g195176195197%_))))
                              (_%g195175195193%_ _%g195176195197%_))))
                      (_%g195175195193%_ _%g195176195197%_)))))
          (_%g195174195248%_ _%$stx195171%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx195252%_)
        (let* ((_%g195256195274%_
                (lambda (_%g195257195270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195257195270%_))))
               (_%g195255195329%_
                (lambda (_%g195257195278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195257195278%_))
                      (let ((_%e195262195281%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195257195278%_))))
                        (let ((_%hd195261195285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195262195281%_)))
                              (_%tl195260195288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195262195281%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195260195288%_))
                              (let ((_%e195265195291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195260195288%_))))
                                (let ((_%hd195264195295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195265195291%_)))
                                      (_%tl195263195298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195265195291%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195263195298%_))
                                      (let ((_%e195268195301%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195263195298%_))))
                                        (let ((_%hd195267195305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195268195301%_)))
                                              (_%tl195266195308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195268195301%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195266195308%_))
                                              ((lambda (_%L195311%_
                                                        _%L195313%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195313%_))
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
                               (cons _%L195313%_ '()))
                         (cons _%L195311%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195256195274%_
                                                      _%g195257195278%_)))
                                               _%hd195267195305%_
                                               _%hd195264195295%_)
                                              (_%g195256195274%_
                                               _%g195257195278%_))))
                                      (_%g195256195274%_ _%g195257195278%_))))
                              (_%g195256195274%_ _%g195257195278%_))))
                      (_%g195256195274%_ _%g195257195278%_)))))
          (_%g195255195329%_ _%$stx195252%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx195333%_)
        (let* ((_%g195337195366%_
                (lambda (_%g195338195362%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195338195362%_))))
               (_%g195336195466%_
                (lambda (_%g195338195370%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195338195370%_))
                      (let ((_%e195343195373%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195338195370%_))))
                        (let ((_%hd195342195377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195343195373%_)))
                              (_%tl195341195380%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195343195373%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195341195380%_))
                              (let ((_g201593_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195341195380%_
                                        '0))))
                                (begin
                                  (let ((_g201594_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201593_)
                                               (##vector-length _g201593_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201594_ 2)))
                                        (error "Context expects 2 values"
                                               _g201594_)))
                                  (let ((_%target195344195383%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201593_ 0)))
                                        (_%tl195346195386%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201593_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195346195386%_))
                                        (letrec ((_%loop195347195389%_
                                                  (lambda (_%hd195345195393%_
                                                           _%type195351195396%_
                                                           _%symbol195352195398%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195345195393%_))
                                                        (let ((_%e195348195401%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195345195393%_))))
                  (let ((_%lp-hd195349195405%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195348195401%_)))
                        (_%lp-tl195350195408%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195348195401%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195349195405%_))
                        (let ((_%e195357195411%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195349195405%_))))
                          (let ((_%hd195356195415%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195357195411%_)))
                                (_%tl195355195418%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195357195411%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195355195418%_))
                                (let ((_%e195360195421%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195355195418%_))))
                                  (let ((_%hd195359195425%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195360195421%_)))
                                        (_%tl195358195428%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195360195421%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195358195428%_))
                                        (_%loop195347195389%_
                                         _%lp-tl195350195408%_
                                         (cons _%hd195359195425%_
                                               _%type195351195396%_)
                                         (cons _%hd195356195415%_
                                               _%symbol195352195398%_))
                                        (_%g195337195366%_
                                         _%g195338195370%_))))
                                (_%g195337195366%_ _%g195338195370%_))))
                        (_%g195337195366%_ _%g195338195370%_))))
                (let ((_%type195353195431%_ (reverse _%type195351195396%_))
                      (_%symbol195354195434%_
                       (reverse _%symbol195352195398%_)))
                  ((lambda (_%L195437%_ _%L195439%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195437%_
                                _%L195439%_))
                             (let ((__tmp201595
                                    (lambda (_%g195454195458%_
                                             _%g195455195461%_
                                             _%g195456195463%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g195455195461%_
                                                        (cons _%g195454195458%_
                                                              '())))
                                            _%g195456195463%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201595
                                '()
                                _%L195437%_
                                _%L195439%_)))))
                   _%type195353195431%_
                   _%symbol195354195434%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195347195389%_
                                           _%target195344195383%_
                                           '()
                                           '()))
                                        (_%g195337195366%_
                                         _%g195338195370%_)))))
                              (_%g195337195366%_ _%g195338195370%_))))
                      (_%g195337195366%_ _%g195338195370%_)))))
          (_%g195336195466%_ _%$stx195333%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx195471%_)
        (let* ((_%__stx200904200905%_ _%$stx195471%_)
               (_%g195476195518%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200904200905%_)))))
          (let ((_%__kont200907200908%_
                 (lambda (_%L195646%_ _%L195648%_ _%L195649%_ _%L195650%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195650%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195649%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195648%_ '()))
                                           (cons _%L195646%_ '())))))))
                (_%__kont200909200910%_
                 (lambda (_%L195565%_ _%L195567%_ _%L195568%_ _%L195569%_)
                   (cons _%L195569%_
                         (cons _%L195568%_
                               (cons _%L195567%_
                                     (cons _%L195565%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match200943200944%_
                   (lambda (_%e195484195596%_
                            _%hd195483195600%_
                            _%tl195482195603%_
                            _%e195487195606%_
                            _%hd195486195610%_
                            _%tl195485195613%_
                            _%e195490195616%_
                            _%hd195489195620%_
                            _%tl195488195623%_
                            _%e195493195626%_
                            _%hd195492195630%_
                            _%tl195491195633%_
                            _%e195496195636%_
                            _%hd195495195640%_
                            _%tl195494195643%_)
                     (let ((_%L195646%_ _%hd195495195640%_)
                           (_%L195648%_ _%hd195492195630%_)
                           (_%L195649%_ _%hd195489195620%_)
                           (_%L195650%_ _%hd195486195610%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195650%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195649%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195648%_)))
                           (_%__kont200907200908%_
                            _%L195646%_
                            _%L195648%_
                            _%L195649%_
                            _%L195650%_)
                           (let ()
                             (declare (not safe))
                             (_%g195476195518%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200904200905%_))
                  (let ((_%e195484195596%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200904200905%_))))
                    (let ((_%tl195482195603%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195484195596%_)))
                          (_%hd195483195600%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195484195596%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195482195603%_))
                          (let ((_%e195487195606%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195482195603%_))))
                            (let ((_%tl195485195613%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195487195606%_)))
                                  (_%hd195486195610%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195487195606%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195485195613%_))
                                  (let ((_%e195490195616%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl195485195613%_))))
                                    (let ((_%tl195488195623%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195490195616%_)))
                                          (_%hd195489195620%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195490195616%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195488195623%_))
                                          (let ((_%e195493195626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl195488195623%_))))
                                            (let ((_%tl195491195633%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195493195626%_)))
                                                  (_%hd195492195630%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195493195626%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195491195633%_))
                                                  (let ((_%e195496195636%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl195491195633%_))))
                                                    (let ((_%tl195494195643%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195496195636%_)))
                                                          (_%hd195495195640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195496195636%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195494195643%_))
                                                          (_%__match200943200944%_
                                                           _%e195484195596%_
                                                           _%hd195483195600%_
                                                           _%tl195482195603%_
                                                           _%e195487195606%_
                                                           _%hd195486195610%_
                                                           _%tl195485195613%_
                                                           _%e195490195616%_
                                                           _%hd195489195620%_
                                                           _%tl195488195623%_
                                                           _%e195493195626%_
                                                           _%hd195492195630%_
                                                           _%tl195491195633%_
                                                           _%e195496195636%_
                                                           _%hd195495195640%_
                                                           _%tl195494195643%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g195476195518%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195491195633%_))
                                                      (_%__kont200909200910%_
                                                       _%hd195492195630%_
                                                       _%hd195489195620%_
                                                       _%hd195486195610%_
                                                       _%hd195483195600%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g195476195518%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g195476195518%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g195476195518%_)))))
                          (let () (declare (not safe)) (_%g195476195518%_)))))
                  (let () (declare (not safe)) (_%g195476195518%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195675%_)
        (let* ((_%g195679195714%_
                (lambda (_%g195680195710%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195680195710%_))))
               (_%g195678195833%_
                (lambda (_%g195680195718%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195680195718%_))
                      (let ((_%e195686195721%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195680195718%_))))
                        (let ((_%hd195685195725%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195686195721%_)))
                              (_%tl195684195728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195686195721%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195684195728%_))
                              (let ((_g201596_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195684195728%_
                                        '0))))
                                (begin
                                  (let ((_g201597_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201596_)
                                               (##vector-length _g201596_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201597_ 2)))
                                        (error "Context expects 2 values"
                                               _g201597_)))
                                  (let ((_%target195687195731%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201596_ 0)))
                                        (_%tl195689195734%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201596_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195689195734%_))
                                        (letrec ((_%loop195690195737%_
                                                  (lambda (_%hd195688195741%_
                                                           _%symbol195694195744%_
                                                           _%method195695195746%_
                                                           _%type-t195696195748%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195688195741%_))
                                                        (let ((_%e195691195751%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195688195741%_))))
                  (let ((_%lp-hd195692195755%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195691195751%_)))
                        (_%lp-tl195693195758%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195691195751%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195692195755%_))
                        (let ((_%e195702195761%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195692195755%_))))
                          (let ((_%hd195701195765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195702195761%_)))
                                (_%tl195700195768%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195702195761%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195700195768%_))
                                (let ((_%e195705195771%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195700195768%_))))
                                  (let ((_%hd195704195775%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195705195771%_)))
                                        (_%tl195703195778%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195705195771%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195703195778%_))
                                        (let ((_%e195708195781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195703195778%_))))
                                          (let ((_%hd195707195785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195708195781%_)))
                                                (_%tl195706195788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195708195781%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195706195788%_))
                                                (_%loop195690195737%_
                                                 _%lp-tl195693195758%_
                                                 (cons _%hd195707195785%_
                                                       _%symbol195694195744%_)
                                                 (cons _%hd195704195775%_
                                                       _%method195695195746%_)
                                                 (cons _%hd195701195765%_
                                                       _%type-t195696195748%_))
                                                (_%g195679195714%_
                                                 _%g195680195718%_))))
                                        (_%g195679195714%_
                                         _%g195680195718%_))))
                                (_%g195679195714%_ _%g195680195718%_))))
                        (_%g195679195714%_ _%g195680195718%_))))
                (let ((_%symbol195697195791%_ (reverse _%symbol195694195744%_))
                      (_%method195698195794%_ (reverse _%method195695195746%_))
                      (_%type-t195699195796%_
                       (reverse _%type-t195696195748%_)))
                  ((lambda (_%L195799%_ _%L195801%_ _%L195802%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195799%_
                                _%L195801%_
                                _%L195802%_))
                             (let ((__tmp201598
                                    (lambda (_%g195818195823%_
                                             _%g195819195826%_
                                             _%g195820195828%_
                                             _%g195821195830%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g195820195828%_
                                                        (cons _%g195819195826%_
                                                              (cons _%g195818195823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g195821195830%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp201598
                                '()
                                _%L195799%_
                                _%L195801%_
                                _%L195802%_)))))
                   _%symbol195697195791%_
                   _%method195698195794%_
                   _%type-t195699195796%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195690195737%_
                                           _%target195687195731%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195679195714%_
                                         _%g195680195718%_)))))
                              (_%g195679195714%_ _%g195680195718%_))))
                      (_%g195679195714%_ _%g195680195718%_)))))
          (_%g195678195833%_ _%$stx195675%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx195838%_)
        (let* ((_%g195842195875%_
                (lambda (_%g195843195871%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195843195871%_))))
               (_%g195841195989%_
                (lambda (_%g195843195879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195843195879%_))
                      (let ((_%e195849195882%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195843195879%_))))
                        (let ((_%hd195848195886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195849195882%_)))
                              (_%tl195847195889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195849195882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195847195889%_))
                              (let ((_%e195852195892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195847195889%_))))
                                (let ((_%hd195851195896%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195852195892%_)))
                                      (_%tl195850195899%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195852195892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195850195899%_))
                                      (let ((_g201599_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195850195899%_
                                                '0))))
                                        (begin
                                          (let ((_g201600_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201599_)
                                                       (##vector-length
                                                        _g201599_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201600_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201600_)))
                                          (let ((_%target195853195902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201599_ 0)))
                                                (_%tl195855195905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201599_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195855195905%_))
                                                (letrec ((_%loop195856195908%_
                                                          (lambda (_%hd195854195912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol195860195915%_
                           _%method195861195917%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd195854195912%_))
                        (let ((_%e195857195920%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd195854195912%_))))
                          (let ((_%lp-hd195858195924%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195857195920%_)))
                                (_%lp-tl195859195927%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195857195920%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd195858195924%_))
                                (let ((_%e195866195930%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd195858195924%_))))
                                  (let ((_%hd195865195934%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195866195930%_)))
                                        (_%tl195864195937%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195866195930%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195864195937%_))
                                        (let ((_%e195869195940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195864195937%_))))
                                          (let ((_%hd195868195944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195869195940%_)))
                                                (_%tl195867195947%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195869195940%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195867195947%_))
                                                (_%loop195856195908%_
                                                 _%lp-tl195859195927%_
                                                 (cons _%hd195868195944%_
                                                       _%symbol195860195915%_)
                                                 (cons _%hd195865195934%_
                                                       _%method195861195917%_))
                                                (_%g195842195875%_
                                                 _%g195843195879%_))))
                                        (_%g195842195875%_
                                         _%g195843195879%_))))
                                (_%g195842195875%_ _%g195843195879%_))))
                        (let ((_%symbol195862195950%_
                               (reverse _%symbol195860195915%_))
                              (_%method195863195953%_
                               (reverse _%method195861195917%_)))
                          ((lambda (_%L195956%_ _%L195958%_ _%L195959%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L195956%_
                                        _%L195958%_))
                                     (let ((__tmp201601
                                            (lambda (_%g195977195981%_
                                                     _%g195978195984%_
                                                     _%g195979195986%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L195959%_
                                                                (cons _%g195978195984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g195977195981%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g195979195986%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp201601
                                        '()
                                        _%L195956%_
                                        _%L195958%_)))))
                           _%symbol195862195950%_
                           _%method195863195953%_
                           _%hd195851195896%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop195856195908%_
                                                   _%target195853195902%_
                                                   '()
                                                   '()))
                                                (_%g195842195875%_
                                                 _%g195843195879%_)))))
                                      (_%g195842195875%_ _%g195843195879%_))))
                              (_%g195842195875%_ _%g195843195879%_))))
                      (_%g195842195875%_ _%g195843195879%_)))))
          (_%g195841195989%_ _%$stx195838%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx195994%_)
        (let* ((_%g195998196012%_
                (lambda (_%g195999196008%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195999196008%_))))
               (_%g195997196053%_
                (lambda (_%g195999196016%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195999196016%_))
                      (let ((_%e196003196019%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195999196016%_))))
                        (let ((_%hd196002196023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196003196019%_)))
                              (_%tl196001196026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196003196019%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196001196026%_))
                              (let ((_%e196006196029%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196001196026%_))))
                                (let ((_%hd196005196033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196006196029%_)))
                                      (_%tl196004196036%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196006196029%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196004196036%_))
                                      ((lambda (_%L196039%_)
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
                                                           (cons _%L196039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196005196033%_)
                                      (_%g195998196012%_ _%g195999196016%_))))
                              (_%g195998196012%_ _%g195999196016%_))))
                      (_%g195998196012%_ _%g195999196016%_)))))
          (_%g195997196053%_ _%$stx195994%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx196057%_)
        (let* ((_%g196061196115%_
                (lambda (_%g196062196111%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196062196111%_))))
               (_%g196060196296%_
                (lambda (_%g196062196119%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196062196119%_))
                      (let ((_%e196076196122%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196062196119%_))))
                        (let ((_%hd196075196126%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196076196122%_)))
                              (_%tl196074196129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196076196122%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196074196129%_))
                              (let ((_%e196079196132%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196074196129%_))))
                                (let ((_%hd196078196136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196079196132%_)))
                                      (_%tl196077196139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196079196132%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196077196139%_))
                                      (let ((_%e196082196142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196077196139%_))))
                                        (let ((_%hd196081196146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196082196142%_)))
                                              (_%tl196080196149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196082196142%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196080196149%_))
                                              (let ((_%e196085196152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196080196149%_))))
                                                (let ((_%hd196084196156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196085196152%_)))
                                                      (_%tl196083196159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196085196152%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196083196159%_))
                                                      (let ((_%e196088196162%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196083196159%_))))
                (let ((_%hd196087196166%_
                       (let () (declare (not safe)) (##car _%e196088196162%_)))
                      (_%tl196086196169%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196088196162%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196086196169%_))
                      (let ((_%e196091196172%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196086196169%_))))
                        (let ((_%hd196090196176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196091196172%_)))
                              (_%tl196089196179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196091196172%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196089196179%_))
                              (let ((_%e196094196182%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196089196179%_))))
                                (let ((_%hd196093196186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196094196182%_)))
                                      (_%tl196092196189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196094196182%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196092196189%_))
                                      (let ((_%e196097196192%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196092196189%_))))
                                        (let ((_%hd196096196196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196097196192%_)))
                                              (_%tl196095196199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196097196192%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196095196199%_))
                                              (let ((_%e196100196202%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196095196199%_))))
                                                (let ((_%hd196099196206%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196100196202%_)))
                                                      (_%tl196098196209%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196100196202%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196098196209%_))
                                                      (let ((_%e196103196212%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196098196209%_))))
                (let ((_%hd196102196216%_
                       (let () (declare (not safe)) (##car _%e196103196212%_)))
                      (_%tl196101196219%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196103196212%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196101196219%_))
                      (let ((_%e196106196222%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196101196219%_))))
                        (let ((_%hd196105196226%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196106196222%_)))
                              (_%tl196104196229%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196106196222%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196104196229%_))
                              (let ((_%e196109196232%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196104196229%_))))
                                (let ((_%hd196108196236%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196109196232%_)))
                                      (_%tl196107196239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196109196232%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196107196239%_))
                                      ((lambda (_%L196242%_
                                                _%L196244%_
                                                _%L196245%_
                                                _%L196246%_
                                                _%L196247%_
                                                _%L196248%_
                                                _%L196249%_
                                                _%L196250%_
                                                _%L196251%_
                                                _%L196252%_
                                                _%L196253%_)
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
                                                           (cons _%L196253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L196252%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L196251%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196250%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196249%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196248%_ '()))
                                           (cons _%L196247%_
                                                 (cons _%L196246%_
                                                       (cons _%L196245%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196244%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L196242%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd196108196236%_
                                       _%hd196105196226%_
                                       _%hd196102196216%_
                                       _%hd196099196206%_
                                       _%hd196096196196%_
                                       _%hd196093196186%_
                                       _%hd196090196176%_
                                       _%hd196087196166%_
                                       _%hd196084196156%_
                                       _%hd196081196146%_
                                       _%hd196078196136%_)
                                      (_%g196061196115%_ _%g196062196119%_))))
                              (_%g196061196115%_ _%g196062196119%_))))
                      (_%g196061196115%_ _%g196062196119%_))))
              (_%g196061196115%_ _%g196062196119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196061196115%_
                                               _%g196062196119%_))))
                                      (_%g196061196115%_ _%g196062196119%_))))
                              (_%g196061196115%_ _%g196062196119%_))))
                      (_%g196061196115%_ _%g196062196119%_))))
              (_%g196061196115%_ _%g196062196119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196061196115%_
                                               _%g196062196119%_))))
                                      (_%g196061196115%_ _%g196062196119%_))))
                              (_%g196061196115%_ _%g196062196119%_))))
                      (_%g196061196115%_ _%g196062196119%_)))))
          (_%g196060196296%_ _%$stx196057%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx196300%_)
        (let* ((_%g196304196318%_
                (lambda (_%g196305196314%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196305196314%_))))
               (_%g196303196359%_
                (lambda (_%g196305196322%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196305196322%_))
                      (let ((_%e196309196325%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196305196322%_))))
                        (let ((_%hd196308196329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196309196325%_)))
                              (_%tl196307196332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196309196325%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196307196332%_))
                              (let ((_%e196312196335%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196307196332%_))))
                                (let ((_%hd196311196339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196312196335%_)))
                                      (_%tl196310196342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196312196335%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196310196342%_))
                                      ((lambda (_%L196345%_)
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
                                                           (cons _%L196345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196311196339%_)
                                      (_%g196304196318%_ _%g196305196322%_))))
                              (_%g196304196318%_ _%g196305196322%_))))
                      (_%g196304196318%_ _%g196305196322%_)))))
          (_%g196303196359%_ _%$stx196300%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx196363%_)
        (let* ((_%g196367196381%_
                (lambda (_%g196368196377%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196368196377%_))))
               (_%g196366196422%_
                (lambda (_%g196368196385%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196368196385%_))
                      (let ((_%e196372196388%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196368196385%_))))
                        (let ((_%hd196371196392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196372196388%_)))
                              (_%tl196370196395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196372196388%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196370196395%_))
                              (let ((_%e196375196398%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196370196395%_))))
                                (let ((_%hd196374196402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196375196398%_)))
                                      (_%tl196373196405%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196375196398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196373196405%_))
                                      ((lambda (_%L196408%_)
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
                                                           (cons _%L196408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196374196402%_)
                                      (_%g196367196381%_ _%g196368196385%_))))
                              (_%g196367196381%_ _%g196368196385%_))))
                      (_%g196367196381%_ _%g196368196385%_)))))
          (_%g196366196422%_ _%$stx196363%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx196426%_)
        (let* ((_%g196430196452%_
                (lambda (_%g196431196448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196431196448%_))))
               (_%g196429196521%_
                (lambda (_%g196431196456%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196431196456%_))
                      (let ((_%e196437196459%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196431196456%_))))
                        (let ((_%hd196436196463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196437196459%_)))
                              (_%tl196435196466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196437196459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196435196466%_))
                              (let ((_%e196440196469%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196435196466%_))))
                                (let ((_%hd196439196473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196440196469%_)))
                                      (_%tl196438196476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196440196469%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196438196476%_))
                                      (let ((_%e196443196479%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196438196476%_))))
                                        (let ((_%hd196442196483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196443196479%_)))
                                              (_%tl196441196486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196443196479%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196441196486%_))
                                              (let ((_%e196446196489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196441196486%_))))
                                                (let ((_%hd196445196493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196446196489%_)))
                                                      (_%tl196444196496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196446196489%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196444196496%_))
                                                      ((lambda (_%L196499%_
                                                                _%L196501%_
                                                                _%L196502%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196502%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196501%_ '()))
                                   (cons _%L196499%_ '())))))
               _%hd196445196493%_
               _%hd196442196483%_
               _%hd196439196473%_)
              (_%g196430196452%_ _%g196431196456%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196430196452%_
                                               _%g196431196456%_))))
                                      (_%g196430196452%_ _%g196431196456%_))))
                              (_%g196430196452%_ _%g196431196456%_))))
                      (_%g196430196452%_ _%g196431196456%_)))))
          (_%g196429196521%_ _%$stx196426%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx196525%_)
        (let* ((_%g196529196551%_
                (lambda (_%g196530196547%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196530196547%_))))
               (_%g196528196620%_
                (lambda (_%g196530196555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196530196555%_))
                      (let ((_%e196536196558%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196530196555%_))))
                        (let ((_%hd196535196562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196536196558%_)))
                              (_%tl196534196565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196536196558%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196534196565%_))
                              (let ((_%e196539196568%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196534196565%_))))
                                (let ((_%hd196538196572%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196539196568%_)))
                                      (_%tl196537196575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196539196568%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196537196575%_))
                                      (let ((_%e196542196578%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196537196575%_))))
                                        (let ((_%hd196541196582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196542196578%_)))
                                              (_%tl196540196585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196542196578%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196540196585%_))
                                              (let ((_%e196545196588%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196540196585%_))))
                                                (let ((_%hd196544196592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196545196588%_)))
                                                      (_%tl196543196595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196545196588%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196543196595%_))
                                                      ((lambda (_%L196598%_
                                                                _%L196600%_
                                                                _%L196601%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196601%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196600%_ '()))
                                   (cons _%L196598%_ '())))))
               _%hd196544196592%_
               _%hd196541196582%_
               _%hd196538196572%_)
              (_%g196529196551%_ _%g196530196555%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196529196551%_
                                               _%g196530196555%_))))
                                      (_%g196529196551%_ _%g196530196555%_))))
                              (_%g196529196551%_ _%g196530196555%_))))
                      (_%g196529196551%_ _%g196530196555%_)))))
          (_%g196528196620%_ _%$stx196525%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196624%_)
        (let* ((_%g196628196642%_
                (lambda (_%g196629196638%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196629196638%_))))
               (_%g196627196683%_
                (lambda (_%g196629196646%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196629196646%_))
                      (let ((_%e196633196649%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196629196646%_))))
                        (let ((_%hd196632196653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196633196649%_)))
                              (_%tl196631196656%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196633196649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196631196656%_))
                              (let ((_%e196636196659%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196631196656%_))))
                                (let ((_%hd196635196663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196636196659%_)))
                                      (_%tl196634196666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196636196659%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196634196666%_))
                                      ((lambda (_%L196669%_)
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
                                                           (cons _%L196669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196635196663%_)
                                      (_%g196628196642%_ _%g196629196646%_))))
                              (_%g196628196642%_ _%g196629196646%_))))
                      (_%g196628196642%_ _%g196629196646%_)))))
          (_%g196627196683%_ _%$stx196624%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196687%_)
        (let* ((_%g196691196709%_
                (lambda (_%g196692196705%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196692196705%_))))
               (_%g196690196764%_
                (lambda (_%g196692196713%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196692196713%_))
                      (let ((_%e196697196716%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196692196713%_))))
                        (let ((_%hd196696196720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196697196716%_)))
                              (_%tl196695196723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196697196716%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196695196723%_))
                              (let ((_%e196700196726%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196695196723%_))))
                                (let ((_%hd196699196730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196700196726%_)))
                                      (_%tl196698196733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196700196726%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196698196733%_))
                                      (let ((_%e196703196736%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196698196733%_))))
                                        (let ((_%hd196702196740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196703196736%_)))
                                              (_%tl196701196743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196703196736%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196701196743%_))
                                              ((lambda (_%L196746%_
                                                        _%L196748%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196748%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196746%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196702196740%_
                                               _%hd196699196730%_)
                                              (_%g196691196709%_
                                               _%g196692196713%_))))
                                      (_%g196691196709%_ _%g196692196713%_))))
                              (_%g196691196709%_ _%g196692196713%_))))
                      (_%g196691196709%_ _%g196692196713%_)))))
          (_%g196690196764%_ _%$stx196687%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx196768%_)
        (let* ((_%__stx200972200973%_ _%$stx196768%_)
               (_%g196775196836%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200972200973%_)))))
          (let ((_%__kont200975200976%_
                 (lambda (_%L197074%_ _%L197076%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197076%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197074%_ '()))
                                     '())))))
                (_%__kont200977200978%_
                 (lambda (_%L197013%_ _%L197015%_ _%L197016%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197016%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197015%_ '()))
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
                                 (cons _%L197013%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont200979200980%_
                 (lambda (_%L196937%_ _%L196939%_)
                   (cons _%L196939%_ (cons _%L196937%_ (cons '#f '())))))
                (_%__kont200981200982%_
                 (lambda (_%L196887%_ _%L196889%_ _%L196890%_)
                   (cons _%L196890%_
                         (cons _%L196889%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L196887%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200972200973%_))
                (let ((_%e196781197044%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200972200973%_))))
                  (let ((_%tl196779197051%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196781197044%_)))
                        (_%hd196780197048%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196781197044%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl196779197051%_))
                        (let ((_%e196784197054%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl196779197051%_))))
                          (let ((_%tl196782197061%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196784197054%_)))
                                (_%hd196783197058%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196784197054%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196782197061%_))
                                (let ((_%e196787197064%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196782197061%_))))
                                  (let ((_%tl196785197071%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196787197064%_)))
                                        (_%hd196786197068%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196787197064%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196785197071%_))
                                        (_%__kont200975200976%_
                                         _%hd196786197068%_
                                         _%hd196783197058%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196785197071%_))
                                            (let ((_%e196802196989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl196785197071%_))))
                                              (let ((_%tl196800196996%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196802196989%_)))
                                                    (_%hd196801196993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196802196989%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd196801196993%_))
                                                    (let ((_%e196803196999%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd196801196993%_))))
                                                      (if (equal? _%e196803196999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196800196996%_))
                      (let ((_%e196806197003%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196800196996%_))))
                        (let ((_%tl196804197010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196806197003%_)))
                              (_%hd196805197007%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196806197003%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196804197010%_))
                              (_%__kont200977200978%_
                               _%hd196805197007%_
                               _%hd196786197068%_
                               _%hd196783197058%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd196786197068%_))
                                  (let ((_%e196827196873%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196786197068%_))))
                                    (declare (not safe))
                                    (_%g196775196836%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196775196836%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd196786197068%_))
                          (let ((_%e196827196873%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196786197068%_))))
                            (if (equal? _%e196827196873%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196800196996%_))
                                    (_%__kont200981200982%_
                                     _%hd196801196993%_
                                     _%hd196783197058%_
                                     _%hd196780197048%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196775196836%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g196775196836%_))))
                          (let () (declare (not safe)) (_%g196775196836%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd196786197068%_))
                      (let ((_%e196827196873%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd196786197068%_))))
                        (if (equal? _%e196827196873%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196800196996%_))
                                (_%__kont200981200982%_
                                 _%hd196801196993%_
                                 _%hd196783197058%_
                                 _%hd196780197048%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g196775196836%_)))
                            (let () (declare (not safe)) (_%g196775196836%_))))
                      (let () (declare (not safe)) (_%g196775196836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd196786197068%_))
                                                        (let ((_%e196827196873%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd196786197068%_))))
                  (if (equal? _%e196827196873%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196800196996%_))
                          (_%__kont200981200982%_
                           _%hd196801196993%_
                           _%hd196783197058%_
                           _%hd196780197048%_)
                          (let () (declare (not safe)) (_%g196775196836%_)))
                      (let () (declare (not safe)) (_%g196775196836%_))))
                (let () (declare (not safe)) (_%g196775196836%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd196786197068%_))
                                                (let ((_%e196827196873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd196786197068%_))))
                                                  (declare (not safe))
                                                  (_%g196775196836%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196775196836%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196782197061%_))
                                    (_%__kont200979200980%_
                                     _%hd196783197058%_
                                     _%hd196780197048%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196775196836%_))))))
                        (let () (declare (not safe)) (_%g196775196836%_)))))
                (let () (declare (not safe)) (_%g196775196836%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx197095%_)
        (let* ((_%g197099197128%_
                (lambda (_%g197100197124%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197100197124%_))))
               (_%g197098197237%_
                (lambda (_%g197100197132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197100197132%_))
                      (let ((_%e197104197135%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197100197132%_))))
                        (let ((_%hd197103197139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197104197135%_)))
                              (_%tl197102197142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197104197135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197102197142%_))
                              (let ((_g201602_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197102197142%_
                                        '0))))
                                (begin
                                  (let ((_g201603_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201602_)
                                               (##vector-length _g201602_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201603_ 2)))
                                        (error "Context expects 2 values"
                                               _g201603_)))
                                  (let ((_%target197105197145%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201602_ 0)))
                                        (_%tl197107197148%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201602_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197107197148%_))
                                        (letrec ((_%loop197108197151%_
                                                  (lambda (_%hd197106197155%_
                                                           _%clause197112197158%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197106197155%_))
                                                        (let ((_%e197109197161%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197106197155%_))))
                  (let ((_%lp-hd197110197165%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197109197161%_)))
                        (_%lp-tl197111197168%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197109197161%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd197110197165%_))
                        (let ((_g201604_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd197110197165%_
                                  '0))))
                          (begin
                            (let ((_g201605_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201604_)
                                         (##vector-length _g201604_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201605_ 2)))
                                  (error "Context expects 2 values"
                                         _g201605_)))
                            (let ((_%target197114197171%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201604_ 0)))
                                  (_%tl197116197174%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201604_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197116197174%_))
                                  (letrec ((_%loop197117197177%_
                                            (lambda (_%hd197115197181%_
                                                     _%clause197121197184%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd197115197181%_))
                                                  (let ((_%e197118197187%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd197115197181%_))))
                                                    (let ((_%lp-hd197119197191%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197118197187%_)))
                                                          (_%lp-tl197120197194%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197118197187%_))))
                                                      (_%loop197117197177%_
                                                       _%lp-tl197120197194%_
                                                       (cons _%lp-hd197119197191%_
                                                             _%clause197121197184%_))))
                                                  (let ((_%clause197122197197%_
                                                         (reverse _%clause197121197184%_)))
                                                    (_%loop197108197151%_
                                                     _%lp-tl197111197168%_
                                                     (cons _%clause197122197197%_
                                                           _%clause197112197158%_)))))))
                                    (_%loop197117197177%_
                                     _%target197114197171%_
                                     '()))
                                  (_%g197099197128%_ _%g197100197132%_)))))
                        (_%g197099197128%_ _%g197100197132%_))))
                (let ((_%clause197113197201%_
                       (reverse _%clause197112197158%_)))
                  ((lambda (_%L197205%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp201606
                                              (lambda (_%g197220197225%_
                                                       _%g197221197228%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp201607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g197222197231%_ _%g197223197234%_)
                             (cons _%g197222197231%_ _%g197223197234%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201607 '() _%g197220197225%_)))
              _%g197221197228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp201606
                                          '()
                                          _%L197205%_)))
                                 '())))
                   _%clause197113197201%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197108197151%_
                                           _%target197105197145%_
                                           '()))
                                        (_%g197099197128%_
                                         _%g197100197132%_)))))
                              (_%g197099197128%_ _%g197100197132%_))))
                      (_%g197099197128%_ _%g197100197132%_)))))
          (_%g197098197237%_ _%$stx197095%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx197243%_)
        (let* ((_%g197247197265%_
                (lambda (_%g197248197261%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197248197261%_))))
               (_%g197246197320%_
                (lambda (_%g197248197269%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197248197269%_))
                      (let ((_%e197253197272%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197248197269%_))))
                        (let ((_%hd197252197276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197253197272%_)))
                              (_%tl197251197279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197253197272%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197251197279%_))
                              (let ((_%e197256197282%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197251197279%_))))
                                (let ((_%hd197255197286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197256197282%_)))
                                      (_%tl197254197289%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197256197282%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197254197289%_))
                                      (let ((_%e197259197292%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197254197289%_))))
                                        (let ((_%hd197258197296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197259197292%_)))
                                              (_%tl197257197299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197259197292%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197257197299%_))
                                              ((lambda (_%L197302%_
                                                        _%L197304%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197304%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197302%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197258197296%_
                                               _%hd197255197286%_)
                                              (_%g197247197265%_
                                               _%g197248197269%_))))
                                      (_%g197247197265%_ _%g197248197269%_))))
                              (_%g197247197265%_ _%g197248197269%_))))
                      (_%g197247197265%_ _%g197248197269%_)))))
          (_%g197246197320%_ _%$stx197243%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx197324%_)
        (let* ((_%g197328197346%_
                (lambda (_%g197329197342%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197329197342%_))))
               (_%g197327197401%_
                (lambda (_%g197329197350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197329197350%_))
                      (let ((_%e197334197353%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197329197350%_))))
                        (let ((_%hd197333197357%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197334197353%_)))
                              (_%tl197332197360%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197334197353%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197332197360%_))
                              (let ((_%e197337197363%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197332197360%_))))
                                (let ((_%hd197336197367%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197337197363%_)))
                                      (_%tl197335197370%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197337197363%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197335197370%_))
                                      (let ((_%e197340197373%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197335197370%_))))
                                        (let ((_%hd197339197377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197340197373%_)))
                                              (_%tl197338197380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197340197373%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197338197380%_))
                                              ((lambda (_%L197383%_
                                                        _%L197385%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197385%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197383%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197339197377%_
                                               _%hd197336197367%_)
                                              (_%g197328197346%_
                                               _%g197329197350%_))))
                                      (_%g197328197346%_ _%g197329197350%_))))
                              (_%g197328197346%_ _%g197329197350%_))))
                      (_%g197328197346%_ _%g197329197350%_)))))
          (_%g197327197401%_ _%$stx197324%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx197405%_)
        (let* ((_%g197409197438%_
                (lambda (_%g197410197434%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197410197434%_))))
               (_%g197408197538%_
                (lambda (_%g197410197442%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197410197442%_))
                      (let ((_%e197415197445%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197410197442%_))))
                        (let ((_%hd197414197449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197415197445%_)))
                              (_%tl197413197452%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197415197445%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197413197452%_))
                              (let ((_g201608_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197413197452%_
                                        '0))))
                                (begin
                                  (let ((_g201609_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201608_)
                                               (##vector-length _g201608_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201609_ 2)))
                                        (error "Context expects 2 values"
                                               _g201609_)))
                                  (let ((_%target197416197455%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201608_ 0)))
                                        (_%tl197418197458%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201608_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197418197458%_))
                                        (letrec ((_%loop197419197461%_
                                                  (lambda (_%hd197417197465%_
                                                           _%rule197423197468%_
                                                           _%proc197424197470%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197417197465%_))
                                                        (let ((_%e197420197473%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197417197465%_))))
                  (let ((_%lp-hd197421197477%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197420197473%_)))
                        (_%lp-tl197422197480%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197420197473%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197421197477%_))
                        (let ((_%e197429197483%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197421197477%_))))
                          (let ((_%hd197428197487%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197429197483%_)))
                                (_%tl197427197490%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197429197483%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197427197490%_))
                                (let ((_%e197432197493%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197427197490%_))))
                                  (let ((_%hd197431197497%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197432197493%_)))
                                        (_%tl197430197500%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197432197493%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197430197500%_))
                                        (_%loop197419197461%_
                                         _%lp-tl197422197480%_
                                         (cons _%hd197431197497%_
                                               _%rule197423197468%_)
                                         (cons _%hd197428197487%_
                                               _%proc197424197470%_))
                                        (_%g197409197438%_
                                         _%g197410197442%_))))
                                (_%g197409197438%_ _%g197410197442%_))))
                        (_%g197409197438%_ _%g197410197442%_))))
                (let ((_%rule197425197503%_ (reverse _%rule197423197468%_))
                      (_%proc197426197506%_ (reverse _%proc197424197470%_)))
                  ((lambda (_%L197509%_ _%L197511%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197509%_
                                _%L197511%_))
                             (let ((__tmp201610
                                    (lambda (_%g197526197530%_
                                             _%g197527197533%_
                                             _%g197528197535%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g197527197533%_
                                                        (cons _%g197526197530%_
                                                              '())))
                                            _%g197528197535%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201610
                                '()
                                _%L197509%_
                                _%L197511%_)))))
                   _%rule197425197503%_
                   _%proc197426197506%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197419197461%_
                                           _%target197416197455%_
                                           '()
                                           '()))
                                        (_%g197409197438%_
                                         _%g197410197442%_)))))
                              (_%g197409197438%_ _%g197410197442%_))))
                      (_%g197409197438%_ _%g197410197442%_)))))
          (_%g197408197538%_ _%$stx197405%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx197543%_)
        (let* ((_%g197547197565%_
                (lambda (_%g197548197561%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197548197561%_))))
               (_%g197546197620%_
                (lambda (_%g197548197569%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197548197569%_))
                      (let ((_%e197553197572%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197548197569%_))))
                        (let ((_%hd197552197576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197553197572%_)))
                              (_%tl197551197579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197553197572%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197551197579%_))
                              (let ((_%e197556197582%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197551197579%_))))
                                (let ((_%hd197555197586%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197556197582%_)))
                                      (_%tl197554197589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197556197582%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197554197589%_))
                                      (let ((_%e197559197592%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197554197589%_))))
                                        (let ((_%hd197558197596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197559197592%_)))
                                              (_%tl197557197599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197559197592%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197557197599%_))
                                              ((lambda (_%L197602%_
                                                        _%L197604%_)
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
                                                   (cons _%L197604%_ '()))
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
                 (cons _%L197602%_ '())))
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
                                   (cons _%L197604%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197558197596%_
                                               _%hd197555197586%_)
                                              (_%g197547197565%_
                                               _%g197548197569%_))))
                                      (_%g197547197565%_ _%g197548197569%_))))
                              (_%g197547197565%_ _%g197548197569%_))))
                      (_%g197547197565%_ _%g197548197569%_)))))
          (_%g197546197620%_ _%$stx197543%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197624%_)
        (let* ((_%__stx201090201091%_ _%$stx197624%_)
               (_%g197629197654%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201090201091%_)))))
          (let ((_%__kont201093201094%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201095201096%_
                 (lambda (_%L197701%_ _%L197703%_ _%L197704%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L197704%_ (cons _%L197703%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L197701%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201090201091%_))
                (let ((_%e197633197730%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201090201091%_))))
                  (let ((_%tl197631197737%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197633197730%_)))
                        (_%hd197632197734%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197633197730%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197631197737%_))
                        (_%__kont201093201094%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197631197737%_))
                            (let ((_%e197642197671%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197631197737%_))))
                              (let ((_%tl197640197678%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197642197671%_)))
                                    (_%hd197641197675%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197642197671%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197641197675%_))
                                    (let ((_%e197645197681%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197641197675%_))))
                                      (let ((_%tl197643197688%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197645197681%_)))
                                            (_%hd197644197685%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197645197681%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197643197688%_))
                                            (let ((_%e197648197691%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197643197688%_))))
                                              (let ((_%tl197646197698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197648197691%_)))
                                                    (_%hd197647197695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197648197691%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197646197698%_))
                                                    (_%__kont201095201096%_
                                                     _%tl197640197678%_
                                                     _%hd197647197695%_
                                                     _%hd197644197685%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197629197654%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197629197654%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197629197654%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197629197654%_))))))
                (let () (declare (not safe)) (_%g197629197654%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx197748%_)
        (let* ((_%__stx201134201135%_ _%$stx197748%_)
               (_%g197753197784%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201134201135%_)))))
          (let ((_%__kont201137201138%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201139201140%_
                 (lambda (_%L197851%_ _%L197853%_ _%L197854%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L197854%_
                                           (let ((__tmp201611
                                                  (lambda (_%g197874197877%_
                                                           _%g197875197880%_)
                                                    (cons _%g197874197877%_
                                                          _%g197875197880%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201611
                                              '()
                                              _%L197853%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L197851%_)
                                     '()))))))
            (let ((_%__match201177201178%_
                   (lambda (_%e197763197791%_
                            _%hd197762197795%_
                            _%tl197761197798%_
                            _%e197766197801%_
                            _%hd197765197805%_
                            _%tl197764197808%_
                            _%e197769197811%_
                            _%hd197768197815%_
                            _%tl197767197818%_
                            _%__splice201141201142%_
                            _%target197770197821%_
                            _%tl197772197824%_)
                     (letrec ((_%loop197773197827%_
                               (lambda (_%hd197771197831%_ _%sig197777197834%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197771197831%_))
                                     (let ((_%e197774197837%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd197771197831%_))))
                                       (let ((_%lp-tl197776197844%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197774197837%_)))
                                             (_%lp-hd197775197841%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197774197837%_))))
                                         (_%loop197773197827%_
                                          _%lp-tl197776197844%_
                                          (cons _%lp-hd197775197841%_
                                                _%sig197777197834%_))))
                                     (let ((_%sig197778197847%_
                                            (reverse _%sig197777197834%_)))
                                       (_%__kont201139201140%_
                                        _%tl197764197808%_
                                        _%sig197778197847%_
                                        _%hd197768197815%_))))))
                       (_%loop197773197827%_ _%target197770197821%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201134201135%_))
                  (let ((_%e197757197890%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201134201135%_))))
                    (let ((_%tl197755197897%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197757197890%_)))
                          (_%hd197756197894%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197757197890%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197755197897%_))
                          (_%__kont201137201138%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197755197897%_))
                              (let ((_%e197766197801%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197755197897%_))))
                                (let ((_%tl197764197808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197766197801%_)))
                                      (_%hd197765197805%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197766197801%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197765197805%_))
                                      (let ((_%e197769197811%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197765197805%_))))
                                        (let ((_%tl197767197818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197769197811%_)))
                                              (_%hd197768197815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197769197811%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197767197818%_))
                                              (let ((_%__splice201141201142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197767197818%_
                                                        '0))))
                                                (let ((_%tl197772197824%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201141201142%_
                                                          '1)))
                                                      (_%target197770197821%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201141201142%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197772197824%_))
                                                      (_%__match201177201178%_
                                                       _%e197757197890%_
                                                       _%hd197756197894%_
                                                       _%tl197755197897%_
                                                       _%e197766197801%_
                                                       _%hd197765197805%_
                                                       _%tl197764197808%_
                                                       _%e197769197811%_
                                                       _%hd197768197815%_
                                                       _%tl197767197818%_
                                                       _%__splice201141201142%_
                                                       _%target197770197821%_
                                                       _%tl197772197824%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197753197784%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197753197784%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197753197784%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197753197784%_))))))
                  (let () (declare (not safe)) (_%g197753197784%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx197909%_)
        (let* ((_%__stx201180201181%_ _%$stx197909%_)
               (_%g197914197961%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201180201181%_)))))
          (let ((_%__kont201183201184%_
                 (lambda (_%L198123%_ _%L198125%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L198125%_
                               (let ((__tmp201612
                                      (lambda (_%g198145198148%_
                                               _%g198146198151%_)
                                        (cons _%g198145198148%_
                                              _%g198146198151%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201612 '() _%L198123%_))))))
                (_%__kont201187201188%_
                 (lambda (_%L198018%_ _%L198020%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L198020%_
                               (let ((__tmp201613
                                      (lambda (_%g198037198040%_
                                               _%g198038198043%_)
                                        (cons _%g198037198040%_
                                              _%g198038198043%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201613 '() _%L198018%_)))))))
            (let* ((_%__match201247201248%_
                    (lambda (_%e197943197968%_
                             _%hd197942197972%_
                             _%tl197941197975%_
                             _%e197946197978%_
                             _%hd197945197982%_
                             _%tl197944197985%_
                             _%__splice201189201190%_
                             _%target197947197988%_
                             _%tl197949197991%_)
                      (letrec ((_%loop197950197994%_
                                (lambda (_%hd197948197998%_
                                         _%sig197954198001%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197948197998%_))
                                      (let ((_%e197951198004%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197948197998%_))))
                                        (let ((_%lp-tl197953198011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197951198004%_)))
                                              (_%lp-hd197952198008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197951198004%_))))
                                          (_%loop197950197994%_
                                           _%lp-tl197953198011%_
                                           (cons _%lp-hd197952198008%_
                                                 _%sig197954198001%_))))
                                      (let ((_%sig197955198014%_
                                             (reverse _%sig197954198001%_)))
                                        (_%__kont201187201188%_
                                         _%sig197955198014%_
                                         _%hd197945197982%_))))))
                        (_%loop197950197994%_ _%target197947197988%_ '()))))
                   (_%__match201239201240%_
                    (lambda (_%e197943197968%_
                             _%hd197942197972%_
                             _%tl197941197975%_
                             _%e197946197978%_
                             _%hd197945197982%_
                             _%tl197944197985%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl197944197985%_))
                          (let ((_%__splice201189201190%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl197944197985%_
                                    '0))))
                            (let ((_%tl197949197991%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201189201190%_
                                      '1)))
                                  (_%target197947197988%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201189201190%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197949197991%_))
                                  (_%__match201247201248%_
                                   _%e197943197968%_
                                   _%hd197942197972%_
                                   _%tl197941197975%_
                                   _%e197946197978%_
                                   _%hd197945197982%_
                                   _%tl197944197985%_
                                   _%__splice201189201190%_
                                   _%target197947197988%_
                                   _%tl197949197991%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g197914197961%_)))))
                          (let () (declare (not safe)) (_%g197914197961%_)))))
                   (_%__match201227201228%_
                    (lambda (_%e197920198053%_
                             _%hd197919198057%_
                             _%tl197918198060%_
                             _%e197923198063%_
                             _%hd197922198067%_
                             _%tl197921198070%_
                             _%e197926198073%_
                             _%hd197925198077%_
                             _%tl197924198080%_
                             _%e197929198083%_
                             _%hd197928198087%_
                             _%tl197927198090%_
                             _%__splice201185201186%_
                             _%target197930198093%_
                             _%tl197932198096%_)
                      (letrec ((_%loop197933198099%_
                                (lambda (_%hd197931198103%_
                                         _%sig197937198106%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197931198103%_))
                                      (let ((_%e197934198109%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197931198103%_))))
                                        (let ((_%lp-tl197936198116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197934198109%_)))
                                              (_%lp-hd197935198113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197934198109%_))))
                                          (_%loop197933198099%_
                                           _%lp-tl197936198116%_
                                           (cons _%lp-hd197935198113%_
                                                 _%sig197937198106%_))))
                                      (let ((_%sig197938198119%_
                                             (reverse _%sig197937198106%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197924198080%_))
                                            (_%__kont201183201184%_
                                             _%sig197938198119%_
                                             _%hd197922198067%_)
                                            (_%__match201239201240%_
                                             _%e197920198053%_
                                             _%hd197919198057%_
                                             _%tl197918198060%_
                                             _%e197923198063%_
                                             _%hd197922198067%_
                                             _%tl197921198070%_)))))))
                        (_%loop197933198099%_ _%target197930198093%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201180201181%_))
                  (let ((_%e197920198053%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201180201181%_))))
                    (let ((_%tl197918198060%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197920198053%_)))
                          (_%hd197919198057%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197920198053%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197918198060%_))
                          (let ((_%e197923198063%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197918198060%_))))
                            (let ((_%tl197921198070%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197923198063%_)))
                                  (_%hd197922198067%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197923198063%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197921198070%_))
                                  (let ((_%e197926198073%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197921198070%_))))
                                    (let ((_%tl197924198080%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197926198073%_)))
                                          (_%hd197925198077%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197926198073%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd197925198077%_))
                                          (let ((_%e197929198083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd197925198077%_))))
                                            (let ((_%tl197927198090%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197929198083%_)))
                                                  (_%hd197928198087%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197929198083%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd197928198087%_))
                                                  (if (let ((__tmp201614
                                                             |gxc[1]#_g201615_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp201614
                                                         _%hd197928198087%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl197927198090%_))
                                                          (let ((_%__splice201185201186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197927198090%_ '0))))
                    (let ((_%tl197932198096%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201185201186%_ '1)))
                          (_%target197930198093%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201185201186%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197932198096%_))
                          (_%__match201227201228%_
                           _%e197920198053%_
                           _%hd197919198057%_
                           _%tl197918198060%_
                           _%e197923198063%_
                           _%hd197922198067%_
                           _%tl197921198070%_
                           _%e197926198073%_
                           _%hd197925198077%_
                           _%tl197924198080%_
                           _%e197929198083%_
                           _%hd197928198087%_
                           _%tl197927198090%_
                           _%__splice201185201186%_
                           _%target197930198093%_
                           _%tl197932198096%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197921198070%_))
                              (let ((_%__splice201189201190%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197921198070%_
                                        '0))))
                                (let ((_%tl197949197991%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201189201190%_
                                          '1)))
                                      (_%target197947197988%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201189201190%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197949197991%_))
                                      (_%__match201247201248%_
                                       _%e197920198053%_
                                       _%hd197919198057%_
                                       _%tl197918198060%_
                                       _%e197923198063%_
                                       _%hd197922198067%_
                                       _%tl197921198070%_
                                       _%__splice201189201190%_
                                       _%target197947197988%_
                                       _%tl197949197991%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g197914197961%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197914197961%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197921198070%_))
                      (let ((_%__splice201189201190%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197921198070%_
                                '0))))
                        (let ((_%tl197949197991%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201189201190%_ '1)))
                              (_%target197947197988%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201189201190%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197949197991%_))
                              (_%__match201247201248%_
                               _%e197920198053%_
                               _%hd197919198057%_
                               _%tl197918198060%_
                               _%e197923198063%_
                               _%hd197922198067%_
                               _%tl197921198070%_
                               _%__splice201189201190%_
                               _%target197947197988%_
                               _%tl197949197991%_)
                              (let ()
                                (declare (not safe))
                                (_%g197914197961%_)))))
                      (let () (declare (not safe)) (_%g197914197961%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl197921198070%_))
                  (let ((_%__splice201189201190%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197921198070%_ '0))))
                    (let ((_%tl197949197991%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201189201190%_ '1)))
                          (_%target197947197988%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201189201190%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197949197991%_))
                          (_%__match201247201248%_
                           _%e197920198053%_
                           _%hd197919198057%_
                           _%tl197918198060%_
                           _%e197923198063%_
                           _%hd197922198067%_
                           _%tl197921198070%_
                           _%__splice201189201190%_
                           _%target197947197988%_
                           _%tl197949197991%_)
                          (let () (declare (not safe)) (_%g197914197961%_)))))
                  (let () (declare (not safe)) (_%g197914197961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197921198070%_))
                                                      (let ((_%__splice201189201190%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl197921198070%_ '0))))
                (let ((_%tl197949197991%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201189201190%_ '1)))
                      (_%target197947197988%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201189201190%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197949197991%_))
                      (_%__match201247201248%_
                       _%e197920198053%_
                       _%hd197919198057%_
                       _%tl197918198060%_
                       _%e197923198063%_
                       _%hd197922198067%_
                       _%tl197921198070%_
                       _%__splice201189201190%_
                       _%target197947197988%_
                       _%tl197949197991%_)
                      (let () (declare (not safe)) (_%g197914197961%_)))))
              (let () (declare (not safe)) (_%g197914197961%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197921198070%_))
                                              (let ((_%__splice201189201190%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197921198070%_
                                                        '0))))
                                                (let ((_%tl197949197991%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201189201190%_
                                                          '1)))
                                                      (_%target197947197988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201189201190%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197949197991%_))
                                                      (_%__match201247201248%_
                                                       _%e197920198053%_
                                                       _%hd197919198057%_
                                                       _%tl197918198060%_
                                                       _%e197923198063%_
                                                       _%hd197922198067%_
                                                       _%tl197921198070%_
                                                       _%__splice201189201190%_
                                                       _%target197947197988%_
                                                       _%tl197949197991%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197914197961%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197914197961%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197921198070%_))
                                      (let ((_%__splice201189201190%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197921198070%_
                                                '0))))
                                        (let ((_%tl197949197991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201189201190%_
                                                  '1)))
                                              (_%target197947197988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201189201190%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197949197991%_))
                                              (_%__match201247201248%_
                                               _%e197920198053%_
                                               _%hd197919198057%_
                                               _%tl197918198060%_
                                               _%e197923198063%_
                                               _%hd197922198067%_
                                               _%tl197921198070%_
                                               _%__splice201189201190%_
                                               _%target197947197988%_
                                               _%tl197949197991%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197914197961%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197914197961%_))))))
                          (let () (declare (not safe)) (_%g197914197961%_)))))
                  (let () (declare (not safe)) (_%g197914197961%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx199239%_ _%id199241%_)
        (let ((_%proc199245%_
               (let ((__tmp201616
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199241%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201616))))
          (if (let () (declare (not safe)) (procedure? _%proc199245%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx199239%_
                 _%id199241%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx199230%_ _%id199232%_)
        (let ((_%klass199236%_
               (let ((__tmp201617
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199232%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201617))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass199236%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx199230%_
                 _%id199232%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx198480%_ _%proc198482%_ _%sig198483%_)
        (letrec ((_%signature-arity198485%_
                  (lambda (_%args199162%_)
                    (let _%loop199165%_ ((_%rest199168%_ _%args199162%_)
                                         (_%count199170%_ '0))
                      (let* ((_%rest199171199182%_ _%rest199168%_)
                             (_%E199175199188%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest199171199182%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K199178199219%_
                               (lambda (_%rest199216%_)
                                 (let ((__tmp201618
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count199170%_ '1))))
                                   (declare (not safe))
                                   (_%loop199165%_
                                    _%rest199216%_
                                    __tmp201618))))
                              (_%K199177199208%_ (lambda () _%count199170%_))
                              (_%K199176199196%_
                               (lambda () (cons _%count199170%_ '()))))
                          (let ((_%try-match199173199212%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest199171199182%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K199177199208%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K199176199196%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest199171199182%_))
                                (let* ((_%tl199180199223%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199171199182%_)))
                                       (_%rest199227%_ _%tl199180199223%_))
                                  (declare (not safe))
                                  (_%K199178199219%_ _%rest199227%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match199173199212%_)))))))))
                 (_%make-signature198487%_
                  (lambda (_%args199044%_
                           _%return199046%_
                           _%effect199047%_
                           _%unchecked199048%_)
                    (let ((__tmp201619
                           (lambda (_%g199049199051%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx198480%_
                                _%g199049199051%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp201619 _%args199044%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx198480%_ _%return199046%_))
                    (if _%unchecked199048%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx198480%_
                           _%unchecked199048%_))
                        '#!void)
                    (let ((_%arity199055%_
                           (let ((__tmp201620
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args199044%_))))
                             (declare (not safe))
                             (_%signature-arity198485%_ __tmp201620))))
                      (if _%effect199047%_
                          (let ((_%effect199058%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect199047%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect199058%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect199058%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx198480%_
                                   _%proc198482%_
                                   _%effect199058%_))))
                          '#!void)
                      (cons _%arity199055%_
                            (cons (let* ((_%g199061199084%_
                                          (lambda (_%g199062199080%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g199062199080%_))))
                                         (_%g199060199158%_
                                          (lambda (_%g199062199088%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g199062199088%_))
                                                (let ((_%e199069199091%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g199062199088%_))))
                                                  (let ((_%hd199068199095%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199069199091%_)))
                                                        (_%tl199067199098%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199069199091%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199067199098%_))
                                                        (let ((_%e199072199101%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199067199098%_))))
                  (let ((_%hd199071199105%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199072199101%_)))
                        (_%tl199070199108%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199072199101%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199070199108%_))
                        (let ((_%e199075199111%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199070199108%_))))
                          (let ((_%hd199074199115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199075199111%_)))
                                (_%tl199073199118%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199075199111%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199073199118%_))
                                (let ((_%e199078199121%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199073199118%_))))
                                  (let ((_%hd199077199125%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199078199121%_)))
                                        (_%tl199076199128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199078199121%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199076199128%_))
                                        ((lambda (_%L199131%_
                                                  _%L199133%_
                                                  _%L199134%_
                                                  _%L199135%_)
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
                             (cons _%L199135%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L199134%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L199133%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L199131%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd199077199125%_
                                         _%hd199074199115%_
                                         _%hd199071199105%_
                                         _%hd199068199095%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g199061199084%_
                                           _%g199062199088%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199061199084%_ _%g199062199088%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g199061199084%_ _%g199062199088%_)))))
                (let ()
                  (declare (not safe))
                  (_%g199061199084%_ _%g199062199088%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199061199084%_
                                                   _%g199062199088%_)))))
                                         (__tmp201621
                                          (list _%args199044%_
                                                _%return199046%_
                                                _%effect199047%_
                                                _%unchecked199048%_)))
                                    (declare (not safe))
                                    (_%g199060199158%_ __tmp201621))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx198480%_ _%proc198482%_))
          (let* ((_%__stx201258201259%_ _%sig198483%_)
                 (_%g198494198597%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201258201259%_)))))
            (let ((_%__kont201261201262%_
                   (lambda (_%L199025%_ _%L199027%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature198487%_
                        _%L199027%_
                        _%L199025%_
                        '#f
                        '#f))))
                  (_%__kont201263201264%_
                   (lambda (_%L198976%_ _%L198978%_ _%L198979%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature198487%_
                        _%L198979%_
                        _%L198978%_
                        _%L198976%_
                        '#f))))
                  (_%__kont201265201266%_
                   (lambda (_%L198900%_ _%L198902%_ _%L198903%_)
                     (let ((__tmp201622
                            (let ((__tmp201623
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc198482%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201623))))
                       (declare (not safe))
                       (_%make-signature198487%_
                        _%L198903%_
                        _%L198902%_
                        _%L198900%_
                        __tmp201622))))
                  (_%__kont201267201268%_
                   (lambda (_%L198806%_ _%L198808%_ _%L198809%_ _%L198810%_)
                     (let ((__tmp201624
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198806%_))))
                       (declare (not safe))
                       (_%make-signature198487%_
                        _%L198810%_
                        _%L198809%_
                        '#f
                        __tmp201624))))
                  (_%__kont201269201270%_
                   (lambda (_%L198713%_ _%L198715%_)
                     (let ((__tmp201625
                            (let ((__tmp201626
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc198482%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201626))))
                       (declare (not safe))
                       (_%make-signature198487%_
                        _%L198715%_
                        _%L198713%_
                        '#f
                        __tmp201625))))
                  (_%__kont201271201272%_
                   (lambda (_%L198648%_ _%L198650%_ _%L198651%_)
                     (let ((__tmp201627
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198648%_))))
                       (declare (not safe))
                       (_%make-signature198487%_
                        _%L198651%_
                        _%L198650%_
                        '#f
                        __tmp201627)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201258201259%_))
                  (let ((_%e198500199005%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201258201259%_))))
                    (let ((_%tl198498199012%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198500199005%_)))
                          (_%hd198499199009%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198500199005%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198498199012%_))
                          (let ((_%e198503199015%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198498199012%_))))
                            (let ((_%tl198501199022%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198503199015%_)))
                                  (_%hd198502199019%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198503199015%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198501199022%_))
                                  (_%__kont201261201262%_
                                   _%hd198502199019%_
                                   _%hd198499199009%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198501199022%_))
                                      (let ((_%e198515198952%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198501199022%_))))
                                        (let ((_%tl198513198959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198515198952%_)))
                                              (_%hd198514198956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198515198952%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd198514198956%_))
                                              (let ((_%e198516198962%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd198514198956%_))))
                                                (if (equal? _%e198516198962%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198513198959%_))
                                                        (let ((_%e198519198966%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198513198959%_))))
                  (let ((_%tl198517198973%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198519198966%_)))
                        (_%hd198518198970%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198519198966%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198517198973%_))
                        (_%__kont201263201264%_
                         _%hd198518198970%_
                         _%hd198502199019%_
                         _%hd198499199009%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198517198973%_))
                            (let ((_%e198538198886%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198517198973%_))))
                              (let ((_%tl198536198893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198538198886%_)))
                                    (_%hd198537198890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198538198886%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd198537198890%_))
                                    (let ((_%e198539198896%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198537198890%_))))
                                      (if (equal? _%e198539198896%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198536198893%_))
                                              (_%__kont201265201266%_
                                               _%hd198518198970%_
                                               _%hd198502199019%_
                                               _%hd198499199009%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198536198893%_))
                                                  (let ((_%e198563198796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198536198893%_))))
                                                    (let ((_%tl198561198803%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198563198796%_)))
                                                          (_%hd198562198800%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198563198796%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198561198803%_))
                                                          (_%__kont201267201268%_
                                                           _%hd198562198800%_
                                                           _%hd198518198970%_
                                                           _%hd198502199019%_
                                                           _%hd198499199009%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g198494198597%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198494198597%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198494198597%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198494198597%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198494198597%_))))))
                (let () (declare (not safe)) (_%g198494198597%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e198516198962%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198513198959%_))
                                                            (_%__kont201269201270%_
                                                             _%hd198502199019%_
                                                             _%hd198499199009%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198513198959%_))
                        (let ((_%e198591198638%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198513198959%_))))
                          (let ((_%tl198589198645%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198591198638%_)))
                                (_%hd198590198642%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198591198638%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198589198645%_))
                                (_%__kont201271201272%_
                                 _%hd198590198642%_
                                 _%hd198502199019%_
                                 _%hd198499199009%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198494198597%_)))))
                        (let () (declare (not safe)) (_%g198494198597%_))))
                (let () (declare (not safe)) (_%g198494198597%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198494198597%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198494198597%_))))))
                          (let () (declare (not safe)) (_%g198494198597%_)))))
                  (let () (declare (not safe)) (_%g198494198597%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig198160%_)
        (let* ((_%g198163198229%_
                (lambda (_%g198164198225%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198164198225%_))))
               (_%g198162198476%_
                (lambda (_%g198164198233%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198164198233%_))
                      (let ((_%e198171198236%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198164198233%_))))
                        (let ((_%hd198170198240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198171198236%_)))
                              (_%tl198169198243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198171198236%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198169198243%_))
                              (let ((_%e198174198246%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198169198243%_))))
                                (let ((_%hd198173198250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198174198246%_)))
                                      (_%tl198172198253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198174198246%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd198173198250%_))
                                      (let ((_%e198175198256%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd198173198250%_))))
                                        (if (equal? _%e198175198256%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198172198253%_))
                                                (let ((_%e198178198260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198172198253%_))))
                                                  (let ((_%hd198177198264%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198178198260%_)))
                                                        (_%tl198176198267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198178198260%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198177198264%_))
                                                        (let ((_%e198181198270%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198177198264%_))))
                  (let ((_%hd198180198274%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198181198270%_)))
                        (_%tl198179198277%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198181198270%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd198180198274%_))
                        (if (let ((__tmp201628 |gxc[1]#_g201629_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp201628
                               _%hd198180198274%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198179198277%_))
                                (let ((_%e198184198280%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198179198277%_))))
                                  (let ((_%hd198183198284%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198184198280%_)))
                                        (_%tl198182198287%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198184198280%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198182198287%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198176198267%_))
                                            (let ((_%e198187198290%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198176198267%_))))
                                              (let ((_%hd198186198294%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198187198290%_)))
                                                    (_%tl198185198297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198187198290%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd198186198294%_))
                                                    (let ((_%e198188198300%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd198186198294%_))))
                                                      (if (equal? _%e198188198300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198185198297%_))
                      (let ((_%e198191198304%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198185198297%_))))
                        (let ((_%hd198190198308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198191198304%_)))
                              (_%tl198189198311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198191198304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198190198308%_))
                              (let ((_%e198194198314%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd198190198308%_))))
                                (let ((_%hd198193198318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198194198314%_)))
                                      (_%tl198192198321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198194198314%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198193198318%_))
                                      (if (let ((__tmp201630
                                                 |gxc[1]#_g201631_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp201630
                                             _%hd198193198318%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198192198321%_))
                                              (let ((_%e198197198324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198192198321%_))))
                                                (let ((_%hd198196198328%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198197198324%_)))
                                                      (_%tl198195198331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198197198324%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198195198331%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198189198311%_))
                                                          (let ((_%e198200198334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl198189198311%_))))
                    (let ((_%hd198199198338%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198200198334%_)))
                          (_%tl198198198341%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198200198334%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd198199198338%_))
                          (let ((_%e198201198344%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198199198338%_))))
                            (if (equal? _%e198201198344%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198198198341%_))
                                    (let ((_%e198204198348%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl198198198341%_))))
                                      (let ((_%hd198203198352%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198204198348%_)))
                                            (_%tl198202198355%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198204198348%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198203198352%_))
                                            (let ((_%e198207198358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd198203198352%_))))
                                              (let ((_%hd198206198362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198207198358%_)))
                                                    (_%tl198205198365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198207198358%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd198206198362%_))
                                                    (if (let ((__tmp201632
                                                               |gxc[1]#_g201633_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp201632
                                                           _%hd198206198362%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198205198365%_))
                                                            (let ((_%e198210198368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl198205198365%_))))
                      (let ((_%hd198209198372%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198210198368%_)))
                            (_%tl198208198375%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198210198368%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198208198375%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198202198355%_))
                                (let ((_%e198213198378%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198202198355%_))))
                                  (let ((_%hd198212198382%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198213198378%_)))
                                        (_%tl198211198385%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198213198378%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd198212198382%_))
                                        (let ((_%e198214198388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198212198382%_))))
                                          (if (equal? _%e198214198388%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198211198385%_))
                                                  (let ((_%e198217198392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198211198385%_))))
                                                    (let ((_%hd198216198396%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198217198392%_)))
                                                          (_%tl198215198399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198217198392%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198216198396%_))
                                                          (let ((_%e198220198402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd198216198396%_))))
                    (let ((_%hd198219198406%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198220198402%_)))
                          (_%tl198218198409%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198220198402%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd198219198406%_))
                          (if (let ((__tmp201634 |gxc[1]#_g201635_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp201634
                                 _%hd198219198406%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198218198409%_))
                                  (let ((_%e198223198412%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198218198409%_))))
                                    (let ((_%hd198222198416%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198223198412%_)))
                                          (_%tl198221198419%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198223198412%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198221198419%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198215198399%_))
                                              ((lambda (_%L198422%_
                                                        _%L198424%_
                                                        _%L198425%_
                                                        _%L198426%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L198422%_))
                                                     (cons _%L198422%_
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
                                                 (cons _%L198425%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd198222198416%_
                                               _%hd198209198372%_
                                               _%hd198196198328%_
                                               _%hd198183198284%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g198163198229%_
                                                 _%g198164198233%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198163198229%_
                                             _%g198164198233%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g198163198229%_ _%g198164198233%_)))
                              (let ()
                                (declare (not safe))
                                (_%g198163198229%_ _%g198164198233%_)))
                          (let ()
                            (declare (not safe))
                            (_%g198163198229%_ _%g198164198233%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g198163198229%_ _%g198164198233%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198163198229%_
                                                     _%g198164198233%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198163198229%_
                                                 _%g198164198233%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198163198229%_
                                           _%g198164198233%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g198163198229%_ _%g198164198233%_)))
                            (let ()
                              (declare (not safe))
                              (_%g198163198229%_ _%g198164198233%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g198163198229%_ _%g198164198233%_)))
                (let ()
                  (declare (not safe))
                  (_%g198163198229%_ _%g198164198233%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198163198229%_
                                                       _%g198164198233%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198163198229%_
                                               _%g198164198233%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198163198229%_ _%g198164198233%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g198163198229%_ _%g198164198233%_))))
                          (let ()
                            (declare (not safe))
                            (_%g198163198229%_ _%g198164198233%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g198163198229%_ _%g198164198233%_)))
              (let ()
                (declare (not safe))
                (_%g198163198229%_ _%g198164198233%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198163198229%_
                                                 _%g198164198233%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198163198229%_
                                             _%g198164198233%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198163198229%_
                                         _%g198164198233%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198163198229%_ _%g198164198233%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g198163198229%_ _%g198164198233%_)))
                  (let ()
                    (declare (not safe))
                    (_%g198163198229%_ _%g198164198233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198163198229%_
                                                       _%g198164198233%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198163198229%_
                                               _%g198164198233%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198163198229%_
                                           _%g198164198233%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g198163198229%_ _%g198164198233%_)))
                            (let ()
                              (declare (not safe))
                              (_%g198163198229%_ _%g198164198233%_)))
                        (let ()
                          (declare (not safe))
                          (_%g198163198229%_ _%g198164198233%_)))))
                (let ()
                  (declare (not safe))
                  (_%g198163198229%_ _%g198164198233%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198163198229%_
                                                   _%g198164198233%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198163198229%_
                                               _%g198164198233%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198163198229%_
                                         _%g198164198233%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198163198229%_ _%g198164198233%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g198163198229%_ _%g198164198233%_))))))
          (declare (not safe))
          (_%g198162198476%_ _%sig198160%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx199248%_)
        (let* ((_%g199251199269%_
                (lambda (_%g199252199265%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199252199265%_))))
               (_%g199250199324%_
                (lambda (_%g199252199273%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199252199273%_))
                      (let ((_%e199257199276%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199252199273%_))))
                        (let ((_%hd199256199280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199257199276%_)))
                              (_%tl199255199283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199257199276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199255199283%_))
                              (let ((_%e199260199286%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199255199283%_))))
                                (let ((_%hd199259199290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199260199286%_)))
                                      (_%tl199258199293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199260199286%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199258199293%_))
                                      (let ((_%e199263199296%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199258199293%_))))
                                        (let ((_%hd199262199300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199263199296%_)))
                                              (_%tl199261199303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199263199296%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199261199303%_))
                                              ((lambda (_%L199306%_
                                                        _%L199308%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199308%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199306%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx199248%_
                                                          _%L199308%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx199248%_
                                                          _%L199306%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L199308%_
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
                                                   (cons _%L199306%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199251199269%_
                                                      _%g199252199273%_)))
                                               _%hd199262199300%_
                                               _%hd199259199290%_)
                                              (_%g199251199269%_
                                               _%g199252199273%_))))
                                      (_%g199251199269%_ _%g199252199273%_))))
                              (_%g199251199269%_ _%g199252199273%_))))
                      (_%g199251199269%_ _%g199252199273%_)))))
          (_%g199250199324%_ _%stx199248%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx199328%_)
        (let* ((_%g199331199355%_
                (lambda (_%g199332199351%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199332199351%_))))
               (_%g199330199638%_
                (lambda (_%g199332199359%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199332199359%_))
                      (let ((_%e199337199362%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199332199359%_))))
                        (let ((_%hd199336199366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199337199362%_)))
                              (_%tl199335199369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199337199362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199335199369%_))
                              (let ((_%e199340199372%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199335199369%_))))
                                (let ((_%hd199339199376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199340199372%_)))
                                      (_%tl199338199379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199340199372%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199338199379%_))
                                      (let ((_g201636_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199338199379%_
                                                '0))))
                                        (begin
                                          (let ((_g201637_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201636_)
                                                       (##vector-length
                                                        _g201636_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201637_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201637_)))
                                          (let ((_%target199341199382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201636_ 0)))
                                                (_%tl199343199385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201636_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199343199385%_))
                                                (letrec ((_%loop199344199388%_
                                                          (lambda (_%hd199342199392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature199348199395%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199342199392%_))
                        (let ((_%e199345199398%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199342199392%_))))
                          (let ((_%lp-hd199346199402%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199345199398%_)))
                                (_%lp-tl199347199405%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199345199398%_))))
                            (_%loop199344199388%_
                             _%lp-tl199347199405%_
                             (cons _%lp-hd199346199402%_
                                   _%signature199348199395%_))))
                        (let ((_%signature199349199408%_
                               (reverse _%signature199348199395%_)))
                          ((lambda (_%L199412%_ _%L199414%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199414%_))
                                 (let* ((_%g199432199447%_
                                         (lambda (_%g199433199443%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199433199443%_))))
                                        (_%g199431199626%_
                                         (lambda (_%g199433199451%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g199433199451%_))
                                               (let ((_%e199438199454%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g199433199451%_))))
                                                 (let ((_%hd199437199458%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199438199454%_)))
                                                       (_%tl199436199461%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199438199454%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199436199461%_))
                                                       (let ((_%e199441199464%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199436199461%_))))
                 (let ((_%hd199440199468%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199441199464%_)))
                       (_%tl199439199471%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199441199464%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199439199471%_))
                       ((lambda (_%L199474%_ _%L199476%_)
                          (let ()
                            (let* ((_%g199492199500%_
                                    (lambda (_%g199493199496%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g199493199496%_))))
                                   (_%g199491199622%_
                                    (lambda (_%g199493199504%_)
                                      ((lambda (_%L199507%_)
                                         (let ()
                                           (let* ((_%unchecked199520%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L199474%_)))
                                                  (_%g199523199531%_
                                                   (lambda (_%g199524199527%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g199524199527%_))))
                                                  (_%g199522199554%_
                                                   (lambda (_%g199524199535%_)
                                                     ((lambda (_%L199538%_)
                                                        (let ()
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (cons _%L199507%_ (cons _%L199538%_ '())))))
              _%g199524199535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g199522199554%_
                                              (if _%unchecked199520%_
                                                  (let* ((_%g199558199573%_
                                                          (lambda (_%g199559199569%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g199559199569%_))))
                                                         (_%g199557199618%_
                                                          (lambda (_%g199559199577%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g199559199577%_))
                        (let ((_%e199564199580%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g199559199577%_))))
                          (let ((_%hd199563199584%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199564199580%_)))
                                (_%tl199562199587%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199564199580%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199562199587%_))
                                (let ((_%e199567199590%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199562199587%_))))
                                  (let ((_%hd199566199594%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199567199590%_)))
                                        (_%tl199565199597%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199567199590%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199565199597%_))
                                        ((lambda (_%L199600%_ _%L199602%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L199602%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L199476%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L199600%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd199566199594%_
                                         _%hd199563199584%_)
                                        (_%g199558199573%_
                                         _%g199559199577%_))))
                                (_%g199558199573%_ _%g199559199577%_))))
                        (_%g199558199573%_ _%g199559199577%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199557199618%_
                                                     _%unchecked199520%_))
                                                  '(begin))))))
                                       _%g199493199504%_))))
                              (_%g199491199622%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L199414%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L199476%_ '()))
                     (cons '#f (cons 'signature: (cons _%L199474%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd199440199468%_
                        _%hd199437199458%_)
                       (_%g199432199447%_ _%g199433199451%_))))
               (_%g199432199447%_ _%g199433199451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199432199447%_
                                                _%g199433199451%_)))))
                                   (_%g199431199626%_
                                    (let ((__tmp201638
                                           (let ((__tmp201639
                                                  (lambda (_%g199629199632%_
                                                           _%g199630199635%_)
                                                    (cons _%g199629199632%_
                                                          _%g199630199635%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201639
                                              '()
                                              _%L199412%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx199328%_
                                       _%L199414%_
                                       __tmp201638))))
                                 (_%g199331199355%_ _%g199332199359%_)))
                           _%signature199349199408%_
                           _%hd199339199376%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199344199388%_
                                                   _%target199341199382%_
                                                   '()))
                                                (_%g199331199355%_
                                                 _%g199332199359%_)))))
                                      (_%g199331199355%_ _%g199332199359%_))))
                              (_%g199331199355%_ _%g199332199359%_))))
                      (_%g199331199355%_ _%g199332199359%_)))))
          (_%g199330199638%_ _%stx199328%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx199643%_)
        (let* ((_%g199646199670%_
                (lambda (_%g199647199666%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199647199666%_))))
               (_%g199645200484%_
                (lambda (_%g199647199674%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199647199674%_))
                      (let ((_%e199652199677%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199647199674%_))))
                        (let ((_%hd199651199681%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199652199677%_)))
                              (_%tl199650199684%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199652199677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199650199684%_))
                              (let ((_%e199655199687%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199650199684%_))))
                                (let ((_%hd199654199691%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199655199687%_)))
                                      (_%tl199653199694%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199655199687%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199653199694%_))
                                      (let ((_g201640_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199653199694%_
                                                '0))))
                                        (begin
                                          (let ((_g201641_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201640_)
                                                       (##vector-length
                                                        _g201640_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201641_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201641_)))
                                          (let ((_%target199656199697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201640_ 0)))
                                                (_%tl199658199700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201640_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199658199700%_))
                                                (letrec ((_%loop199659199703%_
                                                          (lambda (_%hd199657199707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature199663199710%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199657199707%_))
                        (let ((_%e199660199713%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199657199707%_))))
                          (let ((_%lp-hd199661199717%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199660199713%_)))
                                (_%lp-tl199662199720%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199660199713%_))))
                            (_%loop199659199703%_
                             _%lp-tl199662199720%_
                             (cons _%lp-hd199661199717%_
                                   _%case-signature199663199710%_))))
                        (let ((_%case-signature199664199723%_
                               (reverse _%case-signature199663199710%_)))
                          ((lambda (_%L199727%_ _%L199729%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199729%_))
                                 (let* ((_%signatures199760%_
                                         (map (lambda (_%g199746199748%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx199643%_
                                                   _%L199729%_
                                                   _%g199746199748%_)))
                                              (let ((__tmp201642
                                                     (lambda (_%g199751199754%_
                                                              _%g199752199757%_)
                                                       (cons _%g199751199754%_
                                                             _%g199752199757%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp201642
                                                 '()
                                                 _%L199727%_))))
                                        (_%g199763199789%_
                                         (lambda (_%g199764199785%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199764199785%_))))
                                        (_%g199762200480%_
                                         (lambda (_%g199764199793%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g199764199793%_))
                                               (let ((_g201643_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g199764199793%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g201644_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g201643_)
                        (##vector-length _g201643_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g201644_ 2)))
                 (error "Context expects 2 values" _g201644_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target199767199796%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201643_
                                                             0)))
                                                         (_%tl199769199799%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201643_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199769199799%_))
                                                         (letrec ((_%loop199770199802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd199768199806%_
                                    _%sig199774199809%_
                                    _%arity199775199811%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd199768199806%_))
                                 (let ((_%e199771199814%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd199768199806%_))))
                                   (let ((_%lp-hd199772199818%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199771199814%_)))
                                         (_%lp-tl199773199821%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199771199814%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd199772199818%_))
                                         (let ((_%e199780199824%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd199772199818%_))))
                                           (let ((_%hd199779199828%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199780199824%_)))
                                                 (_%tl199778199831%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199780199824%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199778199831%_))
                                                 (let ((_%e199783199834%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199778199831%_))))
                                                   (let ((_%hd199782199838%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199783199834%_)))
                                                         (_%tl199781199841%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199783199834%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199781199841%_))
                                                         (_%loop199770199802%_
                                                          _%lp-tl199773199821%_
                                                          (cons _%hd199782199838%_
                                                                _%sig199774199809%_)
                                                          (cons _%hd199779199828%_
                                                                _%arity199775199811%_))
                                                         (_%g199763199789%_
                                                          _%g199764199793%_))))
                                                 (_%g199763199789%_
                                                  _%g199764199793%_))))
                                         (_%g199763199789%_
                                          _%g199764199793%_))))
                                 (let ((_%sig199776199844%_
                                        (reverse _%sig199774199809%_))
                                       (_%arity199777199847%_
                                        (reverse _%arity199775199811%_)))
                                   ((lambda (_%L199850%_ _%L199852%_)
                                      (let ()
                                        (let* ((_%g199869199877%_
                                                (lambda (_%g199870199873%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g199870199873%_))))
                                               (_%g199868200465%_
                                                (lambda (_%g199870199881%_)
                                                  ((lambda (_%L199884%_)
                                                     (let ()
                                                       (let* ((_%g199897199905%_
                                                               (lambda (_%g199898199901%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g199898199901%_))))
                      (_%g199896199927%_
                       (lambda (_%g199898199909%_)
                         ((lambda (_%L199912%_)
                            (let ()
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'begin))
                                    (cons _%L199884%_
                                          (cons _%L199912%_ '())))))
                          _%g199898199909%_))))
                 (_%g199896199927%_
                  (let ((_g201645_
                         (let _%loop199931%_ ((_%rest199934%_
                                               _%signatures199760%_)
                                              (_%unchecked-proc199936%_ '#f)
                                              (_%unchecked-clauses199937%_
                                               '()))
                           (let* ((_%rest199938199946%_ _%rest199934%_)
                                  (_%else199940199958%_
                                   (lambda ()
                                     (values _%unchecked-proc199936%_
                                             (reverse!
                                              _%unchecked-clauses199937%_))))
                                  (_%K199942200330%_
                                   (lambda (_%rest199962%_ _%hd199964%_)
                                     (let* ((_%g199966200039%_
                                             (lambda (_%g199967200035%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199967200035%_))))
                                            (_%g199965200326%_
                                             (lambda (_%g199967200043%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199967200043%_))
                                                   (let ((_%e199975200046%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g199967200043%_))))
                                                     (let ((_%hd199974200050%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199975200046%_)))
                                                           (_%tl199973200053%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199975200046%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199973200053%_))
                                                           (let ((_%e199978200056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl199973200053%_))))
                     (let ((_%hd199977200060%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199978200056%_)))
                           (_%tl199976200063%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199978200056%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199977200060%_))
                           (let ((_%e199981200066%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd199977200060%_))))
                             (let ((_%hd199980200070%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199981200066%_)))
                                   (_%tl199979200073%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199981200066%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199979200073%_))
                                   (let ((_%e199984200076%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl199979200073%_))))
                                     (let ((_%hd199983200080%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199984200076%_)))
                                           (_%tl199982200083%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199984200076%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd199983200080%_))
                                           (let ((_%e199985200086%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd199983200080%_))))
                                             (if (equal? _%e199985200086%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199982200083%_))
                                                     (let ((_%e199988200090%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl199982200083%_))))
                                                       (let ((_%hd199987200094%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e199988200090%_)))
                     (_%tl199986200097%_
                      (let () (declare (not safe)) (##cdr _%e199988200090%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd199987200094%_))
                     (let ((_%e199991200100%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd199987200094%_))))
                       (let ((_%hd199990200104%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199991200100%_)))
                             (_%tl199989200107%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199991200100%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd199990200104%_))
                             (if (let ((__tmp201647 |gxc[1]#_g201648_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp201647
                                    _%hd199990200104%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl199989200107%_))
                                     (let ((_%e199994200110%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl199989200107%_))))
                                       (let ((_%hd199993200114%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199994200110%_)))
                                             (_%tl199992200117%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199994200110%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl199992200117%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199986200097%_))
                                                 (let ((_%e199997200120%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199986200097%_))))
                                                   (let ((_%hd199996200124%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199997200120%_)))
                                                         (_%tl199995200127%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199997200120%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd199996200124%_))
                                                         (let ((_%e199998200130%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd199996200124%_))))
                   (if (equal? _%e199998200130%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl199995200127%_))
                           (let ((_%e200001200134%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl199995200127%_))))
                             (let ((_%hd200000200138%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e200001200134%_)))
                                   (_%tl199999200141%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e200001200134%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd200000200138%_))
                                   (let ((_%e200004200144%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd200000200138%_))))
                                     (let ((_%hd200003200148%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e200004200144%_)))
                                           (_%tl200002200151%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e200004200144%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd200003200148%_))
                                           (if (let ((__tmp201649
                                                      |gxc[1]#_g201650_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp201649
                                                  _%hd200003200148%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl200002200151%_))
                                                   (let ((_%e200007200154%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl200002200151%_))))
                                                     (let ((_%hd200006200158%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200007200154%_)))
                                                           (_%tl200005200161%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200007200154%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl200005200161%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl199999200141%_))
                       (let ((_%e200010200164%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl199999200141%_))))
                         (let ((_%hd200009200168%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200010200164%_)))
                               (_%tl200008200171%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200010200164%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd200009200168%_))
                               (let ((_%e200011200174%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd200009200168%_))))
                                 (if (equal? _%e200011200174%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl200008200171%_))
                                         (let ((_%e200014200178%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl200008200171%_))))
                                           (let ((_%hd200013200182%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200014200178%_)))
                                                 (_%tl200012200185%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200014200178%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd200013200182%_))
                                                 (let ((_%e200017200188%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd200013200182%_))))
                                                   (let ((_%hd200016200192%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200017200188%_)))
                                                         (_%tl200015200195%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200017200188%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd200016200192%_))
                                                         (if (let ((__tmp201651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g201652_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp201651 _%hd200016200192%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl200015200195%_))
                         (let ((_%e200020200198%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl200015200195%_))))
                           (let ((_%hd200019200202%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200020200198%_)))
                                 (_%tl200018200205%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200020200198%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl200018200205%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl200012200185%_))
                                     (let ((_%e200023200208%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl200012200185%_))))
                                       (let ((_%hd200022200212%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200023200208%_)))
                                             (_%tl200021200215%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200023200208%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd200022200212%_))
                                             (let ((_%e200024200218%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd200022200212%_))))
                                               (if (equal? _%e200024200218%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200021200215%_))
                                                       (let ((_%e200027200222%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200021200215%_))))
                 (let ((_%hd200026200226%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200027200222%_)))
                       (_%tl200025200229%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200027200222%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd200026200226%_))
                       (let ((_%e200030200232%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd200026200226%_))))
                         (let ((_%hd200029200236%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200030200232%_)))
                               (_%tl200028200239%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200030200232%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd200029200236%_))
                               (if (let ((__tmp201653 |gxc[1]#_g201654_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp201653
                                      _%hd200029200236%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl200028200239%_))
                                       (let ((_%e200033200242%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl200028200239%_))))
                                         (let ((_%hd200032200246%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e200033200242%_)))
                                               (_%tl200031200249%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e200033200242%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl200031200249%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl200025200229%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199976200063%_))
                                                       ((lambda (_%L200252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L200254%_
                         _%L200255%_
                         _%L200256%_
                         _%L200257%_)
                  (let ((_%clause200318%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L200257%_ '()))
                                     (cons '#f
                                           (cons 'signature:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L200255%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked200320%_
                         (let () (declare (not safe)) (gx#stx-e _%L200252%_))))
                    (_%loop199931%_
                     _%rest199962%_
                     (let ((_%$e200322%_ _%unchecked200320%_))
                       (if _%$e200322%_ _%$e200322%_ _%unchecked-proc199936%_))
                     (cons _%clause200318%_ _%unchecked-clauses199937%_))))
                _%hd200032200246%_
                _%hd200019200202%_
                _%hd200006200158%_
                _%hd199993200114%_
                _%hd199974200050%_)
               (_%g199966200039%_ _%g199967200043%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199966200039%_
                                                    _%g199967200043%_))
                                               (_%g199966200039%_
                                                _%g199967200043%_))))
                                       (_%g199966200039%_ _%g199967200043%_))
                                   (_%g199966200039%_ _%g199967200043%_))
                               (_%g199966200039%_ _%g199967200043%_))))
                       (_%g199966200039%_ _%g199967200043%_))))
               (_%g199966200039%_ _%g199967200043%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199966200039%_
                                                    _%g199967200043%_)))
                                             (_%g199966200039%_
                                              _%g199967200043%_))))
                                     (_%g199966200039%_ _%g199967200043%_))
                                 (_%g199966200039%_ _%g199967200043%_))))
                         (_%g199966200039%_ _%g199967200043%_))
                     (_%g199966200039%_ _%g199967200043%_))
                 (_%g199966200039%_ _%g199967200043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199966200039%_
                                                  _%g199967200043%_))))
                                         (_%g199966200039%_ _%g199967200043%_))
                                     (_%g199966200039%_ _%g199967200043%_)))
                               (_%g199966200039%_ _%g199967200043%_))))
                       (_%g199966200039%_ _%g199967200043%_))
                   (_%g199966200039%_ _%g199967200043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199966200039%_
                                                    _%g199967200043%_))
                                               (_%g199966200039%_
                                                _%g199967200043%_))
                                           (_%g199966200039%_
                                            _%g199967200043%_))))
                                   (_%g199966200039%_ _%g199967200043%_))))
                           (_%g199966200039%_ _%g199967200043%_))
                       (_%g199966200039%_ _%g199967200043%_)))
                 (_%g199966200039%_ _%g199967200043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199966200039%_
                                                  _%g199967200043%_))
                                             (_%g199966200039%_
                                              _%g199967200043%_))))
                                     (_%g199966200039%_ _%g199967200043%_))
                                 (_%g199966200039%_ _%g199967200043%_))
                             (_%g199966200039%_ _%g199967200043%_))))
                     (_%g199966200039%_ _%g199967200043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199966200039%_
                                                      _%g199967200043%_))
                                                 (_%g199966200039%_
                                                  _%g199967200043%_)))
                                           (_%g199966200039%_
                                            _%g199967200043%_))))
                                   (_%g199966200039%_ _%g199967200043%_))))
                           (_%g199966200039%_ _%g199967200043%_))))
                   (_%g199966200039%_ _%g199967200043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199966200039%_
                                                    _%g199967200043%_)))))
                                       (_%g199965200326%_ _%hd199964%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest199938199946%_))
                                 (let ((_%hd199943200334%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest199938199946%_)))
                                       (_%tl199944200337%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199938199946%_))))
                                   (let* ((_%hd200340%_ _%hd199943200334%_)
                                          (_%rest200343%_ _%tl199944200337%_))
                                     (_%K199942200330%_
                                      _%rest200343%_
                                      _%hd200340%_)))
                                 (_%else199940199958%_))))))
                    (begin
                      (let ((_g201646_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201645_)
                                   (##vector-length _g201645_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201646_ 2)))
                            (error "Context expects 2 values" _g201646_)))
                      (let ((_%unchecked-proc200346%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201645_ 0)))
                            (_%unchecked-clauses200348%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201645_ 1))))
                        (if _%unchecked-proc200346%_
                            (let* ((_%g200350200374%_
                                    (lambda (_%g200351200370%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g200351200370%_))))
                                   (_%g200349200461%_
                                    (lambda (_%g200351200378%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g200351200378%_))
                                          (let ((_%e200356200381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g200351200378%_))))
                                            (let ((_%hd200355200385%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200356200381%_)))
                                                  (_%tl200354200388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200356200381%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200354200388%_))
                                                  (let ((_%e200359200391%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200354200388%_))))
                                                    (let ((_%hd200358200395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200359200391%_)))
                                                          (_%tl200357200398%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200359200391%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd200358200395%_))
                                                          (let ((_g201655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd200358200395%_ '0))))
                    (begin
                      (let ((_g201656_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201655_)
                                   (##vector-length _g201655_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201656_ 2)))
                            (error "Context expects 2 values" _g201656_)))
                      (let ((_%target200360200401%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201655_ 0)))
                            (_%tl200362200404%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201655_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200362200404%_))
                            (letrec ((_%loop200363200407%_
                                      (lambda (_%hd200361200411%_
                                               _%clause200367200414%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd200361200411%_))
                                            (let ((_%e200364200417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd200361200411%_))))
                                              (let ((_%lp-hd200365200421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200364200417%_)))
                                                    (_%lp-tl200366200424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200364200417%_))))
                                                (_%loop200363200407%_
                                                 _%lp-tl200366200424%_
                                                 (cons _%lp-hd200365200421%_
                                                       _%clause200367200414%_))))
                                            (let ((_%clause200368200427%_
                                                   (reverse _%clause200367200414%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200357200398%_))
                                                  ((lambda (_%L200431%_
                                                            _%L200433%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200433%_
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
                                                   (let ((__tmp201657
                                                          (lambda (_%g200452200455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g200453200458%_)
                    (cons _%g200452200455%_ _%g200453200458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp201657
                                                      '()
                                                      _%L200431%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause200368200427%_
                                                   _%hd200355200385%_)
                                                  (_%g200350200374%_
                                                   _%g200351200378%_)))))))
                              (_%loop200363200407%_
                               _%target200360200401%_
                               '()))
                            (_%g200350200374%_ _%g200351200378%_)))))
                  (_%g200350200374%_ _%g200351200378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g200350200374%_
                                                   _%g200351200378%_))))
                                          (_%g200350200374%_
                                           _%g200351200378%_)))))
                              (_%g200349200461%_
                               (list _%unchecked-proc200346%_
                                     _%unchecked-clauses200348%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g199870199881%_))))
                                          (_%g199868200465%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L199729%_
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
                                            _%L199850%_
                                            _%L199852%_))
                                         (let ((__tmp201658
                                                (lambda (_%g200468200472%_
                                                         _%g200469200475%_
                                                         _%g200470200477%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g200469200475%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g200468200472%_ '())))))
                _%g200470200477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp201658
                                            '()
                                            _%L199850%_
                                            _%L199852%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig199776199844%_
                                    _%arity199777199847%_))))))
                   (_%loop199770199802%_ _%target199767199796%_ '() '()))
                 (_%g199763199789%_ _%g199764199793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199763199789%_
                                                _%g199764199793%_)))))
                                   (_%g199762200480%_ _%signatures199760%_))
                                 (_%g199646199670%_ _%g199647199674%_)))
                           _%case-signature199664199723%_
                           _%hd199654199691%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199659199703%_
                                                   _%target199656199697%_
                                                   '()))
                                                (_%g199646199670%_
                                                 _%g199647199674%_)))))
                                      (_%g199646199670%_ _%g199647199674%_))))
                              (_%g199646199670%_ _%g199647199674%_))))
                      (_%g199646199670%_ _%g199647199674%_)))))
          (_%g199645200484%_ _%stx199643%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx200492%_)
        (let* ((_%__stx201474201475%_ _%$stx200492%_)
               (_%g200498200558%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201474201475%_)))))
          (let ((_%__kont201477201478%_
                 (lambda (_%L200780%_ _%L200782%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200782%_ '()))
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
                                                       (cons _%L200782%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200780%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201479201480%_
                 (lambda (_%L200705%_ _%L200707%_ _%L200708%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200708%_ '()))
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
                                                       (cons _%L200708%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200707%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200705%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201481201482%_
                 (lambda (_%L200619%_ _%L200621%_ _%L200622%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200622%_ '()))
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
                                                       (cons _%L200622%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200621%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200619%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201474201475%_))
                (let ((_%e200504200736%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201474201475%_))))
                  (let ((_%tl200502200743%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200504200736%_)))
                        (_%hd200503200740%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200504200736%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200502200743%_))
                        (let ((_%e200507200746%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200502200743%_))))
                          (let ((_%tl200505200753%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200507200746%_)))
                                (_%hd200506200750%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200507200746%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd200506200750%_))
                                (let ((_%e200508200756%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200506200750%_))))
                                  (if (equal? _%e200508200756%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200505200753%_))
                                          (let ((_%e200511200760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200505200753%_))))
                                            (let ((_%tl200509200767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200511200760%_)))
                                                  (_%hd200510200764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200511200760%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200509200767%_))
                                                  (let ((_%e200514200770%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200509200767%_))))
                                                    (let ((_%tl200512200777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200514200770%_)))
                                                          (_%hd200513200774%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200514200770%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200512200777%_))
                                                          (_%__kont201477201478%_
                                                           _%hd200513200774%_
                                                           _%hd200510200764%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200498200558%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200498200558%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200498200558%_)))
                                      (if (equal? _%e200508200756%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200505200753%_))
                                              (let ((_%e200527200675%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200505200753%_))))
                                                (let ((_%tl200525200682%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200527200675%_)))
                                                      (_%hd200526200679%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200527200675%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200525200682%_))
                                                      (let ((_%e200530200685%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200525200682%_))))
                (let ((_%tl200528200692%_
                       (let () (declare (not safe)) (##cdr _%e200530200685%_)))
                      (_%hd200529200689%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200530200685%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200528200692%_))
                      (let ((_%e200533200695%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200528200692%_))))
                        (let ((_%tl200531200702%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200533200695%_)))
                              (_%hd200532200699%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200533200695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200531200702%_))
                              (_%__kont201479201480%_
                               _%hd200532200699%_
                               _%hd200529200689%_
                               _%hd200526200679%_)
                              (let ()
                                (declare (not safe))
                                (_%g200498200558%_)))))
                      (let () (declare (not safe)) (_%g200498200558%_)))))
              (let () (declare (not safe)) (_%g200498200558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200498200558%_)))
                                          (if (equal? _%e200508200756%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200505200753%_))
                                                  (let ((_%e200546200589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200505200753%_))))
                                                    (let ((_%tl200544200596%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200546200589%_)))
                                                          (_%hd200545200593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200546200589%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200544200596%_))
                                                          (let ((_%e200549200599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200544200596%_))))
                    (let ((_%tl200547200606%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200549200599%_)))
                          (_%hd200548200603%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200549200599%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200547200606%_))
                          (let ((_%e200552200609%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200547200606%_))))
                            (let ((_%tl200550200616%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200552200609%_)))
                                  (_%hd200551200613%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200552200609%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200550200616%_))
                                  (_%__kont201481201482%_
                                   _%hd200551200613%_
                                   _%hd200548200603%_
                                   _%hd200545200593%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200498200558%_)))))
                          (let () (declare (not safe)) (_%g200498200558%_)))))
                  (let () (declare (not safe)) (_%g200498200558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200498200558%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200498200558%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200498200558%_)))))
                        (let () (declare (not safe)) (_%g200498200558%_)))))
                (let () (declare (not safe)) (_%g200498200558%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx200804%_)
        (let* ((_%g200808200828%_
                (lambda (_%g200809200824%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200809200824%_))))
               (_%g200807200899%_
                (lambda (_%g200809200832%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200809200832%_))
                      (let ((_%e200813200835%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200809200832%_))))
                        (let ((_%hd200812200839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200813200835%_)))
                              (_%tl200811200842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200813200835%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200811200842%_))
                              (let ((_g201659_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200811200842%_
                                        '0))))
                                (begin
                                  (let ((_g201660_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201659_)
                                               (##vector-length _g201659_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201660_ 2)))
                                        (error "Context expects 2 values"
                                               _g201660_)))
                                  (let ((_%target200814200845%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201659_ 0)))
                                        (_%tl200816200848%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201659_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200816200848%_))
                                        (letrec ((_%loop200817200851%_
                                                  (lambda (_%hd200815200855%_
                                                           _%decl200821200858%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200815200855%_))
                                                        (let ((_%e200818200861%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200815200855%_))))
                  (let ((_%lp-hd200819200865%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200818200861%_)))
                        (_%lp-tl200820200868%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200818200861%_))))
                    (_%loop200817200851%_
                     _%lp-tl200820200868%_
                     (cons _%lp-hd200819200865%_ _%decl200821200858%_))))
                (let ((_%decl200822200871%_ (reverse _%decl200821200858%_)))
                  ((lambda (_%L200875%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp201661
                                  (lambda (_%g200890200893%_ _%g200891200896%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g200890200893%_)
                                          _%g200891200896%_))))
                             (declare (not safe))
                             (__foldr1 __tmp201661 '() _%L200875%_))))
                   _%decl200822200871%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200817200851%_
                                           _%target200814200845%_
                                           '()))
                                        (_%g200808200828%_
                                         _%g200809200832%_)))))
                              (_%g200808200828%_ _%g200809200832%_))))
                      (_%g200808200828%_ _%g200809200832%_)))))
          (_%g200807200899%_ _%$stx200804%_))))))
