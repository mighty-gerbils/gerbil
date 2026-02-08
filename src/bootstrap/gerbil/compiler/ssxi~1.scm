(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g263514_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263521_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263523_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263525_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263527_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263529_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263541_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263543_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263545_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263547_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g263549_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx256972%_)
        (let* ((_%g256976256994%_
                (lambda (_%g256977256990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g256977256990%_))))
               (_%g256975257049%_
                (lambda (_%g256977256998%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g256977256998%_))
                      (let ((_%e256980257001%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g256977256998%_))))
                        (let ((_%hd256981257005%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256980257001%_)))
                              (_%tl256982257008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256980257001%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl256982257008%_))
                              (let ((_%e256983257011%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl256982257008%_))))
                                (let ((_%hd256984257015%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e256983257011%_)))
                                      (_%tl256985257018%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e256983257011%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl256985257018%_))
                                      (let ((_%e256986257021%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl256985257018%_))))
                                        (let ((_%hd256987257025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e256986257021%_)))
                                              (_%tl256988257028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e256986257021%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256988257028%_))
                                              ((lambda (_%g256978257031%_
                                                        _%g256979257033%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g256979257033%_))
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
                               (cons _%g256979257033%_ '()))
                         (cons _%g256978257031%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g256976256994%_
                                                      _%g256977256998%_)))
                                               _%hd256987257025%_
                                               _%hd256984257015%_)
                                              (_%g256976256994%_
                                               _%g256977256998%_))))
                                      (_%g256976256994%_ _%g256977256998%_))))
                              (_%g256976256994%_ _%g256977256998%_))))
                      (_%g256976256994%_ _%g256977256998%_)))))
          (_%g256975257049%_ _%$stx256972%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx257053%_)
        (let* ((_%g257057257075%_
                (lambda (_%g257058257071%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257058257071%_))))
               (_%g257056257130%_
                (lambda (_%g257058257079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257058257079%_))
                      (let ((_%e257061257082%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257058257079%_))))
                        (let ((_%hd257062257086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257061257082%_)))
                              (_%tl257063257089%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257061257082%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257063257089%_))
                              (let ((_%e257064257092%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257063257089%_))))
                                (let ((_%hd257065257096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257064257092%_)))
                                      (_%tl257066257099%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257064257092%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl257066257099%_))
                                      (let ((_%e257067257102%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl257066257099%_))))
                                        (let ((_%hd257068257106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e257067257102%_)))
                                              (_%tl257069257109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e257067257102%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl257069257109%_))
                                              ((lambda (_%g257059257112%_
                                                        _%g257060257114%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g257060257114%_))
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
                               (cons _%g257060257114%_ '()))
                         (cons _%g257059257112%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g257057257075%_
                                                      _%g257058257079%_)))
                                               _%hd257068257106%_
                                               _%hd257065257096%_)
                                              (_%g257057257075%_
                                               _%g257058257079%_))))
                                      (_%g257057257075%_ _%g257058257079%_))))
                              (_%g257057257075%_ _%g257058257079%_))))
                      (_%g257057257075%_ _%g257058257079%_)))))
          (_%g257056257130%_ _%$stx257053%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx257134%_)
        (let* ((_%g257138257167%_
                (lambda (_%g257139257163%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257139257163%_))))
               (_%g257137257263%_
                (lambda (_%g257139257171%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257139257171%_))
                      (let ((_%e257142257174%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257139257171%_))))
                        (let ((_%hd257143257178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257142257174%_)))
                              (_%tl257144257181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257142257174%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl257144257181%_))
                              (let ((_g263492_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl257144257181%_
                                        '0))))
                                (begin
                                  (let ((_g263493_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263492_)
                                               (##values-length _g263492_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263493_ 2)))
                                        (error "Context expects 2 values"
                                               _g263493_)))
                                  (let ((_%target257145257184%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263492_ 0)))
                                        (_%tl257147257187%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263492_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl257147257187%_))
                                        (letrec ((_%loop257148257190%_
                                                  (lambda (_%hd257146257194%_
                                                           _%type257152257197%_
                                                           _%symbol257153257198%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd257146257194%_))
                                                        (let ((_%e257149257200%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd257146257194%_))))
                  (let ((_%lp-hd257150257204%_
                         (let ()
                           (declare (not safe))
                           (##car _%e257149257200%_)))
                        (_%lp-tl257151257207%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e257149257200%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd257150257204%_))
                        (let ((_%e257156257210%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd257150257204%_))))
                          (let ((_%hd257157257214%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e257156257210%_)))
                                (_%tl257158257217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e257156257210%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl257158257217%_))
                                (let ((_%e257159257220%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl257158257217%_))))
                                  (let ((_%hd257160257224%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e257159257220%_)))
                                        (_%tl257161257227%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e257159257220%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl257161257227%_))
                                        (_%loop257148257190%_
                                         _%lp-tl257151257207%_
                                         (cons _%hd257160257224%_
                                               _%type257152257197%_)
                                         (cons _%hd257157257214%_
                                               _%symbol257153257198%_))
                                        (_%g257138257167%_
                                         _%g257139257171%_))))
                                (_%g257138257167%_ _%g257139257171%_))))
                        (_%g257138257167%_ _%g257139257171%_))))
                (let ((_%type257154257230%_ (reverse _%type257152257197%_))
                      (_%symbol257155257232%_
                       (reverse _%symbol257153257198%_)))
                  ((lambda (_%g257140257234%_ _%g257141257236%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g257140257234%_
                                _%g257141257236%_))
                             (let ((__tmp263494
                                    (lambda (_%g257251257255%_
                                             _%g257252257258%_
                                             _%g257253257260%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g257252257258%_
                                                        (cons _%g257251257255%_
                                                              '())))
                                            _%g257253257260%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp263494
                                '()
                                _%g257140257234%_
                                _%g257141257236%_)))))
                   _%type257154257230%_
                   _%symbol257155257232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop257148257190%_
                                           _%target257145257184%_
                                           '()
                                           '()))
                                        (_%g257138257167%_
                                         _%g257139257171%_)))))
                              (_%g257138257167%_ _%g257139257171%_))))
                      (_%g257138257167%_ _%g257139257171%_)))))
          (_%g257137257263%_ _%$stx257134%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx257268%_)
        (let* ((_%__stx262803262804%_ _%$stx257268%_)
               (_%g257273257315%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262803262804%_)))))
          (let ((_%__kont262806262807%_
                 (lambda (_%g257275257443%_
                          _%g257276257445%_
                          _%g257277257446%_
                          _%g257278257447%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g257278257447%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g257277257446%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g257276257445%_ '()))
                                           (cons _%g257275257443%_ '())))))))
                (_%__kont262808262809%_
                 (lambda (_%g257294257362%_
                          _%g257295257364%_
                          _%g257296257365%_
                          _%g257297257366%_)
                   (cons _%g257297257366%_
                         (cons _%g257296257365%_
                               (cons _%g257295257364%_
                                     (cons _%g257294257362%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match262842262843%_
                   (lambda (_%e257279257393%_
                            _%hd257280257397%_
                            _%tl257281257400%_
                            _%e257282257403%_
                            _%hd257283257407%_
                            _%tl257284257410%_
                            _%e257285257413%_
                            _%hd257286257417%_
                            _%tl257287257420%_
                            _%e257288257423%_
                            _%hd257289257427%_
                            _%tl257290257430%_
                            _%e257291257433%_
                            _%hd257292257437%_
                            _%tl257293257440%_)
                     (let ((_%g257275257443%_ _%hd257292257437%_)
                           (_%g257276257445%_ _%hd257289257427%_)
                           (_%g257277257446%_ _%hd257286257417%_)
                           (_%g257278257447%_ _%hd257283257407%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g257278257447%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g257277257446%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g257276257445%_)))
                           (_%__kont262806262807%_
                            _%g257275257443%_
                            _%g257276257445%_
                            _%g257277257446%_
                            _%g257278257447%_)
                           (let ()
                             (declare (not safe))
                             (_%g257273257315%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx262803262804%_))
                  (let ((_%e257279257393%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx262803262804%_))))
                    (let ((_%tl257281257400%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257279257393%_)))
                          (_%hd257280257397%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257279257393%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl257281257400%_))
                          (let ((_%e257282257403%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl257281257400%_))))
                            (let ((_%tl257284257410%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257282257403%_)))
                                  (_%hd257283257407%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257282257403%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl257284257410%_))
                                  (let ((_%e257285257413%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl257284257410%_))))
                                    (let ((_%tl257287257420%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257285257413%_)))
                                          (_%hd257286257417%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257285257413%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl257287257420%_))
                                          (let ((_%e257288257423%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl257287257420%_))))
                                            (let ((_%tl257290257430%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e257288257423%_)))
                                                  (_%hd257289257427%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e257288257423%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257290257430%_))
                                                  (let ((_%e257291257433%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl257290257430%_))))
                                                    (let ((_%tl257293257440%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257291257433%_)))
                                                          (_%hd257292257437%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257291257433%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl257293257440%_))
                                                          (_%__match262842262843%_
                                                           _%e257279257393%_
                                                           _%hd257280257397%_
                                                           _%tl257281257400%_
                                                           _%e257282257403%_
                                                           _%hd257283257407%_
                                                           _%tl257284257410%_
                                                           _%e257285257413%_
                                                           _%hd257286257417%_
                                                           _%tl257287257420%_
                                                           _%e257288257423%_
                                                           _%hd257289257427%_
                                                           _%tl257290257430%_
                                                           _%e257291257433%_
                                                           _%hd257292257437%_
                                                           _%tl257293257440%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g257273257315%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257290257430%_))
                                                      (_%__kont262808262809%_
                                                       _%hd257289257427%_
                                                       _%hd257286257417%_
                                                       _%hd257283257407%_
                                                       _%hd257280257397%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g257273257315%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g257273257315%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g257273257315%_)))))
                          (let () (declare (not safe)) (_%g257273257315%_)))))
                  (let () (declare (not safe)) (_%g257273257315%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx257472%_)
        (let* ((_%g257476257511%_
                (lambda (_%g257477257507%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257477257507%_))))
               (_%g257475257624%_
                (lambda (_%g257477257515%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257477257515%_))
                      (let ((_%e257481257518%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257477257515%_))))
                        (let ((_%hd257482257522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257481257518%_)))
                              (_%tl257483257525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257481257518%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl257483257525%_))
                              (let ((_g263495_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl257483257525%_
                                        '0))))
                                (begin
                                  (let ((_g263496_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263495_)
                                               (##values-length _g263495_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263496_ 2)))
                                        (error "Context expects 2 values"
                                               _g263496_)))
                                  (let ((_%target257484257528%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263495_ 0)))
                                        (_%tl257486257531%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263495_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl257486257531%_))
                                        (letrec ((_%loop257487257534%_
                                                  (lambda (_%hd257485257538%_
                                                           _%symbol257491257541%_
                                                           _%method257492257542%_
                                                           _%type-t257493257543%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd257485257538%_))
                                                        (let ((_%e257488257545%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd257485257538%_))))
                  (let ((_%lp-hd257489257549%_
                         (let ()
                           (declare (not safe))
                           (##car _%e257488257545%_)))
                        (_%lp-tl257490257552%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e257488257545%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd257489257549%_))
                        (let ((_%e257497257555%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd257489257549%_))))
                          (let ((_%hd257498257559%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e257497257555%_)))
                                (_%tl257499257562%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e257497257555%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl257499257562%_))
                                (let ((_%e257500257565%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl257499257562%_))))
                                  (let ((_%hd257501257569%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e257500257565%_)))
                                        (_%tl257502257572%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e257500257565%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl257502257572%_))
                                        (let ((_%e257503257575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl257502257572%_))))
                                          (let ((_%hd257504257579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e257503257575%_)))
                                                (_%tl257505257582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e257503257575%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257505257582%_))
                                                (_%loop257487257534%_
                                                 _%lp-tl257490257552%_
                                                 (cons _%hd257504257579%_
                                                       _%symbol257491257541%_)
                                                 (cons _%hd257501257569%_
                                                       _%method257492257542%_)
                                                 (cons _%hd257498257559%_
                                                       _%type-t257493257543%_))
                                                (_%g257476257511%_
                                                 _%g257477257515%_))))
                                        (_%g257476257511%_
                                         _%g257477257515%_))))
                                (_%g257476257511%_ _%g257477257515%_))))
                        (_%g257476257511%_ _%g257477257515%_))))
                (let ((_%symbol257494257585%_ (reverse _%symbol257491257541%_))
                      (_%method257495257587%_ (reverse _%method257492257542%_))
                      (_%type-t257496257588%_
                       (reverse _%type-t257493257543%_)))
                  ((lambda (_%g257478257590%_
                            _%g257479257592%_
                            _%g257480257593%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g257478257590%_
                                _%g257479257592%_
                                _%g257480257593%_))
                             (let ((__tmp263497
                                    (lambda (_%g257609257614%_
                                             _%g257610257617%_
                                             _%g257611257619%_
                                             _%g257612257621%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g257611257619%_
                                                        (cons _%g257610257617%_
                                                              (cons _%g257609257614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g257612257621%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp263497
                                '()
                                _%g257478257590%_
                                _%g257479257592%_
                                _%g257480257593%_)))))
                   _%symbol257494257585%_
                   _%method257495257587%_
                   _%type-t257496257588%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop257487257534%_
                                           _%target257484257528%_
                                           '()
                                           '()
                                           '()))
                                        (_%g257476257511%_
                                         _%g257477257515%_)))))
                              (_%g257476257511%_ _%g257477257515%_))))
                      (_%g257476257511%_ _%g257477257515%_)))))
          (_%g257475257624%_ _%$stx257472%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx257629%_)
        (let* ((_%g257633257666%_
                (lambda (_%g257634257662%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257634257662%_))))
               (_%g257632257776%_
                (lambda (_%g257634257670%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257634257670%_))
                      (let ((_%e257638257673%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257634257670%_))))
                        (let ((_%hd257639257677%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257638257673%_)))
                              (_%tl257640257680%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257638257673%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257640257680%_))
                              (let ((_%e257641257683%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257640257680%_))))
                                (let ((_%hd257642257687%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257641257683%_)))
                                      (_%tl257643257690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257641257683%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl257643257690%_))
                                      (let ((_g263498_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl257643257690%_
                                                '0))))
                                        (begin
                                          (let ((_g263499_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g263498_)
                                                       (##values-length
                                                        _g263498_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g263499_ 2)))
                                                (error "Context expects 2 values"
                                                       _g263499_)))
                                          (let ((_%target257644257693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g263498_ 0)))
                                                (_%tl257646257696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g263498_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257646257696%_))
                                                (letrec ((_%loop257647257699%_
                                                          (lambda (_%hd257645257703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol257651257706%_
                           _%method257652257707%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd257645257703%_))
                        (let ((_%e257648257709%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd257645257703%_))))
                          (let ((_%lp-hd257649257713%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e257648257709%_)))
                                (_%lp-tl257650257716%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e257648257709%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd257649257713%_))
                                (let ((_%e257655257719%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd257649257713%_))))
                                  (let ((_%hd257656257723%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e257655257719%_)))
                                        (_%tl257657257726%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e257655257719%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl257657257726%_))
                                        (let ((_%e257658257729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl257657257726%_))))
                                          (let ((_%hd257659257733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e257658257729%_)))
                                                (_%tl257660257736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e257658257729%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257660257736%_))
                                                (_%loop257647257699%_
                                                 _%lp-tl257650257716%_
                                                 (cons _%hd257659257733%_
                                                       _%symbol257651257706%_)
                                                 (cons _%hd257656257723%_
                                                       _%method257652257707%_))
                                                (_%g257633257666%_
                                                 _%g257634257670%_))))
                                        (_%g257633257666%_
                                         _%g257634257670%_))))
                                (_%g257633257666%_ _%g257634257670%_))))
                        (let ((_%symbol257653257739%_
                               (reverse _%symbol257651257706%_))
                              (_%method257654257741%_
                               (reverse _%method257652257707%_)))
                          ((lambda (_%g257635257743%_
                                    _%g257636257745%_
                                    _%g257637257746%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g257635257743%_
                                        _%g257636257745%_))
                                     (let ((__tmp263500
                                            (lambda (_%g257764257768%_
                                                     _%g257765257771%_
                                                     _%g257766257773%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g257637257746%_
                                                                (cons _%g257765257771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g257764257768%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g257766257773%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp263500
                                        '()
                                        _%g257635257743%_
                                        _%g257636257745%_)))))
                           _%symbol257653257739%_
                           _%method257654257741%_
                           _%hd257642257687%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop257647257699%_
                                                   _%target257644257693%_
                                                   '()
                                                   '()))
                                                (_%g257633257666%_
                                                 _%g257634257670%_)))))
                                      (_%g257633257666%_ _%g257634257670%_))))
                              (_%g257633257666%_ _%g257634257670%_))))
                      (_%g257633257666%_ _%g257634257670%_)))))
          (_%g257632257776%_ _%$stx257629%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx257781%_)
        (let* ((_%g257785257799%_
                (lambda (_%g257786257795%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257786257795%_))))
               (_%g257784257840%_
                (lambda (_%g257786257803%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257786257803%_))
                      (let ((_%e257788257806%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257786257803%_))))
                        (let ((_%hd257789257810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257788257806%_)))
                              (_%tl257790257813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257788257806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257790257813%_))
                              (let ((_%e257791257816%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257790257813%_))))
                                (let ((_%hd257792257820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257791257816%_)))
                                      (_%tl257793257823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257791257816%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl257793257823%_))
                                      ((lambda (_%g257787257826%_)
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
                                                           (cons _%g257787257826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd257792257820%_)
                                      (_%g257785257799%_ _%g257786257803%_))))
                              (_%g257785257799%_ _%g257786257803%_))))
                      (_%g257785257799%_ _%g257786257803%_)))))
          (_%g257784257840%_ _%$stx257781%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx257844%_)
        (let* ((_%g257848257902%_
                (lambda (_%g257849257898%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257849257898%_))))
               (_%g257847258083%_
                (lambda (_%g257849257906%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257849257906%_))
                      (let ((_%e257861257909%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g257849257906%_))))
                        (let ((_%hd257862257913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257861257909%_)))
                              (_%tl257863257916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257861257909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257863257916%_))
                              (let ((_%e257864257919%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257863257916%_))))
                                (let ((_%hd257865257923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257864257919%_)))
                                      (_%tl257866257926%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257864257919%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl257866257926%_))
                                      (let ((_%e257867257929%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl257866257926%_))))
                                        (let ((_%hd257868257933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e257867257929%_)))
                                              (_%tl257869257936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e257867257929%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl257869257936%_))
                                              (let ((_%e257870257939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl257869257936%_))))
                                                (let ((_%hd257871257943%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e257870257939%_)))
                                                      (_%tl257872257946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e257870257939%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl257872257946%_))
                                                      (let ((_%e257873257949%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl257872257946%_))))
                (let ((_%hd257874257953%_
                       (let () (declare (not safe)) (##car _%e257873257949%_)))
                      (_%tl257875257956%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e257873257949%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl257875257956%_))
                      (let ((_%e257876257959%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl257875257956%_))))
                        (let ((_%hd257877257963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257876257959%_)))
                              (_%tl257878257966%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257876257959%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257878257966%_))
                              (let ((_%e257879257969%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257878257966%_))))
                                (let ((_%hd257880257973%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257879257969%_)))
                                      (_%tl257881257976%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257879257969%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl257881257976%_))
                                      (let ((_%e257882257979%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl257881257976%_))))
                                        (let ((_%hd257883257983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e257882257979%_)))
                                              (_%tl257884257986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e257882257979%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl257884257986%_))
                                              (let ((_%e257885257989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl257884257986%_))))
                                                (let ((_%hd257886257993%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e257885257989%_)))
                                                      (_%tl257887257996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e257885257989%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl257887257996%_))
                                                      (let ((_%e257888257999%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl257887257996%_))))
                (let ((_%hd257889258003%_
                       (let () (declare (not safe)) (##car _%e257888257999%_)))
                      (_%tl257890258006%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e257888257999%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl257890258006%_))
                      (let ((_%e257891258009%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl257890258006%_))))
                        (let ((_%hd257892258013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257891258009%_)))
                              (_%tl257893258016%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257891258009%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257893258016%_))
                              (let ((_%e257894258019%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl257893258016%_))))
                                (let ((_%hd257895258023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257894258019%_)))
                                      (_%tl257896258026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257894258019%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl257896258026%_))
                                      ((lambda (_%g257850258029%_
                                                _%g257851258031%_
                                                _%g257852258032%_
                                                _%g257853258033%_
                                                _%g257854258034%_
                                                _%g257855258035%_
                                                _%g257856258036%_
                                                _%g257857258037%_
                                                _%g257858258038%_
                                                _%g257859258039%_
                                                _%g257860258040%_)
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
                                                           (cons _%g257860258040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g257859258039%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g257858258038%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g257857258037%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g257856258036%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g257855258035%_ '()))
                                           (cons _%g257854258034%_
                                                 (cons _%g257853258033%_
                                                       (cons _%g257852258032%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g257851258031%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g257850258029%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd257895258023%_
                                       _%hd257892258013%_
                                       _%hd257889258003%_
                                       _%hd257886257993%_
                                       _%hd257883257983%_
                                       _%hd257880257973%_
                                       _%hd257877257963%_
                                       _%hd257874257953%_
                                       _%hd257871257943%_
                                       _%hd257868257933%_
                                       _%hd257865257923%_)
                                      (_%g257848257902%_ _%g257849257906%_))))
                              (_%g257848257902%_ _%g257849257906%_))))
                      (_%g257848257902%_ _%g257849257906%_))))
              (_%g257848257902%_ _%g257849257906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g257848257902%_
                                               _%g257849257906%_))))
                                      (_%g257848257902%_ _%g257849257906%_))))
                              (_%g257848257902%_ _%g257849257906%_))))
                      (_%g257848257902%_ _%g257849257906%_))))
              (_%g257848257902%_ _%g257849257906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g257848257902%_
                                               _%g257849257906%_))))
                                      (_%g257848257902%_ _%g257849257906%_))))
                              (_%g257848257902%_ _%g257849257906%_))))
                      (_%g257848257902%_ _%g257849257906%_)))))
          (_%g257847258083%_ _%$stx257844%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx258087%_)
        (let* ((_%g258091258105%_
                (lambda (_%g258092258101%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258092258101%_))))
               (_%g258090258146%_
                (lambda (_%g258092258109%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258092258109%_))
                      (let ((_%e258094258112%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258092258109%_))))
                        (let ((_%hd258095258116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258094258112%_)))
                              (_%tl258096258119%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258094258112%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258096258119%_))
                              (let ((_%e258097258122%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258096258119%_))))
                                (let ((_%hd258098258126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258097258122%_)))
                                      (_%tl258099258129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258097258122%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258099258129%_))
                                      ((lambda (_%g258093258132%_)
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
                                                           (cons _%g258093258132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd258098258126%_)
                                      (_%g258091258105%_ _%g258092258109%_))))
                              (_%g258091258105%_ _%g258092258109%_))))
                      (_%g258091258105%_ _%g258092258109%_)))))
          (_%g258090258146%_ _%$stx258087%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx258150%_)
        (let* ((_%g258154258168%_
                (lambda (_%g258155258164%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258155258164%_))))
               (_%g258153258209%_
                (lambda (_%g258155258172%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258155258172%_))
                      (let ((_%e258157258175%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258155258172%_))))
                        (let ((_%hd258158258179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258157258175%_)))
                              (_%tl258159258182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258157258175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258159258182%_))
                              (let ((_%e258160258185%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258159258182%_))))
                                (let ((_%hd258161258189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258160258185%_)))
                                      (_%tl258162258192%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258160258185%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258162258192%_))
                                      ((lambda (_%g258156258195%_)
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
                                                           (cons _%g258156258195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd258161258189%_)
                                      (_%g258154258168%_ _%g258155258172%_))))
                              (_%g258154258168%_ _%g258155258172%_))))
                      (_%g258154258168%_ _%g258155258172%_)))))
          (_%g258153258209%_ _%$stx258150%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx258213%_)
        (let* ((_%g258217258239%_
                (lambda (_%g258218258235%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258218258235%_))))
               (_%g258216258308%_
                (lambda (_%g258218258243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258218258243%_))
                      (let ((_%e258222258246%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258218258243%_))))
                        (let ((_%hd258223258250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258222258246%_)))
                              (_%tl258224258253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258222258246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258224258253%_))
                              (let ((_%e258225258256%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258224258253%_))))
                                (let ((_%hd258226258260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258225258256%_)))
                                      (_%tl258227258263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258225258256%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258227258263%_))
                                      (let ((_%e258228258266%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258227258263%_))))
                                        (let ((_%hd258229258270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258228258266%_)))
                                              (_%tl258230258273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258228258266%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258230258273%_))
                                              (let ((_%e258231258276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl258230258273%_))))
                                                (let ((_%hd258232258280%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258231258276%_)))
                                                      (_%tl258233258283%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258231258276%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258233258283%_))
                                                      ((lambda (_%g258219258286%_
                                                                _%g258220258288%_
                                                                _%g258221258289%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g258221258289%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g258220258288%_ '()))
                                   (cons _%g258219258286%_ '())))))
               _%hd258232258280%_
               _%hd258229258270%_
               _%hd258226258260%_)
              (_%g258217258239%_ _%g258218258243%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g258217258239%_
                                               _%g258218258243%_))))
                                      (_%g258217258239%_ _%g258218258243%_))))
                              (_%g258217258239%_ _%g258218258243%_))))
                      (_%g258217258239%_ _%g258218258243%_)))))
          (_%g258216258308%_ _%$stx258213%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx258312%_)
        (let* ((_%g258316258338%_
                (lambda (_%g258317258334%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258317258334%_))))
               (_%g258315258407%_
                (lambda (_%g258317258342%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258317258342%_))
                      (let ((_%e258321258345%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258317258342%_))))
                        (let ((_%hd258322258349%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258321258345%_)))
                              (_%tl258323258352%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258321258345%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258323258352%_))
                              (let ((_%e258324258355%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258323258352%_))))
                                (let ((_%hd258325258359%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258324258355%_)))
                                      (_%tl258326258362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258324258355%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258326258362%_))
                                      (let ((_%e258327258365%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258326258362%_))))
                                        (let ((_%hd258328258369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258327258365%_)))
                                              (_%tl258329258372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258327258365%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl258329258372%_))
                                              (let ((_%e258330258375%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl258329258372%_))))
                                                (let ((_%hd258331258379%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e258330258375%_)))
                                                      (_%tl258332258382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e258330258375%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl258332258382%_))
                                                      ((lambda (_%g258318258385%_
                                                                _%g258319258387%_
                                                                _%g258320258388%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g258320258388%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g258319258387%_ '()))
                                   (cons _%g258318258385%_ '())))))
               _%hd258331258379%_
               _%hd258328258369%_
               _%hd258325258359%_)
              (_%g258316258338%_ _%g258317258342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g258316258338%_
                                               _%g258317258342%_))))
                                      (_%g258316258338%_ _%g258317258342%_))))
                              (_%g258316258338%_ _%g258317258342%_))))
                      (_%g258316258338%_ _%g258317258342%_)))))
          (_%g258315258407%_ _%$stx258312%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx258411%_)
        (let* ((_%g258415258429%_
                (lambda (_%g258416258425%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258416258425%_))))
               (_%g258414258470%_
                (lambda (_%g258416258433%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258416258433%_))
                      (let ((_%e258418258436%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258416258433%_))))
                        (let ((_%hd258419258440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258418258436%_)))
                              (_%tl258420258443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258418258436%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258420258443%_))
                              (let ((_%e258421258446%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258420258443%_))))
                                (let ((_%hd258422258450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258421258446%_)))
                                      (_%tl258423258453%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258421258446%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl258423258453%_))
                                      ((lambda (_%g258417258456%_)
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
                                                           (cons _%g258417258456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd258422258450%_)
                                      (_%g258415258429%_ _%g258416258433%_))))
                              (_%g258415258429%_ _%g258416258433%_))))
                      (_%g258415258429%_ _%g258416258433%_)))))
          (_%g258414258470%_ _%$stx258411%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx258474%_)
        (let* ((_%g258478258496%_
                (lambda (_%g258479258492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258479258492%_))))
               (_%g258477258551%_
                (lambda (_%g258479258500%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258479258500%_))
                      (let ((_%e258482258503%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258479258500%_))))
                        (let ((_%hd258483258507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258482258503%_)))
                              (_%tl258484258510%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258482258503%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258484258510%_))
                              (let ((_%e258485258513%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl258484258510%_))))
                                (let ((_%hd258486258517%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258485258513%_)))
                                      (_%tl258487258520%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258485258513%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl258487258520%_))
                                      (let ((_%e258488258523%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl258487258520%_))))
                                        (let ((_%hd258489258527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e258488258523%_)))
                                              (_%tl258490258530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e258488258523%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl258490258530%_))
                                              ((lambda (_%g258480258533%_
                                                        _%g258481258535%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g258481258535%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g258480258533%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd258489258527%_
                                               _%hd258486258517%_)
                                              (_%g258478258496%_
                                               _%g258479258500%_))))
                                      (_%g258478258496%_ _%g258479258500%_))))
                              (_%g258478258496%_ _%g258479258500%_))))
                      (_%g258478258496%_ _%g258479258500%_)))))
          (_%g258477258551%_ _%$stx258474%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx258555%_)
        (let* ((_%__stx262871262872%_ _%$stx258555%_)
               (_%g258562258623%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262871262872%_)))))
          (let ((_%__kont262874262875%_
                 (lambda (_%g258564258861%_ _%g258565258863%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g258565258863%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g258564258861%_ '()))
                                     '())))))
                (_%__kont262876262877%_
                 (lambda (_%g258575258800%_
                          _%g258576258802%_
                          _%g258577258803%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g258577258803%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g258576258802%_ '()))
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
                                 (cons _%g258575258800%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont262878262879%_
                 (lambda (_%g258594258724%_ _%g258595258726%_)
                   (cons _%g258595258726%_
                         (cons _%g258594258724%_ (cons '#f '())))))
                (_%__kont262880262881%_
                 (lambda (_%g258602258674%_
                          _%g258603258676%_
                          _%g258604258677%_)
                   (cons _%g258604258677%_
                         (cons _%g258603258676%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g258602258674%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx262871262872%_))
                (let ((_%e258566258831%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx262871262872%_))))
                  (let ((_%tl258568258838%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e258566258831%_)))
                        (_%hd258567258835%_
                         (let ()
                           (declare (not safe))
                           (##car _%e258566258831%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl258568258838%_))
                        (let ((_%e258569258841%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl258568258838%_))))
                          (let ((_%tl258571258848%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e258569258841%_)))
                                (_%hd258570258845%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e258569258841%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl258571258848%_))
                                (let ((_%e258572258851%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl258571258848%_))))
                                  (let ((_%tl258574258858%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e258572258851%_)))
                                        (_%hd258573258855%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e258572258851%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl258574258858%_))
                                        (_%__kont262874262875%_
                                         _%hd258573258855%_
                                         _%hd258570258845%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl258574258858%_))
                                            (let ((_%e258587258776%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl258574258858%_))))
                                              (let ((_%tl258589258783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e258587258776%_)))
                                                    (_%hd258588258780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e258587258776%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd258588258780%_))
                                                    (let ((_%e258590258786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd258588258780%_))))
                                                      (if (equal? _%e258590258786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl258589258783%_))
                      (let ((_%e258591258790%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl258589258783%_))))
                        (let ((_%tl258593258797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258591258790%_)))
                              (_%hd258592258794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258591258790%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl258593258797%_))
                              (_%__kont262876262877%_
                               _%hd258592258794%_
                               _%hd258573258855%_
                               _%hd258570258845%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd258573258855%_))
                                  (let ((_%e258614258660%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd258573258855%_))))
                                    (declare (not safe))
                                    (_%g258562258623%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g258562258623%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd258573258855%_))
                          (let ((_%e258614258660%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd258573258855%_))))
                            (if (equal? _%e258614258660%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl258589258783%_))
                                    (_%__kont262880262881%_
                                     _%hd258588258780%_
                                     _%hd258570258845%_
                                     _%hd258567258835%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g258562258623%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g258562258623%_))))
                          (let () (declare (not safe)) (_%g258562258623%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd258573258855%_))
                      (let ((_%e258614258660%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd258573258855%_))))
                        (if (equal? _%e258614258660%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl258589258783%_))
                                (_%__kont262880262881%_
                                 _%hd258588258780%_
                                 _%hd258570258845%_
                                 _%hd258567258835%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g258562258623%_)))
                            (let () (declare (not safe)) (_%g258562258623%_))))
                      (let () (declare (not safe)) (_%g258562258623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd258573258855%_))
                                                        (let ((_%e258614258660%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd258573258855%_))))
                  (if (equal? _%e258614258660%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl258589258783%_))
                          (_%__kont262880262881%_
                           _%hd258588258780%_
                           _%hd258570258845%_
                           _%hd258567258835%_)
                          (let () (declare (not safe)) (_%g258562258623%_)))
                      (let () (declare (not safe)) (_%g258562258623%_))))
                (let () (declare (not safe)) (_%g258562258623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd258573258855%_))
                                                (let ((_%e258614258660%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd258573258855%_))))
                                                  (declare (not safe))
                                                  (_%g258562258623%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g258562258623%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl258571258848%_))
                                    (_%__kont262878262879%_
                                     _%hd258570258845%_
                                     _%hd258567258835%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g258562258623%_))))))
                        (let () (declare (not safe)) (_%g258562258623%_)))))
                (let () (declare (not safe)) (_%g258562258623%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx258882%_)
        (let* ((_%g258886258915%_
                (lambda (_%g258887258911%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258887258911%_))))
               (_%g258885259020%_
                (lambda (_%g258887258919%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258887258919%_))
                      (let ((_%e258889258922%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g258887258919%_))))
                        (let ((_%hd258890258926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258889258922%_)))
                              (_%tl258891258929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258889258922%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl258891258929%_))
                              (let ((_g263501_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl258891258929%_
                                        '0))))
                                (begin
                                  (let ((_g263502_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263501_)
                                               (##values-length _g263501_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263502_ 2)))
                                        (error "Context expects 2 values"
                                               _g263502_)))
                                  (let ((_%target258892258932%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263501_ 0)))
                                        (_%tl258894258935%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263501_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl258894258935%_))
                                        (letrec ((_%loop258895258938%_
                                                  (lambda (_%hd258893258942%_
                                                           _%clause258899258945%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd258893258942%_))
                                                        (let ((_%e258896258947%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd258893258942%_))))
                  (let ((_%lp-hd258897258951%_
                         (let ()
                           (declare (not safe))
                           (##car _%e258896258947%_)))
                        (_%lp-tl258898258954%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e258896258947%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd258897258951%_))
                        (let ((_g263503_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd258897258951%_
                                  '0))))
                          (begin
                            (let ((_g263504_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g263503_)
                                         (##values-length _g263503_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g263504_ 2)))
                                  (error "Context expects 2 values"
                                         _g263504_)))
                            (let ((_%target258901258957%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g263503_ 0)))
                                  (_%tl258903258960%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g263503_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl258903258960%_))
                                  (letrec ((_%loop258904258963%_
                                            (lambda (_%hd258902258967%_
                                                     _%clause258908258970%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd258902258967%_))
                                                  (let ((_%e258905258972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd258902258967%_))))
                                                    (let ((_%lp-hd258906258976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e258905258972%_)))
                                                          (_%lp-tl258907258979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e258905258972%_))))
                                                      (_%loop258904258963%_
                                                       _%lp-tl258907258979%_
                                                       (cons _%lp-hd258906258976%_
                                                             _%clause258908258970%_))))
                                                  (let ((_%clause258909258982%_
                                                         (reverse _%clause258908258970%_)))
                                                    (_%loop258895258938%_
                                                     _%lp-tl258898258954%_
                                                     (cons _%clause258909258982%_
                                                           _%clause258899258945%_)))))))
                                    (_%loop258904258963%_
                                     _%target258901258957%_
                                     '()))
                                  (_%g258886258915%_ _%g258887258919%_)))))
                        (_%g258886258915%_ _%g258887258919%_))))
                (let ((_%clause258900258985%_
                       (reverse _%clause258899258945%_)))
                  ((lambda (_%g258888258988%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp263505
                                              (lambda (_%g259003259008%_
                                                       _%g259004259011%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp263506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g259005259014%_ _%g259006259017%_)
                             (cons _%g259005259014%_ _%g259006259017%_))))
                      (declare (not safe))
                      (foldr__0 __tmp263506 '() _%g259003259008%_)))
              _%g259004259011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp263505
                                          '()
                                          _%g258888258988%_)))
                                 '())))
                   _%clause258900258985%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop258895258938%_
                                           _%target258892258932%_
                                           '()))
                                        (_%g258886258915%_
                                         _%g258887258919%_)))))
                              (_%g258886258915%_ _%g258887258919%_))))
                      (_%g258886258915%_ _%g258887258919%_)))))
          (_%g258885259020%_ _%$stx258882%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx259026%_)
        (let* ((_%g259030259048%_
                (lambda (_%g259031259044%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259031259044%_))))
               (_%g259029259103%_
                (lambda (_%g259031259052%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259031259052%_))
                      (let ((_%e259034259055%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259031259052%_))))
                        (let ((_%hd259035259059%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259034259055%_)))
                              (_%tl259036259062%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259034259055%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259036259062%_))
                              (let ((_%e259037259065%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259036259062%_))))
                                (let ((_%hd259038259069%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259037259065%_)))
                                      (_%tl259039259072%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259037259065%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259039259072%_))
                                      (let ((_%e259040259075%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259039259072%_))))
                                        (let ((_%hd259041259079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259040259075%_)))
                                              (_%tl259042259082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259040259075%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259042259082%_))
                                              ((lambda (_%g259032259085%_
                                                        _%g259033259087%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g259033259087%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g259032259085%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd259041259079%_
                                               _%hd259038259069%_)
                                              (_%g259030259048%_
                                               _%g259031259052%_))))
                                      (_%g259030259048%_ _%g259031259052%_))))
                              (_%g259030259048%_ _%g259031259052%_))))
                      (_%g259030259048%_ _%g259031259052%_)))))
          (_%g259029259103%_ _%$stx259026%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx259107%_)
        (let* ((_%g259111259129%_
                (lambda (_%g259112259125%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259112259125%_))))
               (_%g259110259184%_
                (lambda (_%g259112259133%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259112259133%_))
                      (let ((_%e259115259136%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259112259133%_))))
                        (let ((_%hd259116259140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259115259136%_)))
                              (_%tl259117259143%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259115259136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259117259143%_))
                              (let ((_%e259118259146%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259117259143%_))))
                                (let ((_%hd259119259150%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259118259146%_)))
                                      (_%tl259120259153%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259118259146%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259120259153%_))
                                      (let ((_%e259121259156%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259120259153%_))))
                                        (let ((_%hd259122259160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259121259156%_)))
                                              (_%tl259123259163%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259121259156%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259123259163%_))
                                              ((lambda (_%g259113259166%_
                                                        _%g259114259168%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g259114259168%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g259113259166%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd259122259160%_
                                               _%hd259119259150%_)
                                              (_%g259111259129%_
                                               _%g259112259133%_))))
                                      (_%g259111259129%_ _%g259112259133%_))))
                              (_%g259111259129%_ _%g259112259133%_))))
                      (_%g259111259129%_ _%g259112259133%_)))))
          (_%g259110259184%_ _%$stx259107%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx259188%_)
        (let* ((_%g259192259221%_
                (lambda (_%g259193259217%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259193259217%_))))
               (_%g259191259317%_
                (lambda (_%g259193259225%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259193259225%_))
                      (let ((_%e259196259228%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259193259225%_))))
                        (let ((_%hd259197259232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259196259228%_)))
                              (_%tl259198259235%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259196259228%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl259198259235%_))
                              (let ((_g263507_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl259198259235%_
                                        '0))))
                                (begin
                                  (let ((_g263508_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263507_)
                                               (##values-length _g263507_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263508_ 2)))
                                        (error "Context expects 2 values"
                                               _g263508_)))
                                  (let ((_%target259199259238%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263507_ 0)))
                                        (_%tl259201259241%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263507_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259201259241%_))
                                        (letrec ((_%loop259202259244%_
                                                  (lambda (_%hd259200259248%_
                                                           _%rule259206259251%_
                                                           _%proc259207259252%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd259200259248%_))
                                                        (let ((_%e259203259254%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd259200259248%_))))
                  (let ((_%lp-hd259204259258%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259203259254%_)))
                        (_%lp-tl259205259261%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259203259254%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd259204259258%_))
                        (let ((_%e259210259264%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd259204259258%_))))
                          (let ((_%hd259211259268%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259210259264%_)))
                                (_%tl259212259271%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259210259264%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259212259271%_))
                                (let ((_%e259213259274%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259212259271%_))))
                                  (let ((_%hd259214259278%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259213259274%_)))
                                        (_%tl259215259281%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259213259274%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259215259281%_))
                                        (_%loop259202259244%_
                                         _%lp-tl259205259261%_
                                         (cons _%hd259214259278%_
                                               _%rule259206259251%_)
                                         (cons _%hd259211259268%_
                                               _%proc259207259252%_))
                                        (_%g259192259221%_
                                         _%g259193259225%_))))
                                (_%g259192259221%_ _%g259193259225%_))))
                        (_%g259192259221%_ _%g259193259225%_))))
                (let ((_%rule259208259284%_ (reverse _%rule259206259251%_))
                      (_%proc259209259286%_ (reverse _%proc259207259252%_)))
                  ((lambda (_%g259194259288%_ _%g259195259290%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g259194259288%_
                                _%g259195259290%_))
                             (let ((__tmp263509
                                    (lambda (_%g259305259309%_
                                             _%g259306259312%_
                                             _%g259307259314%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g259306259312%_
                                                        (cons _%g259305259309%_
                                                              '())))
                                            _%g259307259314%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp263509
                                '()
                                _%g259194259288%_
                                _%g259195259290%_)))))
                   _%rule259208259284%_
                   _%proc259209259286%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop259202259244%_
                                           _%target259199259238%_
                                           '()
                                           '()))
                                        (_%g259192259221%_
                                         _%g259193259225%_)))))
                              (_%g259192259221%_ _%g259193259225%_))))
                      (_%g259192259221%_ _%g259193259225%_)))))
          (_%g259191259317%_ _%$stx259188%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx259322%_)
        (let* ((_%g259326259344%_
                (lambda (_%g259327259340%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259327259340%_))))
               (_%g259325259399%_
                (lambda (_%g259327259348%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259327259348%_))
                      (let ((_%e259330259351%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259327259348%_))))
                        (let ((_%hd259331259355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259330259351%_)))
                              (_%tl259332259358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259330259351%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259332259358%_))
                              (let ((_%e259333259361%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259332259358%_))))
                                (let ((_%hd259334259365%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259333259361%_)))
                                      (_%tl259335259368%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259333259361%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl259335259368%_))
                                      (let ((_%e259336259371%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl259335259368%_))))
                                        (let ((_%hd259337259375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259336259371%_)))
                                              (_%tl259338259378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259336259371%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259338259378%_))
                                              ((lambda (_%g259328259381%_
                                                        _%g259329259383%_)
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
                                                   (cons _%g259329259383%_
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
                 (cons _%g259328259381%_ '())))
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
                                   (cons _%g259329259383%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd259337259375%_
                                               _%hd259334259365%_)
                                              (_%g259326259344%_
                                               _%g259327259348%_))))
                                      (_%g259326259344%_ _%g259327259348%_))))
                              (_%g259326259344%_ _%g259327259348%_))))
                      (_%g259326259344%_ _%g259327259348%_)))))
          (_%g259325259399%_ _%$stx259322%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx259403%_)
        (let* ((_%__stx262989262990%_ _%$stx259403%_)
               (_%g259408259433%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx262989262990%_)))))
          (let ((_%__kont262992262993%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont262994262995%_
                 (lambda (_%g259413259480%_
                          _%g259414259482%_
                          _%g259415259483%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g259415259483%_
                                           (cons _%g259414259482%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g259413259480%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx262989262990%_))
                (let ((_%e259410259509%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx262989262990%_))))
                  (let ((_%tl259412259516%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259410259509%_)))
                        (_%hd259411259513%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259410259509%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl259412259516%_))
                        (_%__kont262992262993%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl259412259516%_))
                            (let ((_%e259419259450%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl259412259516%_))))
                              (let ((_%tl259421259457%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e259419259450%_)))
                                    (_%hd259420259454%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e259419259450%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd259420259454%_))
                                    (let ((_%e259422259460%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd259420259454%_))))
                                      (let ((_%tl259424259467%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e259422259460%_)))
                                            (_%hd259423259464%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e259422259460%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259424259467%_))
                                            (let ((_%e259425259470%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl259424259467%_))))
                                              (let ((_%tl259427259477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259425259470%_)))
                                                    (_%hd259426259474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259425259470%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl259427259477%_))
                                                    (_%__kont262994262995%_
                                                     _%tl259421259457%_
                                                     _%hd259426259474%_
                                                     _%hd259423259464%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g259408259433%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g259408259433%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g259408259433%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g259408259433%_))))))
                (let () (declare (not safe)) (_%g259408259433%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx259527%_)
        (let* ((_%__stx263033263034%_ _%$stx259527%_)
               (_%g259532259563%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx263033263034%_)))))
          (let ((_%__kont263036263037%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont263038263039%_
                 (lambda (_%g259537259628%_
                          _%g259538259630%_
                          _%g259539259631%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g259539259631%_
                                           (let ((__tmp263510
                                                  (lambda (_%g259651259654%_
                                                           _%g259652259657%_)
                                                    (cons _%g259651259654%_
                                                          _%g259652259657%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp263510
                                              '()
                                              _%g259538259630%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g259537259628%_)
                                     '()))))))
            (let ((_%__match263076263077%_
                   (lambda (_%e259540259570%_
                            _%hd259541259574%_
                            _%tl259542259577%_
                            _%e259543259580%_
                            _%hd259544259584%_
                            _%tl259545259587%_
                            _%e259546259590%_
                            _%hd259547259594%_
                            _%tl259548259597%_
                            _%__splice263040263041%_
                            _%target259549259600%_
                            _%tl259551259603%_)
                     (letrec ((_%loop259552259606%_
                               (lambda (_%hd259550259610%_ _%sig259556259613%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd259550259610%_))
                                     (let ((_%e259553259615%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd259550259610%_))))
                                       (let ((_%lp-tl259555259622%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e259553259615%_)))
                                             (_%lp-hd259554259619%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e259553259615%_))))
                                         (_%loop259552259606%_
                                          _%lp-tl259555259622%_
                                          (cons _%lp-hd259554259619%_
                                                _%sig259556259613%_))))
                                     (let ((_%sig259557259625%_
                                            (reverse _%sig259556259613%_)))
                                       (_%__kont263038263039%_
                                        _%tl259545259587%_
                                        _%sig259557259625%_
                                        _%hd259547259594%_))))))
                       (_%loop259552259606%_ _%target259549259600%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx263033263034%_))
                  (let ((_%e259534259667%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx263033263034%_))))
                    (let ((_%tl259536259674%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259534259667%_)))
                          (_%hd259535259671%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259534259667%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259536259674%_))
                          (_%__kont263036263037%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259536259674%_))
                              (let ((_%e259543259580%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259536259674%_))))
                                (let ((_%tl259545259587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259543259580%_)))
                                      (_%hd259544259584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259543259580%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd259544259584%_))
                                      (let ((_%e259546259590%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd259544259584%_))))
                                        (let ((_%tl259548259597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259546259590%_)))
                                              (_%hd259547259594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259546259590%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl259548259597%_))
                                              (let ((_%__splice263040263041%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl259548259597%_
                                                        '0))))
                                                (let ((_%tl259551259603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice263040263041%_
                                                          '1)))
                                                      (_%target259549259600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice263040263041%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259551259603%_))
                                                      (_%__match263076263077%_
                                                       _%e259534259667%_
                                                       _%hd259535259671%_
                                                       _%tl259536259674%_
                                                       _%e259543259580%_
                                                       _%hd259544259584%_
                                                       _%tl259545259587%_
                                                       _%e259546259590%_
                                                       _%hd259547259594%_
                                                       _%tl259548259597%_
                                                       _%__splice263040263041%_
                                                       _%target259549259600%_
                                                       _%tl259551259603%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g259532259563%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g259532259563%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g259532259563%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g259532259563%_))))))
                  (let () (declare (not safe)) (_%g259532259563%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx259686%_)
        (let* ((_%__stx263079263080%_ _%$stx259686%_)
               (_%g259691259738%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx263079263080%_)))))
          (let ((_%__kont263082263083%_
                 (lambda (_%g259693259896%_ _%g259694259898%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g259694259898%_
                               (let ((__tmp263511
                                      (lambda (_%g259918259921%_
                                               _%g259919259924%_)
                                        (cons _%g259918259921%_
                                              _%g259919259924%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp263511
                                  '()
                                  _%g259693259896%_))))))
                (_%__kont263086263087%_
                 (lambda (_%g259716259793%_ _%g259717259795%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g259717259795%_
                               (let ((__tmp263512
                                      (lambda (_%g259812259815%_
                                               _%g259813259818%_)
                                        (cons _%g259812259815%_
                                              _%g259813259818%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp263512
                                  '()
                                  _%g259716259793%_)))))))
            (let* ((_%__match263146263147%_
                    (lambda (_%e259718259745%_
                             _%hd259719259749%_
                             _%tl259720259752%_
                             _%e259721259755%_
                             _%hd259722259759%_
                             _%tl259723259762%_
                             _%__splice263088263089%_
                             _%target259724259765%_
                             _%tl259726259768%_)
                      (letrec ((_%loop259727259771%_
                                (lambda (_%hd259725259775%_
                                         _%sig259731259778%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd259725259775%_))
                                      (let ((_%e259728259780%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd259725259775%_))))
                                        (let ((_%lp-tl259730259787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259728259780%_)))
                                              (_%lp-hd259729259784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259728259780%_))))
                                          (_%loop259727259771%_
                                           _%lp-tl259730259787%_
                                           (cons _%lp-hd259729259784%_
                                                 _%sig259731259778%_))))
                                      (let ((_%sig259732259790%_
                                             (reverse _%sig259731259778%_)))
                                        (_%__kont263086263087%_
                                         _%sig259732259790%_
                                         _%hd259722259759%_))))))
                        (_%loop259727259771%_ _%target259724259765%_ '()))))
                   (_%__match263138263139%_
                    (lambda (_%e259718259745%_
                             _%hd259719259749%_
                             _%tl259720259752%_
                             _%e259721259755%_
                             _%hd259722259759%_
                             _%tl259723259762%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl259723259762%_))
                          (let ((_%__splice263088263089%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl259723259762%_
                                    '0))))
                            (let ((_%tl259726259768%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice263088263089%_
                                      '1)))
                                  (_%target259724259765%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice263088263089%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl259726259768%_))
                                  (_%__match263146263147%_
                                   _%e259718259745%_
                                   _%hd259719259749%_
                                   _%tl259720259752%_
                                   _%e259721259755%_
                                   _%hd259722259759%_
                                   _%tl259723259762%_
                                   _%__splice263088263089%_
                                   _%target259724259765%_
                                   _%tl259726259768%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g259691259738%_)))))
                          (let () (declare (not safe)) (_%g259691259738%_)))))
                   (_%__match263126263127%_
                    (lambda (_%e259695259828%_
                             _%hd259696259832%_
                             _%tl259697259835%_
                             _%e259698259838%_
                             _%hd259699259842%_
                             _%tl259700259845%_
                             _%e259701259848%_
                             _%hd259702259852%_
                             _%tl259703259855%_
                             _%e259704259858%_
                             _%hd259705259862%_
                             _%tl259706259865%_
                             _%__splice263084263085%_
                             _%target259707259868%_
                             _%tl259709259871%_)
                      (letrec ((_%loop259710259874%_
                                (lambda (_%hd259708259878%_
                                         _%sig259714259881%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd259708259878%_))
                                      (let ((_%e259711259883%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd259708259878%_))))
                                        (let ((_%lp-tl259713259890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e259711259883%_)))
                                              (_%lp-hd259712259887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e259711259883%_))))
                                          (_%loop259710259874%_
                                           _%lp-tl259713259890%_
                                           (cons _%lp-hd259712259887%_
                                                 _%sig259714259881%_))))
                                      (let ((_%sig259715259893%_
                                             (reverse _%sig259714259881%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl259703259855%_))
                                            (_%__kont263082263083%_
                                             _%sig259715259893%_
                                             _%hd259699259842%_)
                                            (_%__match263138263139%_
                                             _%e259695259828%_
                                             _%hd259696259832%_
                                             _%tl259697259835%_
                                             _%e259698259838%_
                                             _%hd259699259842%_
                                             _%tl259700259845%_)))))))
                        (_%loop259710259874%_ _%target259707259868%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx263079263080%_))
                  (let ((_%e259695259828%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx263079263080%_))))
                    (let ((_%tl259697259835%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259695259828%_)))
                          (_%hd259696259832%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259695259828%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl259697259835%_))
                          (let ((_%e259698259838%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl259697259835%_))))
                            (let ((_%tl259700259845%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e259698259838%_)))
                                  (_%hd259699259842%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e259698259838%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl259700259845%_))
                                  (let ((_%e259701259848%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl259700259845%_))))
                                    (let ((_%tl259703259855%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259701259848%_)))
                                          (_%hd259702259852%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259701259848%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd259702259852%_))
                                          (let ((_%e259704259858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd259702259852%_))))
                                            (let ((_%tl259706259865%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e259704259858%_)))
                                                  (_%hd259705259862%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e259704259858%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd259705259862%_))
                                                  (if (let ((__tmp263513
                                                             |gxc[1]#_g263514_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp263513
                                                         _%hd259705259862%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl259706259865%_))
                                                          (let ((_%__splice263084263085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl259706259865%_
                            '0))))
                    (let ((_%tl259709259871%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice263084263085%_ '1)))
                          (_%target259707259868%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice263084263085%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259709259871%_))
                          (_%__match263126263127%_
                           _%e259695259828%_
                           _%hd259696259832%_
                           _%tl259697259835%_
                           _%e259698259838%_
                           _%hd259699259842%_
                           _%tl259700259845%_
                           _%e259701259848%_
                           _%hd259702259852%_
                           _%tl259703259855%_
                           _%e259704259858%_
                           _%hd259705259862%_
                           _%tl259706259865%_
                           _%__splice263084263085%_
                           _%target259707259868%_
                           _%tl259709259871%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl259700259845%_))
                              (let ((_%__splice263088263089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl259700259845%_
                                        '0))))
                                (let ((_%tl259726259768%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice263088263089%_
                                          '1)))
                                      (_%target259724259765%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice263088263089%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl259726259768%_))
                                      (_%__match263146263147%_
                                       _%e259695259828%_
                                       _%hd259696259832%_
                                       _%tl259697259835%_
                                       _%e259698259838%_
                                       _%hd259699259842%_
                                       _%tl259700259845%_
                                       _%__splice263088263089%_
                                       _%target259724259765%_
                                       _%tl259726259768%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g259691259738%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g259691259738%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl259700259845%_))
                      (let ((_%__splice263088263089%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl259700259845%_
                                '0))))
                        (let ((_%tl259726259768%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice263088263089%_ '1)))
                              (_%target259724259765%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice263088263089%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl259726259768%_))
                              (_%__match263146263147%_
                               _%e259695259828%_
                               _%hd259696259832%_
                               _%tl259697259835%_
                               _%e259698259838%_
                               _%hd259699259842%_
                               _%tl259700259845%_
                               _%__splice263088263089%_
                               _%target259724259765%_
                               _%tl259726259768%_)
                              (let ()
                                (declare (not safe))
                                (_%g259691259738%_)))))
                      (let () (declare (not safe)) (_%g259691259738%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl259700259845%_))
                  (let ((_%__splice263088263089%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl259700259845%_
                            '0))))
                    (let ((_%tl259726259768%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice263088263089%_ '1)))
                          (_%target259724259765%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice263088263089%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl259726259768%_))
                          (_%__match263146263147%_
                           _%e259695259828%_
                           _%hd259696259832%_
                           _%tl259697259835%_
                           _%e259698259838%_
                           _%hd259699259842%_
                           _%tl259700259845%_
                           _%__splice263088263089%_
                           _%target259724259765%_
                           _%tl259726259768%_)
                          (let () (declare (not safe)) (_%g259691259738%_)))))
                  (let () (declare (not safe)) (_%g259691259738%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl259700259845%_))
                                                      (let ((_%__splice263088263089%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl259700259845%_
                        '0))))
                (let ((_%tl259726259768%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice263088263089%_ '1)))
                      (_%target259724259765%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice263088263089%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl259726259768%_))
                      (_%__match263146263147%_
                       _%e259695259828%_
                       _%hd259696259832%_
                       _%tl259697259835%_
                       _%e259698259838%_
                       _%hd259699259842%_
                       _%tl259700259845%_
                       _%__splice263088263089%_
                       _%target259724259765%_
                       _%tl259726259768%_)
                      (let () (declare (not safe)) (_%g259691259738%_)))))
              (let () (declare (not safe)) (_%g259691259738%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl259700259845%_))
                                              (let ((_%__splice263088263089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl259700259845%_
                                                        '0))))
                                                (let ((_%tl259726259768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice263088263089%_
                                                          '1)))
                                                      (_%target259724259765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice263088263089%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259726259768%_))
                                                      (_%__match263146263147%_
                                                       _%e259695259828%_
                                                       _%hd259696259832%_
                                                       _%tl259697259835%_
                                                       _%e259698259838%_
                                                       _%hd259699259842%_
                                                       _%tl259700259845%_
                                                       _%__splice263088263089%_
                                                       _%target259724259765%_
                                                       _%tl259726259768%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g259691259738%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g259691259738%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl259700259845%_))
                                      (let ((_%__splice263088263089%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl259700259845%_
                                                '0))))
                                        (let ((_%tl259726259768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice263088263089%_
                                                  '1)))
                                              (_%target259724259765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice263088263089%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl259726259768%_))
                                              (_%__match263146263147%_
                                               _%e259695259828%_
                                               _%hd259696259832%_
                                               _%tl259697259835%_
                                               _%e259698259838%_
                                               _%hd259699259842%_
                                               _%tl259700259845%_
                                               _%__splice263088263089%_
                                               _%target259724259765%_
                                               _%tl259726259768%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g259691259738%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g259691259738%_))))))
                          (let () (declare (not safe)) (_%g259691259738%_)))))
                  (let () (declare (not safe)) (_%g259691259738%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx261081%_ _%id261083%_)
        (let ((_%proc261087%_
               (let ((__tmp263515
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id261083%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp263515))))
          (if (procedure? _%proc261087%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx261081%_
                 _%id261083%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx261072%_ _%id261074%_)
        (let ((_%klass261078%_
               (let ((__tmp263516
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id261074%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp263516))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass261078%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx261072%_
                 _%id261074%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx260322%_ _%proc260324%_ _%sig260325%_)
        (letrec ((_%signature-arity260327%_
                  (lambda (_%args261004%_)
                    (let _%loop261007%_ ((_%rest261010%_ _%args261004%_)
                                         (_%count261012%_ '0))
                      (let* ((_%rest261013261024%_ _%rest261010%_)
                             (_%E261017261030%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest261013261024%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K261020261061%_
                               (lambda (_%rest261058%_)
                                 (_%loop261007%_
                                  _%rest261058%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count261012%_ '1)))))
                              (_%K261019261050%_ (lambda () _%count261012%_))
                              (_%K261018261038%_
                               (lambda () (cons _%count261012%_ '()))))
                          (let ((_%try-match261015261054%_
                                 (lambda ()
                                   (if (null? _%rest261013261024%_)
                                       (_%K261019261050%_)
                                       (_%K261018261038%_)))))
                            (if (pair? _%rest261013261024%_)
                                (let* ((_%tl261022261065%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest261013261024%_)))
                                       (_%rest261069%_ _%tl261022261065%_))
                                  (_%K261020261061%_ _%rest261069%_))
                                (_%try-match261015261054%_))))))))
                 (_%make-signature260329%_
                  (lambda (_%args260886%_
                           _%return260888%_
                           _%effect260889%_
                           _%unchecked260890%_)
                    (let ((__tmp263517
                           (lambda (_%g260891260893%_)
                             (|gxc[1]#verify-class!|
                              _%ctx260322%_
                              _%g260891260893%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp263517 _%args260886%_))
                    (|gxc[1]#verify-class!| _%ctx260322%_ _%return260888%_)
                    (if _%unchecked260890%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx260322%_
                         _%unchecked260890%_)
                        '#!void)
                    (let ((_%arity260897%_
                           (_%signature-arity260327%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args260886%_)))))
                      (if _%effect260889%_
                          (let ((_%effect260900%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect260889%_))))
                            (if (and (list? _%effect260900%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect260900%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx260322%_
                                   _%proc260324%_
                                   _%effect260900%_))))
                          '#!void)
                      (cons _%arity260897%_
                            (cons (let* ((_%g260903260926%_
                                          (lambda (_%g260904260922%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g260904260922%_))))
                                         (_%g260902261000%_
                                          (lambda (_%g260904260930%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g260904260930%_))
                                                (let ((_%e260909260933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g260904260930%_))))
                                                  (let ((_%hd260910260937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e260909260933%_)))
                                                        (_%tl260911260940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e260909260933%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl260911260940%_))
                                                        (let ((_%e260912260943%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl260911260940%_))))
                  (let ((_%hd260913260947%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260912260943%_)))
                        (_%tl260914260950%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260912260943%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl260914260950%_))
                        (let ((_%e260915260953%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl260914260950%_))))
                          (let ((_%hd260916260957%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260915260953%_)))
                                (_%tl260917260960%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260915260953%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260917260960%_))
                                (let ((_%e260918260963%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260917260960%_))))
                                  (let ((_%hd260919260967%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260918260963%_)))
                                        (_%tl260920260970%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260918260963%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260920260970%_))
                                        ((lambda (_%g260905260973%_
                                                  _%g260906260975%_
                                                  _%g260907260976%_
                                                  _%g260908260977%_)
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
                           (cons _%g260908260977%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g260907260976%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g260906260975%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g260905260973%_ '()))
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
                                         _%hd260919260967%_
                                         _%hd260916260957%_
                                         _%hd260913260947%_
                                         _%hd260910260937%_)
                                        (_%g260903260926%_
                                         _%g260904260930%_))))
                                (_%g260903260926%_ _%g260904260930%_))))
                        (_%g260903260926%_ _%g260904260930%_))))
                (_%g260903260926%_ _%g260904260930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g260903260926%_
                                                 _%g260904260930%_)))))
                                    (_%g260902261000%_
                                     (list _%args260886%_
                                           _%return260888%_
                                           _%effect260889%_
                                           _%unchecked260890%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx260322%_ _%proc260324%_)
          (let* ((_%__stx263157263158%_ _%sig260325%_)
                 (_%g260336260439%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx263157263158%_)))))
            (let ((_%__kont263160263161%_
                   (lambda (_%g260338260867%_ _%g260339260869%_)
                     (_%make-signature260329%_
                      _%g260339260869%_
                      _%g260338260867%_
                      '#f
                      '#f)))
                  (_%__kont263162263163%_
                   (lambda (_%g260346260818%_
                            _%g260347260820%_
                            _%g260348260821%_)
                     (_%make-signature260329%_
                      _%g260348260821%_
                      _%g260347260820%_
                      _%g260346260818%_
                      '#f)))
                  (_%__kont263164263165%_
                   (lambda (_%g260362260742%_
                            _%g260363260744%_
                            _%g260364260745%_)
                     (_%make-signature260329%_
                      _%g260364260745%_
                      _%g260363260744%_
                      _%g260362260742%_
                      (let ((__tmp263518
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc260324%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp263518)))))
                  (_%__kont263166263167%_
                   (lambda (_%g260382260648%_
                            _%g260383260650%_
                            _%g260384260651%_
                            _%g260385260652%_)
                     (_%make-signature260329%_
                      _%g260385260652%_
                      _%g260384260651%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g260382260648%_)))))
                  (_%__kont263168263169%_
                   (lambda (_%g260406260555%_ _%g260407260557%_)
                     (_%make-signature260329%_
                      _%g260407260557%_
                      _%g260406260555%_
                      '#f
                      (let ((__tmp263519
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc260324%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp263519)))))
                  (_%__kont263170263171%_
                   (lambda (_%g260418260490%_
                            _%g260419260492%_
                            _%g260420260493%_)
                     (_%make-signature260329%_
                      _%g260420260493%_
                      _%g260419260492%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g260418260490%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx263157263158%_))
                  (let ((_%e260340260847%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx263157263158%_))))
                    (let ((_%tl260342260854%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260340260847%_)))
                          (_%hd260341260851%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260340260847%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260342260854%_))
                          (let ((_%e260343260857%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl260342260854%_))))
                            (let ((_%tl260345260864%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260343260857%_)))
                                  (_%hd260344260861%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260343260857%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl260345260864%_))
                                  (_%__kont263160263161%_
                                   _%hd260344260861%_
                                   _%hd260341260851%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260345260864%_))
                                      (let ((_%e260355260794%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260345260864%_))))
                                        (let ((_%tl260357260801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260355260794%_)))
                                              (_%hd260356260798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260355260794%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd260356260798%_))
                                              (let ((_%e260358260804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd260356260798%_))))
                                                (if (equal? _%e260358260804%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl260357260801%_))
                                                        (let ((_%e260359260808%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl260357260801%_))))
                  (let ((_%tl260361260815%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260359260808%_)))
                        (_%hd260360260812%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260359260808%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl260361260815%_))
                        (_%__kont263162263163%_
                         _%hd260360260812%_
                         _%hd260344260861%_
                         _%hd260341260851%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl260361260815%_))
                            (let ((_%e260378260728%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl260361260815%_))))
                              (let ((_%tl260380260735%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e260378260728%_)))
                                    (_%hd260379260732%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e260378260728%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd260379260732%_))
                                    (let ((_%e260381260738%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd260379260732%_))))
                                      (if (equal? _%e260381260738%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260380260735%_))
                                              (_%__kont263164263165%_
                                               _%hd260360260812%_
                                               _%hd260344260861%_
                                               _%hd260341260851%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl260380260735%_))
                                                  (let ((_%e260403260638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl260380260735%_))))
                                                    (let ((_%tl260405260645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e260403260638%_)))
                                                          (_%hd260404260642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e260403260638%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl260405260645%_))
                                                          (_%__kont263166263167%_
                                                           _%hd260404260642%_
                                                           _%hd260360260812%_
                                                           _%hd260344260861%_
                                                           _%hd260341260851%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g260336260439%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g260336260439%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g260336260439%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g260336260439%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g260336260439%_))))))
                (let () (declare (not safe)) (_%g260336260439%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e260358260804%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl260357260801%_))
                                                            (_%__kont263168263169%_
                                                             _%hd260344260861%_
                                                             _%hd260341260851%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl260357260801%_))
                        (let ((_%e260431260480%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl260357260801%_))))
                          (let ((_%tl260433260487%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260431260480%_)))
                                (_%hd260432260484%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260431260480%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl260433260487%_))
                                (_%__kont263170263171%_
                                 _%hd260432260484%_
                                 _%hd260344260861%_
                                 _%hd260341260851%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g260336260439%_)))))
                        (let () (declare (not safe)) (_%g260336260439%_))))
                (let () (declare (not safe)) (_%g260336260439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g260336260439%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g260336260439%_))))))
                          (let () (declare (not safe)) (_%g260336260439%_)))))
                  (let () (declare (not safe)) (_%g260336260439%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig259933%_)
        (let* ((_%g259936260016%_
                (lambda (_%g259937260012%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g259937260012%_))))
               (_%g259935260318%_
                (lambda (_%g259937260020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g259937260020%_))
                      (let ((_%e259943260023%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g259937260020%_))))
                        (let ((_%hd259944260027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259943260023%_)))
                              (_%tl259945260030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259943260023%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl259945260030%_))
                              (let ((_%e259946260033%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl259945260030%_))))
                                (let ((_%hd259947260037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259946260033%_)))
                                      (_%tl259948260040%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259946260033%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd259947260037%_))
                                      (let ((_%e259949260043%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd259947260037%_))))
                                        (if (equal? _%e259949260043%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259948260040%_))
                                                (let ((_%e259950260047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl259948260040%_))))
                                                  (let ((_%hd259951260051%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259950260047%_)))
                                                        (_%tl259952260054%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259950260047%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd259951260051%_))
                                                        (let ((_%e259953260057%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd259951260051%_))))
                  (let ((_%hd259954260061%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259953260057%_)))
                        (_%tl259955260064%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259953260057%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd259954260061%_))
                        (if (let ((__tmp263520 |gxc[1]#_g263521_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp263520
                               _%hd259954260061%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259955260064%_))
                                (let ((_%e259956260067%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259955260064%_))))
                                  (let ((_%hd259957260071%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259956260067%_)))
                                        (_%tl259958260074%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259956260067%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259958260074%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259952260054%_))
                                            (let ((_%e259959260077%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl259952260054%_))))
                                              (let ((_%hd259960260081%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259959260077%_)))
                                                    (_%tl259961260084%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259959260077%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd259960260081%_))
                                                    (let ((_%e259962260087%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd259960260081%_))))
                                                      (if (equal? _%e259962260087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl259961260084%_))
                      (let ((_%e259963260091%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl259961260084%_))))
                        (let ((_%hd259964260095%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e259963260091%_)))
                              (_%tl259965260098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e259963260091%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd259964260095%_))
                              (let ((_%e259966260101%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd259964260095%_))))
                                (let ((_%hd259967260105%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e259966260101%_)))
                                      (_%tl259968260108%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e259966260101%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd259967260105%_))
                                      (if (let ((__tmp263522
                                                 |gxc[1]#_g263523_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp263522
                                             _%hd259967260105%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259968260108%_))
                                              (let ((_%e259969260111%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl259968260108%_))))
                                                (let ((_%hd259970260115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259969260111%_)))
                                                      (_%tl259971260118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259969260111%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl259971260118%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl259965260098%_))
                                                          (let ((_%e259972260121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl259965260098%_))))
                    (let ((_%hd259973260125%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259972260121%_)))
                          (_%tl259974260128%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259972260121%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd259973260125%_))
                          (let ((_%e259975260131%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd259973260125%_))))
                            (if (equal? _%e259975260131%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl259974260128%_))
                                    (let ((_%e259976260135%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl259974260128%_))))
                                      (let ((_%hd259977260139%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e259976260135%_)))
                                            (_%tl259978260142%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e259976260135%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd259977260139%_))
                                            (let ((_%e259979260145%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd259977260139%_))))
                                              (let ((_%hd259980260149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259979260145%_)))
                                                    (_%tl259981260152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259979260145%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd259980260149%_))
                                                    (if (let ((__tmp263524
                                                               |gxc[1]#_g263525_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp263524
                                                           _%hd259980260149%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl259981260152%_))
                                                            (let ((_%e259982260155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl259981260152%_))))
                      (let ((_%hd259983260159%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259982260155%_)))
                            (_%tl259984260162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259982260155%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl259984260162%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl259978260142%_))
                                (let ((_%e259985260165%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl259978260142%_))))
                                  (let ((_%hd259986260169%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259985260165%_)))
                                        (_%tl259987260172%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259985260165%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd259986260169%_))
                                        (let ((_%e259988260175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd259986260169%_))))
                                          (if (equal? _%e259988260175%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl259987260172%_))
                                                  (let ((_%e259989260179%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl259987260172%_))))
                                                    (let ((_%hd259990260183%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e259989260179%_)))
                                                          (_%tl259991260186%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e259989260179%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd259990260183%_))
                                                          (let ((_%e259992260189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd259990260183%_))))
                    (let ((_%hd259993260193%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259992260189%_)))
                          (_%tl259994260196%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259992260189%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd259993260193%_))
                          (if (let ((__tmp263526 |gxc[1]#_g263527_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp263526
                                 _%hd259993260193%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl259994260196%_))
                                  (let ((_%e259995260199%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl259994260196%_))))
                                    (let ((_%hd259996260203%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e259995260199%_)))
                                          (_%tl259997260206%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e259995260199%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl259997260206%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl259991260186%_))
                                              (let ((_%e259998260209%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl259991260186%_))))
                                                (let ((_%hd259999260213%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e259998260209%_)))
                                                      (_%tl260000260216%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e259998260209%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd259999260213%_))
                                                      (let ((_%e260001260219%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd259999260213%_))))
                (if (equal? _%e260001260219%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl260000260216%_))
                        (let ((_%e260002260223%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl260000260216%_))))
                          (let ((_%hd260003260227%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260002260223%_)))
                                (_%tl260004260230%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260002260223%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd260003260227%_))
                                (let ((_%e260005260233%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd260003260227%_))))
                                  (let ((_%hd260006260237%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260005260233%_)))
                                        (_%tl260007260240%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260005260233%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd260006260237%_))
                                        (if (let ((__tmp263528
                                                   |gxc[1]#_g263529_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp263528
                                               _%hd260006260237%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl260007260240%_))
                                                (let ((_%e260008260243%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl260007260240%_))))
                                                  (let ((_%hd260009260247%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e260008260243%_)))
                                                        (_%tl260010260250%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e260008260243%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl260010260250%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl260004260230%_))
                                                            ((lambda (_%g259938260253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g259939260255%_
                              _%g259940260256%_
                              _%g259941260257%_
                              _%g259942260258%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g259939260255%_))
                           (cons _%g259939260255%_
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
                       (cons _%g259941260257%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g259938260253%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd260009260247%_
                     _%hd259996260203%_
                     _%hd259983260159%_
                     _%hd259970260115%_
                     _%hd259957260071%_)
                    (_%g259936260016%_ _%g259937260020%_))
                (_%g259936260016%_ _%g259937260020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g259936260016%_
                                                 _%g259937260020%_))
                                            (_%g259936260016%_
                                             _%g259937260020%_))
                                        (_%g259936260016%_
                                         _%g259937260020%_))))
                                (_%g259936260016%_ _%g259937260020%_))))
                        (_%g259936260016%_ _%g259937260020%_))
                    (_%g259936260016%_ _%g259937260020%_)))
              (_%g259936260016%_ _%g259937260020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g259936260016%_
                                               _%g259937260020%_))
                                          (_%g259936260016%_
                                           _%g259937260020%_))))
                                  (_%g259936260016%_ _%g259937260020%_))
                              (_%g259936260016%_ _%g259937260020%_))
                          (_%g259936260016%_ _%g259937260020%_))))
                  (_%g259936260016%_ _%g259937260020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g259936260016%_
                                                   _%g259937260020%_))
                                              (_%g259936260016%_
                                               _%g259937260020%_)))
                                        (_%g259936260016%_
                                         _%g259937260020%_))))
                                (_%g259936260016%_ _%g259937260020%_))
                            (_%g259936260016%_ _%g259937260020%_))))
                    (_%g259936260016%_ _%g259937260020%_))
                (_%g259936260016%_ _%g259937260020%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g259936260016%_
                                                     _%g259937260020%_))))
                                            (_%g259936260016%_
                                             _%g259937260020%_))))
                                    (_%g259936260016%_ _%g259937260020%_))
                                (_%g259936260016%_ _%g259937260020%_)))
                          (_%g259936260016%_ _%g259937260020%_))))
                  (_%g259936260016%_ _%g259937260020%_))
              (_%g259936260016%_ _%g259937260020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g259936260016%_
                                               _%g259937260020%_))
                                          (_%g259936260016%_
                                           _%g259937260020%_))
                                      (_%g259936260016%_ _%g259937260020%_))))
                              (_%g259936260016%_ _%g259937260020%_))))
                      (_%g259936260016%_ _%g259937260020%_))
                  (_%g259936260016%_ _%g259937260020%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g259936260016%_
                                                     _%g259937260020%_))))
                                            (_%g259936260016%_
                                             _%g259937260020%_))
                                        (_%g259936260016%_
                                         _%g259937260020%_))))
                                (_%g259936260016%_ _%g259937260020%_))
                            (_%g259936260016%_ _%g259937260020%_))
                        (_%g259936260016%_ _%g259937260020%_))))
                (_%g259936260016%_ _%g259937260020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g259936260016%_
                                                 _%g259937260020%_))
                                            (_%g259936260016%_
                                             _%g259937260020%_)))
                                      (_%g259936260016%_ _%g259937260020%_))))
                              (_%g259936260016%_ _%g259937260020%_))))
                      (_%g259936260016%_ _%g259937260020%_)))))
          (_%g259935260318%_ _%sig259933%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx261090%_)
        (let* ((_%g261093261111%_
                (lambda (_%g261094261107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261094261107%_))))
               (_%g261092261166%_
                (lambda (_%g261094261115%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261094261115%_))
                      (let ((_%e261097261118%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261094261115%_))))
                        (let ((_%hd261098261122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261097261118%_)))
                              (_%tl261099261125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261097261118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261099261125%_))
                              (let ((_%e261100261128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261099261125%_))))
                                (let ((_%hd261101261132%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261100261128%_)))
                                      (_%tl261102261135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261100261128%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261102261135%_))
                                      (let ((_%e261103261138%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261102261135%_))))
                                        (let ((_%hd261104261142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261103261138%_)))
                                              (_%tl261105261145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261103261138%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261105261145%_))
                                              ((lambda (_%g261095261148%_
                                                        _%g261096261150%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g261096261150%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g261095261148%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx261090%_
                                                        _%g261096261150%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx261090%_
                                                        _%g261095261148%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g261096261150%_
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
                                                   (cons _%g261095261148%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261093261111%_
                                                      _%g261094261115%_)))
                                               _%hd261104261142%_
                                               _%hd261101261132%_)
                                              (_%g261093261111%_
                                               _%g261094261115%_))))
                                      (_%g261093261111%_ _%g261094261115%_))))
                              (_%g261093261111%_ _%g261094261115%_))))
                      (_%g261093261111%_ _%g261094261115%_)))))
          (_%g261092261166%_ _%stx261090%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx261170%_)
        (let* ((_%g261173261197%_
                (lambda (_%g261174261193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261174261193%_))))
               (_%g261172261478%_
                (lambda (_%g261174261201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261174261201%_))
                      (let ((_%e261177261204%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261174261201%_))))
                        (let ((_%hd261178261208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261177261204%_)))
                              (_%tl261179261211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261177261204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261179261211%_))
                              (let ((_%e261180261214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261179261211%_))))
                                (let ((_%hd261181261218%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261180261214%_)))
                                      (_%tl261182261221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261180261214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl261182261221%_))
                                      (let ((_g263530_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl261182261221%_
                                                '0))))
                                        (begin
                                          (let ((_g263531_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g263530_)
                                                       (##values-length
                                                        _g263530_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g263531_ 2)))
                                                (error "Context expects 2 values"
                                                       _g263531_)))
                                          (let ((_%target261183261224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g263530_ 0)))
                                                (_%tl261185261227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g263530_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261185261227%_))
                                                (letrec ((_%loop261186261230%_
                                                          (lambda (_%hd261184261234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature261190261237%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd261184261234%_))
                        (let ((_%e261187261239%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd261184261234%_))))
                          (let ((_%lp-hd261188261243%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261187261239%_)))
                                (_%lp-tl261189261246%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261187261239%_))))
                            (_%loop261186261230%_
                             _%lp-tl261189261246%_
                             (cons _%lp-hd261188261243%_
                                   _%signature261190261237%_))))
                        (let ((_%signature261191261249%_
                               (reverse _%signature261190261237%_)))
                          ((lambda (_%g261175261252%_ _%g261176261254%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g261176261254%_))
                                 (let* ((_%g261272261287%_
                                         (lambda (_%g261273261283%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g261273261283%_))))
                                        (_%g261271261466%_
                                         (lambda (_%g261273261291%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g261273261291%_))
                                               (let ((_%e261276261294%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g261273261291%_))))
                                                 (let ((_%hd261277261298%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e261276261294%_)))
                                                       (_%tl261278261301%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e261276261294%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl261278261301%_))
                                                       (let ((_%e261279261304%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl261278261301%_))))
                 (let ((_%hd261280261308%_
                        (let ()
                          (declare (not safe))
                          (##car _%e261279261304%_)))
                       (_%tl261281261311%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e261279261304%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl261281261311%_))
                       ((lambda (_%g261274261314%_ _%g261275261316%_)
                          (let* ((_%g261332261340%_
                                  (lambda (_%g261333261336%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g261333261336%_))))
                                 (_%g261331261462%_
                                  (lambda (_%g261333261344%_)
                                    ((lambda (_%g261334261347%_)
                                       (let* ((_%unchecked261360%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g261274261314%_))
                                              (_%g261363261371%_
                                               (lambda (_%g261364261367%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g261364261367%_))))
                                              (_%g261362261394%_
                                               (lambda (_%g261364261375%_)
                                                 ((lambda (_%g261365261378%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g261334261347%_
                                                                (cons _%g261365261378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g261364261375%_))))
                                         (_%g261362261394%_
                                          (if _%unchecked261360%_
                                              (let* ((_%g261398261413%_
                                                      (lambda (_%g261399261409%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g261399261409%_))))
                                                     (_%g261397261458%_
                                                      (lambda (_%g261399261417%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g261399261417%_))
                                                            (let ((_%e261402261420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g261399261417%_))))
                      (let ((_%hd261403261424%_
                             (let ()
                               (declare (not safe))
                               (##car _%e261402261420%_)))
                            (_%tl261404261427%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e261402261420%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl261404261427%_))
                            (let ((_%e261405261430%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl261404261427%_))))
                              (let ((_%hd261406261434%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e261405261430%_)))
                                    (_%tl261407261437%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e261405261430%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl261407261437%_))
                                    ((lambda (_%g261400261440%_
                                              _%g261401261442%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g261401261442%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261275261316%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g261400261440%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd261406261434%_
                                     _%hd261403261424%_)
                                    (_%g261398261413%_ _%g261399261417%_))))
                            (_%g261398261413%_ _%g261399261417%_))))
                    (_%g261398261413%_ _%g261399261417%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g261397261458%_
                                                 _%unchecked261360%_))
                                              '(begin)))))
                                     _%g261333261344%_))))
                            (_%g261331261462%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g261176261254%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g261275261316%_ '()))
                   (cons '#f (cons 'signature: (cons _%g261274261314%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd261280261308%_
                        _%hd261277261298%_)
                       (_%g261272261287%_ _%g261273261291%_))))
               (_%g261272261287%_ _%g261273261291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261272261287%_
                                                _%g261273261291%_)))))
                                   (_%g261271261466%_
                                    (|gxc[1]#parse-signature|
                                     _%stx261170%_
                                     _%g261176261254%_
                                     (let ((__tmp263532
                                            (lambda (_%g261469261472%_
                                                     _%g261470261475%_)
                                              (cons _%g261469261472%_
                                                    _%g261470261475%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp263532
                                        '()
                                        _%g261175261252%_)))))
                                 (_%g261173261197%_ _%g261174261201%_)))
                           _%signature261191261249%_
                           _%hd261181261218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop261186261230%_
                                                   _%target261183261224%_
                                                   '()))
                                                (_%g261173261197%_
                                                 _%g261174261201%_)))))
                                      (_%g261173261197%_ _%g261174261201%_))))
                              (_%g261173261197%_ _%g261174261201%_))))
                      (_%g261173261197%_ _%g261174261201%_)))))
          (_%g261172261478%_ _%stx261170%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx261483%_)
        (let* ((_%g261486261510%_
                (lambda (_%g261487261506%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261487261506%_))))
               (_%g261485262385%_
                (lambda (_%g261487261514%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261487261514%_))
                      (let ((_%e261490261517%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261487261514%_))))
                        (let ((_%hd261491261521%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261490261517%_)))
                              (_%tl261492261524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261490261517%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261492261524%_))
                              (let ((_%e261493261527%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261492261524%_))))
                                (let ((_%hd261494261531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261493261527%_)))
                                      (_%tl261495261534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261493261527%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl261495261534%_))
                                      (let ((_g263533_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl261495261534%_
                                                '0))))
                                        (begin
                                          (let ((_g263534_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g263533_)
                                                       (##values-length
                                                        _g263533_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g263534_ 2)))
                                                (error "Context expects 2 values"
                                                       _g263534_)))
                                          (let ((_%target261496261537%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g263533_ 0)))
                                                (_%tl261498261540%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g263533_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261498261540%_))
                                                (letrec ((_%loop261499261543%_
                                                          (lambda (_%hd261497261547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature261503261550%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd261497261547%_))
                        (let ((_%e261500261552%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd261497261547%_))))
                          (let ((_%lp-hd261501261556%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261500261552%_)))
                                (_%lp-tl261502261559%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261500261552%_))))
                            (_%loop261499261543%_
                             _%lp-tl261502261559%_
                             (cons _%lp-hd261501261556%_
                                   _%case-signature261503261550%_))))
                        (let ((_%case-signature261504261562%_
                               (reverse _%case-signature261503261550%_)))
                          ((lambda (_%g261488261565%_ _%g261489261567%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g261489261567%_))
                                 (let* ((_%signatures261598%_
                                         (map (lambda (_%g261584261586%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx261483%_
                                                 _%g261489261567%_
                                                 _%g261584261586%_))
                                              (let ((__tmp263535
                                                     (lambda (_%g261589261592%_
                                                              _%g261590261595%_)
                                                       (cons _%g261589261592%_
                                                             _%g261590261595%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp263535
                                                 '()
                                                 _%g261488261565%_))))
                                        (_%g261601261627%_
                                         (lambda (_%g261602261623%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g261602261623%_))))
                                        (_%g261600262381%_
                                         (lambda (_%g261602261631%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g261602261631%_))
                                               (let ((_g263536_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g261602261631%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g263537_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g263536_)
                        (##values-length _g263536_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g263537_ 2)))
                 (error "Context expects 2 values" _g263537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target261605261634%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g263536_
                                                             0)))
                                                         (_%tl261607261637%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g263536_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl261607261637%_))
                                                         (letrec ((_%loop261608261640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd261606261644%_
                                    _%sig261612261647%_
                                    _%arity261613261648%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd261606261644%_))
                                 (let ((_%e261609261650%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd261606261644%_))))
                                   (let ((_%lp-hd261610261654%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e261609261650%_)))
                                         (_%lp-tl261611261657%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e261609261650%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd261610261654%_))
                                         (let ((_%e261616261660%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd261610261654%_))))
                                           (let ((_%hd261617261664%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e261616261660%_)))
                                                 (_%tl261618261667%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e261616261660%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl261618261667%_))
                                                 (let ((_%e261619261670%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl261618261667%_))))
                                                   (let ((_%hd261620261674%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e261619261670%_)))
                                                         (_%tl261621261677%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e261619261670%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl261621261677%_))
                                                         (_%loop261608261640%_
                                                          _%lp-tl261611261657%_
                                                          (cons _%hd261620261674%_
                                                                _%sig261612261647%_)
                                                          (cons _%hd261617261664%_
                                                                _%arity261613261648%_))
                                                         (_%g261601261627%_
                                                          _%g261602261631%_))))
                                                 (_%g261601261627%_
                                                  _%g261602261631%_))))
                                         (_%g261601261627%_
                                          _%g261602261631%_))))
                                 (let ((_%sig261614261680%_
                                        (reverse _%sig261612261647%_))
                                       (_%arity261615261682%_
                                        (reverse _%arity261613261648%_)))
                                   ((lambda (_%g261603261684%_
                                             _%g261604261686%_)
                                      (let* ((_%g261703261711%_
                                              (lambda (_%g261704261707%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g261704261707%_))))
                                             (_%g261702262366%_
                                              (lambda (_%g261704261715%_)
                                                ((lambda (_%g261705261718%_)
                                                   (let* ((_%g261731261739%_
                                                           (lambda (_%g261732261735%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g261732261735%_))))
                  (_%g261730261761%_
                   (lambda (_%g261732261743%_)
                     ((lambda (_%g261733261746%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g261705261718%_
                                    (cons _%g261733261746%_ '()))))
                      _%g261732261743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261730261761%_
                                                      (let ((_g263538_
                                                             (let _%loop261765%_ ((_%rest261768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures261598%_)
                                          (_%unchecked-proc261770%_ '#f)
                                          (_%unchecked-clauses261771%_ '()))
                       (let* ((_%rest261772261780%_ _%rest261768%_)
                              (_%else261774261792%_
                               (lambda ()
                                 (values _%unchecked-proc261770%_
                                         (reverse!
                                          _%unchecked-clauses261771%_))))
                              (_%K261776262233%_
                               (lambda (_%rest261796%_ _%hd261798%_)
                                 (let* ((_%g261800261887%_
                                         (lambda (_%g261801261883%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g261801261883%_))))
                                        (_%g261799262229%_
                                         (lambda (_%g261801261891%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g261801261891%_))
                                               (let ((_%e261808261894%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g261801261891%_))))
                                                 (let ((_%hd261809261898%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e261808261894%_)))
                                                       (_%tl261810261901%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e261808261894%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl261810261901%_))
                                                       (let ((_%e261811261904%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl261810261901%_))))
                 (let ((_%hd261812261908%_
                        (let ()
                          (declare (not safe))
                          (##car _%e261811261904%_)))
                       (_%tl261813261911%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e261811261904%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd261812261908%_))
                       (let ((_%e261814261914%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd261812261908%_))))
                         (let ((_%hd261815261918%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e261814261914%_)))
                               (_%tl261816261921%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e261814261914%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl261816261921%_))
                               (let ((_%e261817261924%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl261816261921%_))))
                                 (let ((_%hd261818261928%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e261817261924%_)))
                                       (_%tl261819261931%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e261817261924%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd261818261928%_))
                                       (let ((_%e261820261934%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd261818261928%_))))
                                         (if (equal? _%e261820261934%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl261819261931%_))
                                                 (let ((_%e261821261938%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl261819261931%_))))
                                                   (let ((_%hd261822261942%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e261821261938%_)))
                                                         (_%tl261823261945%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e261821261938%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd261822261942%_))
                                                         (let ((_%e261824261948%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd261822261942%_))))
                   (let ((_%hd261825261952%_
                          (let ()
                            (declare (not safe))
                            (##car _%e261824261948%_)))
                         (_%tl261826261955%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e261824261948%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd261825261952%_))
                         (if (let ((__tmp263540 |gxc[1]#_g263541_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp263540
                                _%hd261825261952%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl261826261955%_))
                                 (let ((_%e261827261958%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl261826261955%_))))
                                   (let ((_%hd261828261962%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e261827261958%_)))
                                         (_%tl261829261965%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e261827261958%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl261829261965%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl261823261945%_))
                                             (let ((_%e261830261968%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl261823261945%_))))
                                               (let ((_%hd261831261972%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e261830261968%_)))
                                                     (_%tl261832261975%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e261830261968%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd261831261972%_))
                                                     (let ((_%e261833261978%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd261831261972%_))))
                                                       (if (equal? _%e261833261978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl261832261975%_))
                       (let ((_%e261834261982%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl261832261975%_))))
                         (let ((_%hd261835261986%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e261834261982%_)))
                               (_%tl261836261989%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e261834261982%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd261835261986%_))
                               (let ((_%e261837261992%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd261835261986%_))))
                                 (let ((_%hd261838261996%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e261837261992%_)))
                                       (_%tl261839261999%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e261837261992%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd261838261996%_))
                                       (if (let ((__tmp263542
                                                  |gxc[1]#_g263543_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp263542
                                              _%hd261838261996%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl261839261999%_))
                                               (let ((_%e261840262002%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl261839261999%_))))
                                                 (let ((_%hd261841262006%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e261840262002%_)))
                                                       (_%tl261842262009%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e261840262002%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl261842262009%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl261836261989%_))
                                                           (let ((_%e261843262012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl261836261989%_))))
                     (let ((_%hd261844262016%_
                            (let ()
                              (declare (not safe))
                              (##car _%e261843262012%_)))
                           (_%tl261845262019%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e261843262012%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd261844262016%_))
                           (let ((_%e261846262022%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd261844262016%_))))
                             (if (equal? _%e261846262022%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl261845262019%_))
                                     (let ((_%e261847262026%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl261845262019%_))))
                                       (let ((_%hd261848262030%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e261847262026%_)))
                                             (_%tl261849262033%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e261847262026%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd261848262030%_))
                                             (let ((_%e261850262036%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd261848262030%_))))
                                               (let ((_%hd261851262040%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e261850262036%_)))
                                                     (_%tl261852262043%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e261850262036%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd261851262040%_))
                                                     (if (let ((__tmp263544
                                                                |gxc[1]#_g263545_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp263544
                                                            _%hd261851262040%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl261852262043%_))
                     (let ((_%e261853262046%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl261852262043%_))))
                       (let ((_%hd261854262050%_
                              (let ()
                                (declare (not safe))
                                (##car _%e261853262046%_)))
                             (_%tl261855262053%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e261853262046%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl261855262053%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl261849262033%_))
                                 (let ((_%e261856262056%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl261849262033%_))))
                                   (let ((_%hd261857262060%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e261856262056%_)))
                                         (_%tl261858262063%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e261856262056%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd261857262060%_))
                                         (let ((_%e261859262066%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd261857262060%_))))
                                           (if (equal? _%e261859262066%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl261858262063%_))
                                                   (let ((_%e261860262070%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl261858262063%_))))
                                                     (let ((_%hd261861262074%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e261860262070%_)))
                                                           (_%tl261862262077%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e261860262070%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd261861262074%_))
                                                           (let ((_%e261863262080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd261861262074%_))))
                     (let ((_%hd261864262084%_
                            (let ()
                              (declare (not safe))
                              (##car _%e261863262080%_)))
                           (_%tl261865262087%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e261863262080%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd261864262084%_))
                           (if (let ((__tmp263546 |gxc[1]#_g263547_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp263546
                                  _%hd261864262084%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl261865262087%_))
                                   (let ((_%e261866262090%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl261865262087%_))))
                                     (let ((_%hd261867262094%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e261866262090%_)))
                                           (_%tl261868262097%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e261866262090%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl261868262097%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl261862262077%_))
                                               (let ((_%e261869262100%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl261862262077%_))))
                                                 (let ((_%hd261870262104%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e261869262100%_)))
                                                       (_%tl261871262107%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e261869262100%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd261870262104%_))
                                                       (let ((_%e261872262110%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd261870262104%_))))
                 (if (equal? _%e261872262110%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl261871262107%_))
                         (let ((_%e261873262114%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl261871262107%_))))
                           (let ((_%hd261874262118%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e261873262114%_)))
                                 (_%tl261875262121%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e261873262114%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd261874262118%_))
                                 (let ((_%e261876262124%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd261874262118%_))))
                                   (let ((_%hd261877262128%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e261876262124%_)))
                                         (_%tl261878262131%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e261876262124%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd261877262128%_))
                                         (if (let ((__tmp263548
                                                    |gxc[1]#_g263549_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp263548
                                                _%hd261877262128%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl261878262131%_))
                                                 (let ((_%e261879262134%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl261878262131%_))))
                                                   (let ((_%hd261880262138%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e261879262134%_)))
                                                         (_%tl261881262141%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e261879262134%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl261881262141%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl261875262121%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl261813261911%_))
                         ((lambda (_%g261802262144%_
                                   _%g261803262146%_
                                   _%g261804262147%_
                                   _%g261805262148%_
                                   _%g261806262149%_
                                   _%g261807262150%_)
                            (let ((_%clause262221%_
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
                                                     (cons _%g261807262150%_
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
                                                 (cons _%g261805262148%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g261802262144%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked262223%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g261803262146%_))))
                              (_%loop261765%_
                               _%rest261796%_
                               (let ((_%$e262225%_ _%unchecked262223%_))
                                 (if _%$e262225%_
                                     _%$e262225%_
                                     _%unchecked-proc261770%_))
                               (cons _%clause262221%_
                                     _%unchecked-clauses261771%_))))
                          _%hd261880262138%_
                          _%hd261867262094%_
                          _%hd261854262050%_
                          _%hd261841262006%_
                          _%hd261828261962%_
                          _%hd261809261898%_)
                         (_%g261800261887%_ _%g261801261891%_))
                     (_%g261800261887%_ _%g261801261891%_))
                 (_%g261800261887%_ _%g261801261891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g261800261887%_
                                                  _%g261801261891%_))
                                             (_%g261800261887%_
                                              _%g261801261891%_))
                                         (_%g261800261887%_
                                          _%g261801261891%_))))
                                 (_%g261800261887%_ _%g261801261891%_))))
                         (_%g261800261887%_ _%g261801261891%_))
                     (_%g261800261887%_ _%g261801261891%_)))
               (_%g261800261887%_ _%g261801261891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261800261887%_
                                                _%g261801261891%_))
                                           (_%g261800261887%_
                                            _%g261801261891%_))))
                                   (_%g261800261887%_ _%g261801261891%_))
                               (_%g261800261887%_ _%g261801261891%_))
                           (_%g261800261887%_ _%g261801261891%_))))
                   (_%g261800261887%_ _%g261801261891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g261800261887%_
                                                    _%g261801261891%_))
                                               (_%g261800261887%_
                                                _%g261801261891%_)))
                                         (_%g261800261887%_
                                          _%g261801261891%_))))
                                 (_%g261800261887%_ _%g261801261891%_))
                             (_%g261800261887%_ _%g261801261891%_))))
                     (_%g261800261887%_ _%g261801261891%_))
                 (_%g261800261887%_ _%g261801261891%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261800261887%_
                                                      _%g261801261891%_))))
                                             (_%g261800261887%_
                                              _%g261801261891%_))))
                                     (_%g261800261887%_ _%g261801261891%_))
                                 (_%g261800261887%_ _%g261801261891%_)))
                           (_%g261800261887%_ _%g261801261891%_))))
                   (_%g261800261887%_ _%g261801261891%_))
               (_%g261800261887%_ _%g261801261891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261800261887%_
                                                _%g261801261891%_))
                                           (_%g261800261887%_
                                            _%g261801261891%_))
                                       (_%g261800261887%_ _%g261801261891%_))))
                               (_%g261800261887%_ _%g261801261891%_))))
                       (_%g261800261887%_ _%g261801261891%_))
                   (_%g261800261887%_ _%g261801261891%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g261800261887%_
                                                      _%g261801261891%_))))
                                             (_%g261800261887%_
                                              _%g261801261891%_))
                                         (_%g261800261887%_
                                          _%g261801261891%_))))
                                 (_%g261800261887%_ _%g261801261891%_))
                             (_%g261800261887%_ _%g261801261891%_))
                         (_%g261800261887%_ _%g261801261891%_))))
                 (_%g261800261887%_ _%g261801261891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g261800261887%_
                                                  _%g261801261891%_))
                                             (_%g261800261887%_
                                              _%g261801261891%_)))
                                       (_%g261800261887%_ _%g261801261891%_))))
                               (_%g261800261887%_ _%g261801261891%_))))
                       (_%g261800261887%_ _%g261801261891%_))))
               (_%g261800261887%_ _%g261801261891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261800261887%_
                                                _%g261801261891%_)))))
                                   (_%g261799262229%_ _%hd261798%_)))))
                         (if (pair? _%rest261772261780%_)
                             (let ((_%hd261777262237%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest261772261780%_)))
                                   (_%tl261778262240%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest261772261780%_))))
                               (let* ((_%hd262243%_ _%hd261777262237%_)
                                      (_%rest262246%_ _%tl261778262240%_))
                                 (_%K261776262233%_
                                  _%rest262246%_
                                  _%hd262243%_)))
                             (_%else261774261792%_))))))
                (begin
                  (let ((_g263539_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g263538_)
                               (##values-length _g263538_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g263539_ 2)))
                        (error "Context expects 2 values" _g263539_)))
                  (let ((_%unchecked-proc262249%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g263538_ 0)))
                        (_%unchecked-clauses262251%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g263538_ 1))))
                    (if _%unchecked-proc262249%_
                        (let* ((_%g262253262277%_
                                (lambda (_%g262254262273%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g262254262273%_))))
                               (_%g262252262362%_
                                (lambda (_%g262254262281%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g262254262281%_))
                                      (let ((_%e262257262284%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g262254262281%_))))
                                        (let ((_%hd262258262288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262257262284%_)))
                                              (_%tl262259262291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262257262284%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262259262291%_))
                                              (let ((_%e262260262294%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262259262291%_))))
                                                (let ((_%hd262261262298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262260262294%_)))
                                                      (_%tl262262262301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262260262294%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd262261262298%_))
                                                      (let ((_g263550_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd262261262298%_ '0))))
                (begin
                  (let ((_g263551_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g263550_)
                               (##values-length _g263550_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g263551_ 2)))
                        (error "Context expects 2 values" _g263551_)))
                  (let ((_%target262263262304%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g263550_ 0)))
                        (_%tl262265262307%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g263550_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl262265262307%_))
                        (letrec ((_%loop262266262310%_
                                  (lambda (_%hd262264262314%_
                                           _%clause262270262317%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd262264262314%_))
                                        (let ((_%e262267262319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd262264262314%_))))
                                          (let ((_%lp-hd262268262323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e262267262319%_)))
                                                (_%lp-tl262269262326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e262267262319%_))))
                                            (_%loop262266262310%_
                                             _%lp-tl262269262326%_
                                             (cons _%lp-hd262268262323%_
                                                   _%clause262270262317%_))))
                                        (let ((_%clause262271262329%_
                                               (reverse _%clause262270262317%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262262262301%_))
                                              ((lambda (_%g262255262332%_
                                                        _%g262256262334%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g262256262334%_
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
                                             (let ((__tmp263552
                                                    (lambda (_%g262353262356%_
                                                             _%g262354262359%_)
                                                      (cons _%g262353262356%_
                                                            _%g262354262359%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp263552
                                                '()
                                                _%g262255262332%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause262271262329%_
                                               _%hd262258262288%_)
                                              (_%g262253262277%_
                                               _%g262254262281%_)))))))
                          (_%loop262266262310%_ _%target262263262304%_ '()))
                        (_%g262253262277%_ _%g262254262281%_)))))
              (_%g262253262277%_ _%g262254262281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g262253262277%_
                                               _%g262254262281%_))))
                                      (_%g262253262277%_ _%g262254262281%_)))))
                          (_%g262252262362%_
                           (list _%unchecked-proc262249%_
                                 _%unchecked-clauses262251%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g261704261715%_))))
                                        (_%g261702262366%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g261489261567%_
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
                                          _%g261603261684%_
                                          _%g261604261686%_))
                                       (let ((__tmp263553
                                              (lambda (_%g262369262373%_
                                                       _%g262370262376%_
                                                       _%g262371262378%_)
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
                                (cons _%g262370262376%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g262369262373%_ '())))))
              _%g262371262378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp263553
                                          '()
                                          _%g261603261684%_
                                          _%g261604261686%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig261614261680%_
                                    _%arity261615261682%_))))))
                   (_%loop261608261640%_ _%target261605261634%_ '() '()))
                 (_%g261601261627%_ _%g261602261631%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g261601261627%_
                                                _%g261602261631%_)))))
                                   (_%g261600262381%_ _%signatures261598%_))
                                 (_%g261486261510%_ _%g261487261514%_)))
                           _%case-signature261504261562%_
                           _%hd261494261531%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop261499261543%_
                                                   _%target261496261537%_
                                                   '()))
                                                (_%g261486261510%_
                                                 _%g261487261514%_)))))
                                      (_%g261486261510%_ _%g261487261514%_))))
                              (_%g261486261510%_ _%g261487261514%_))))
                      (_%g261486261510%_ _%g261487261514%_)))))
          (_%g261485262385%_ _%stx261483%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx262393%_)
        (let* ((_%__stx263373263374%_ _%$stx262393%_)
               (_%g262399262459%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx263373263374%_)))))
          (let ((_%__kont263376263377%_
                 (lambda (_%g262401262681%_ _%g262402262683%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262402262683%_ '()))
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
                                                       (cons _%g262402262683%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g262401262681%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont263378263379%_
                 (lambda (_%g262416262606%_
                          _%g262417262608%_
                          _%g262418262609%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262418262609%_ '()))
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
                                                       (cons _%g262418262609%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g262417262608%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262416262606%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont263380263381%_
                 (lambda (_%g262435262520%_
                          _%g262436262522%_
                          _%g262437262523%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g262437262523%_ '()))
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
                                                       (cons _%g262437262523%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g262436262522%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262435262520%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx263373263374%_))
                (let ((_%e262403262637%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx263373263374%_))))
                  (let ((_%tl262405262644%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262403262637%_)))
                        (_%hd262404262641%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262403262637%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl262405262644%_))
                        (let ((_%e262406262647%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl262405262644%_))))
                          (let ((_%tl262408262654%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262406262647%_)))
                                (_%hd262407262651%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262406262647%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd262407262651%_))
                                (let ((_%e262409262657%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd262407262651%_))))
                                  (if (equal? _%e262409262657%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl262408262654%_))
                                          (let ((_%e262410262661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl262408262654%_))))
                                            (let ((_%tl262412262668%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e262410262661%_)))
                                                  (_%hd262411262665%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e262410262661%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262412262668%_))
                                                  (let ((_%e262413262671%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl262412262668%_))))
                                                    (let ((_%tl262415262678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262413262671%_)))
                                                          (_%hd262414262675%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262413262671%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl262415262678%_))
                                                          (_%__kont263376263377%_
                                                           _%hd262414262675%_
                                                           _%hd262411262665%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g262399262459%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g262399262459%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g262399262459%_)))
                                      (if (equal? _%e262409262657%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl262408262654%_))
                                              (let ((_%e262426262576%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl262408262654%_))))
                                                (let ((_%tl262428262583%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e262426262576%_)))
                                                      (_%hd262427262580%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e262426262576%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl262428262583%_))
                                                      (let ((_%e262429262586%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl262428262583%_))))
                (let ((_%tl262431262593%_
                       (let () (declare (not safe)) (##cdr _%e262429262586%_)))
                      (_%hd262430262590%_
                       (let ()
                         (declare (not safe))
                         (##car _%e262429262586%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl262431262593%_))
                      (let ((_%e262432262596%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl262431262593%_))))
                        (let ((_%tl262434262603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262432262596%_)))
                              (_%hd262433262600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262432262596%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl262434262603%_))
                              (_%__kont263378263379%_
                               _%hd262433262600%_
                               _%hd262430262590%_
                               _%hd262427262580%_)
                              (let ()
                                (declare (not safe))
                                (_%g262399262459%_)))))
                      (let () (declare (not safe)) (_%g262399262459%_)))))
              (let () (declare (not safe)) (_%g262399262459%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g262399262459%_)))
                                          (if (equal? _%e262409262657%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl262408262654%_))
                                                  (let ((_%e262445262490%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl262408262654%_))))
                                                    (let ((_%tl262447262497%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262445262490%_)))
                                                          (_%hd262446262494%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262445262490%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl262447262497%_))
                                                          (let ((_%e262448262500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl262447262497%_))))
                    (let ((_%tl262450262507%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262448262500%_)))
                          (_%hd262449262504%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262448262500%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl262450262507%_))
                          (let ((_%e262451262510%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl262450262507%_))))
                            (let ((_%tl262453262517%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e262451262510%_)))
                                  (_%hd262452262514%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e262451262510%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262453262517%_))
                                  (_%__kont263380263381%_
                                   _%hd262452262514%_
                                   _%hd262449262504%_
                                   _%hd262446262494%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g262399262459%_)))))
                          (let () (declare (not safe)) (_%g262399262459%_)))))
                  (let () (declare (not safe)) (_%g262399262459%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g262399262459%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g262399262459%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g262399262459%_)))))
                        (let () (declare (not safe)) (_%g262399262459%_)))))
                (let () (declare (not safe)) (_%g262399262459%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx262705%_)
        (let* ((_%g262709262729%_
                (lambda (_%g262710262725%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262710262725%_))))
               (_%g262708262798%_
                (lambda (_%g262710262733%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262710262733%_))
                      (let ((_%e262712262736%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262710262733%_))))
                        (let ((_%hd262713262740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262712262736%_)))
                              (_%tl262714262743%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262712262736%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262714262743%_))
                              (let ((_g263554_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262714262743%_
                                        '0))))
                                (begin
                                  (let ((_g263555_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g263554_)
                                               (##values-length _g263554_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g263555_ 2)))
                                        (error "Context expects 2 values"
                                               _g263555_)))
                                  (let ((_%target262715262746%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263554_ 0)))
                                        (_%tl262717262749%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g263554_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262717262749%_))
                                        (letrec ((_%loop262718262752%_
                                                  (lambda (_%hd262716262756%_
                                                           _%decl262722262759%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262716262756%_))
                                                        (let ((_%e262719262761%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262716262756%_))))
                  (let ((_%lp-hd262720262765%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262719262761%_)))
                        (_%lp-tl262721262768%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262719262761%_))))
                    (_%loop262718262752%_
                     _%lp-tl262721262768%_
                     (cons _%lp-hd262720262765%_ _%decl262722262759%_))))
                (let ((_%decl262723262771%_ (reverse _%decl262722262759%_)))
                  ((lambda (_%g262711262774%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp263556
                                  (lambda (_%g262789262792%_ _%g262790262795%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g262789262792%_)
                                          _%g262790262795%_))))
                             (declare (not safe))
                             (foldr__0 __tmp263556 '() _%g262711262774%_))))
                   _%decl262723262771%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262718262752%_
                                           _%target262715262746%_
                                           '()))
                                        (_%g262709262729%_
                                         _%g262710262733%_)))))
                              (_%g262709262729%_ _%g262710262733%_))))
                      (_%g262709262729%_ _%g262710262733%_)))))
          (_%g262708262798%_ _%$stx262705%_))))))
