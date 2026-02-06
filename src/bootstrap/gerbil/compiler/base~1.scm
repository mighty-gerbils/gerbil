(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g157961_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157963_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157965_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157967_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157968_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157970_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157971_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157973_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157974_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157976_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157977_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx156921%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx156921%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx156924%_)
        (let* ((_%g156927156951%_
                (lambda (_%g156928156947%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g156928156947%_))))
               (_%g156926157250%_
                (lambda (_%g156928156955%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g156928156955%_))
                      (let ((_%e156931156958%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g156928156955%_))))
                        (let ((_%hd156932156962%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156931156958%_)))
                              (_%tl156933156965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156931156958%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl156933156965%_))
                              (let ((_%e156934156968%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl156933156965%_))))
                                (let ((_%hd156935156972%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156934156968%_)))
                                      (_%tl156936156975%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156934156968%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl156936156975%_))
                                      (let ((_g157952_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl156936156975%_
                                                '0))))
                                        (begin
                                          (let ((_g157953_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g157952_)
                                                       (##values-length
                                                        _g157952_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g157953_ 2)))
                                                (error "Context expects 2 values"
                                                       _g157953_)))
                                          (let ((_%target156937156978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g157952_ 0)))
                                                (_%tl156939156981%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g157952_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl156939156981%_))
                                                (letrec ((_%loop156940156984%_
                                                          (lambda (_%hd156938156988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause156944156991%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd156938156988%_))
                        (let ((_%e156941156993%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd156938156988%_))))
                          (let ((_%lp-hd156942156997%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156941156993%_)))
                                (_%lp-tl156943157000%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156941156993%_))))
                            (_%loop156940156984%_
                             _%lp-tl156943157000%_
                             (cons _%lp-hd156942156997%_
                                   _%clause156944156991%_))))
                        (let ((_%clause156945157003%_
                               (reverse _%clause156944156991%_)))
                          ((lambda (_%g156929157006%_ _%g156930157008%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g156930157008%_))
                                 (let* ((_%g157027157044%_
                                         (lambda (_%g157028157040%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g157028157040%_))))
                                        (_%g157026157103%_
                                         (lambda (_%g157028157048%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g157028157048%_))
                                               (let ((_g157954_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g157028157048%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g157955_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g157954_)
                        (##values-length _g157954_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g157955_ 2)))
                 (error "Context expects 2 values" _g157955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target157030157051%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g157954_
                                                             0)))
                                                         (_%tl157032157054%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g157954_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl157032157054%_))
                                                         (letrec ((_%loop157033157057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd157031157061%_ _%clause157037157064%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd157031157061%_))
                                 (let ((_%e157034157066%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd157031157061%_))))
                                   (let ((_%lp-hd157035157070%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e157034157066%_)))
                                         (_%lp-tl157036157073%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e157034157066%_))))
                                     (_%loop157033157057%_
                                      _%lp-tl157036157073%_
                                      (cons _%lp-hd157035157070%_
                                            _%clause157037157064%_))))
                                 (let ((_%clause157038157076%_
                                        (reverse _%clause157037157064%_)))
                                   ((lambda (_%g157029157079%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%g156930157008%_
                                  (let ((__tmp157956
                                         (lambda (_%g157094157097%_
                                                  _%g157095157100%_)
                                           (cons _%g157094157097%_
                                                 _%g157095157100%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp157956
                                     '()
                                     _%g157029157079%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause157038157076%_))))))
                   (_%loop157033157057%_ _%target157030157051%_ '()))
                 (_%g157027157044%_ _%g157028157048%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g157027157044%_
                                                _%g157028157048%_)))))
                                   (_%g157026157103%_
                                    (let ((__tmp157959
                                           (lambda (_%clause157107%_)
                                             (let* ((_%__stx157871157872%_
                                                     _%clause157107%_)
                                                    (_%g157111157138%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx157871157872%_)))))
                                               (let ((_%__kont157874157875%_
                                                      (lambda (_%g157113157223%_
                                                               _%g157114157225%_)
                                                        (cons _%g157114157225%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g157113157223%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157876157877%_
                                                      (lambda (_%g157121157175%_
                                                               _%g157122157177%_
                                                               _%g157123157178%_)
                                                        (cons _%g157123157178%_
                                                              (cons _%g157122157177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g157121157175%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx157871157872%_))
                                                     (let ((_%e157115157203%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx157871157872%_))))
                                                       (let ((_%tl157117157210%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e157115157203%_)))
                     (_%hd157116157207%_
                      (let () (declare (not safe)) (##car _%e157115157203%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl157117157210%_))
                     (let ((_%e157118157213%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl157117157210%_))))
                       (let ((_%tl157120157220%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e157118157213%_)))
                             (_%hd157119157217%_
                              (let ()
                                (declare (not safe))
                                (##car _%e157118157213%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl157120157220%_))
                             (_%__kont157874157875%_
                              _%hd157119157217%_
                              _%hd157116157207%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl157120157220%_))
                                 (let ((_%e157130157165%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl157120157220%_))))
                                   (let ((_%tl157132157172%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e157130157165%_)))
                                         (_%hd157131157169%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e157130157165%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl157132157172%_))
                                         (_%__kont157876157877%_
                                          _%hd157131157169%_
                                          _%hd157119157217%_
                                          _%hd157116157207%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g157111157138%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g157111157138%_))))))
                     (let () (declare (not safe)) (_%g157111157138%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g157111157138%_)))))))
                                          (__tmp157957
                                           (let ((__tmp157958
                                                  (lambda (_%g157241157244%_
                                                           _%g157242157247%_)
                                                    (cons _%g157241157244%_
                                                          _%g157242157247%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp157958
                                              '()
                                              _%g156929157006%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp157959 __tmp157957))))
                                 (_%g156927156951%_ _%g156928156955%_)))
                           _%clause156945157003%_
                           _%hd156935156972%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop156940156984%_
                                                   _%target156937156978%_
                                                   '()))
                                                (_%g156927156951%_
                                                 _%g156928156955%_)))))
                                      (_%g156927156951%_ _%g156928156955%_))))
                              (_%g156927156951%_ _%g156928156955%_))))
                      (_%g156927156951%_ _%g156928156955%_)))))
          (_%g156926157250%_ _%stx156924%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj157921
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157921
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157921
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157921
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 ':init! '12 '#f '#f))
        (let ((__tmp157960 |gxc[1]#_g157961_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 __tmp157960 '3 '#f '#f))
        (let ((__tmp157962 |gxc[1]#_g157963_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 __tmp157962 '13 '#f '#f))
        (let ((__tmp157964 |gxc[1]#_g157965_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 __tmp157964 '14 '#f '#f))
        (let ((__tmp157966
               (cons (cons 'gensyms |gxc[1]#_g157967_|)
                     (cons (cons 'bindings |gxc[1]#_g157968_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 __tmp157966 '15 '#f '#f))
        (let ((__tmp157969
               (cons (cons 'gensyms |gxc[1]#_g157970_|)
                     (cons (cons 'bindings |gxc[1]#_g157971_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 __tmp157969 '16 '#f '#f))
        (let ((__tmp157972
               (cons (cons 'gensyms |gxc[1]#_g157973_|)
                     (cons (cons 'bindings |gxc[1]#_g157974_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 __tmp157972 '17 '#f '#f))
        (let ((__tmp157975
               (cons (cons 'gensyms |gxc[1]#_g157976_|)
                     (cons (cons 'bindings |gxc[1]#_g157977_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 __tmp157975 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157921 '() '20 '#f '#f))
        __obj157921))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx157256%_)
        (let* ((_%g157260157274%_
                (lambda (_%g157261157270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157261157270%_))))
               (_%g157259157315%_
                (lambda (_%g157261157278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157261157278%_))
                      (let ((_%e157263157281%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g157261157278%_))))
                        (let ((_%hd157264157285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157263157281%_)))
                              (_%tl157265157288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157263157281%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157265157288%_))
                              (let ((_%e157266157291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl157265157288%_))))
                                (let ((_%hd157267157295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157266157291%_)))
                                      (_%tl157268157298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157266157291%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157268157298%_))
                                      ((lambda (_%g157262157301%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '__verbose-mutex))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%g157262157301%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd157267157295%_)
                                      (_%g157260157274%_ _%g157261157278%_))))
                              (_%g157260157274%_ _%g157261157278%_))))
                      (_%g157260157274%_ _%g157261157278%_)))))
          (_%g157259157315%_ _%$stx157256%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx157319%_)
        (let* ((_%g157323157337%_
                (lambda (_%g157324157333%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157324157333%_))))
               (_%g157322157378%_
                (lambda (_%g157324157341%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157324157341%_))
                      (let ((_%e157326157344%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g157324157341%_))))
                        (let ((_%hd157327157348%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157326157344%_)))
                              (_%tl157328157351%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157326157344%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157328157351%_))
                              (let ((_%e157329157354%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl157328157351%_))))
                                (let ((_%hd157330157358%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157329157354%_)))
                                      (_%tl157331157361%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157329157354%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157331157361%_))
                                      ((lambda (_%g157325157364%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g157325157364%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd157330157358%_)
                                      (_%g157323157337%_ _%g157324157341%_))))
                              (_%g157323157337%_ _%g157324157341%_))))
                      (_%g157323157337%_ _%g157324157341%_)))))
          (_%g157322157378%_ _%$stx157319%_))))))
