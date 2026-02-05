(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g157965_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157967_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157969_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157971_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157972_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157974_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157975_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157977_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157978_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157980_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g157981_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx156918%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx156918%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx156921%_)
        (let* ((_%g156924156948%_
                (lambda (_%g156925156944%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g156925156944%_))))
               (_%g156923157247%_
                (lambda (_%g156925156952%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g156925156952%_))
                      (let ((_%e156928156955%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g156925156952%_))))
                        (let ((_%hd156929156959%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156928156955%_)))
                              (_%tl156930156962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156928156955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl156930156962%_))
                              (let ((_%e156931156965%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl156930156962%_))))
                                (let ((_%hd156932156969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156931156965%_)))
                                      (_%tl156933156972%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156931156965%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl156933156972%_))
                                      (let ((_g157956_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl156933156972%_
                                                '0))))
                                        (begin
                                          (let ((_g157957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g157956_)
                                                       (##values-length
                                                        _g157956_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g157957_ 2)))
                                                (error "Context expects 2 values"
                                                       _g157957_)))
                                          (let ((_%target156934156975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g157956_ 0)))
                                                (_%tl156936156978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g157956_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl156936156978%_))
                                                (letrec ((_%loop156937156981%_
                                                          (lambda (_%hd156935156985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause156941156988%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd156935156985%_))
                        (let ((_%e156938156990%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd156935156985%_))))
                          (let ((_%lp-hd156939156994%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156938156990%_)))
                                (_%lp-tl156940156997%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156938156990%_))))
                            (_%loop156937156981%_
                             _%lp-tl156940156997%_
                             (cons _%lp-hd156939156994%_
                                   _%clause156941156988%_))))
                        (let ((_%clause156942157000%_
                               (reverse _%clause156941156988%_)))
                          ((lambda (_%g156926157003%_ _%g156927157005%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g156927157005%_))
                                 (let* ((_%g157024157041%_
                                         (lambda (_%g157025157037%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g157025157037%_))))
                                        (_%g157023157100%_
                                         (lambda (_%g157025157045%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g157025157045%_))
                                               (let ((_g157958_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g157025157045%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g157959_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g157958_)
                        (##values-length _g157958_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g157959_ 2)))
                 (error "Context expects 2 values" _g157959_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target157027157048%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g157958_
                                                             0)))
                                                         (_%tl157029157051%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g157958_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl157029157051%_))
                                                         (letrec ((_%loop157030157054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd157028157058%_ _%clause157034157061%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd157028157058%_))
                                 (let ((_%e157031157063%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd157028157058%_))))
                                   (let ((_%lp-hd157032157067%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e157031157063%_)))
                                         (_%lp-tl157033157070%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e157031157063%_))))
                                     (_%loop157030157054%_
                                      _%lp-tl157033157070%_
                                      (cons _%lp-hd157032157067%_
                                            _%clause157034157061%_))))
                                 (let ((_%clause157035157073%_
                                        (reverse _%clause157034157061%_)))
                                   ((lambda (_%g157026157076%_)
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
                            (cons _%g156927157005%_
                                  (let ((__tmp157960
                                         (lambda (_%g157091157094%_
                                                  _%g157092157097%_)
                                           (cons _%g157091157094%_
                                                 _%g157092157097%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp157960
                                     '()
                                     _%g157026157076%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause157035157073%_))))))
                   (_%loop157030157054%_ _%target157027157048%_ '()))
                 (_%g157024157041%_ _%g157025157045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g157024157041%_
                                                _%g157025157045%_)))))
                                   (_%g157023157100%_
                                    (let ((__tmp157963
                                           (lambda (_%clause157104%_)
                                             (let* ((_%__stx157874157875%_
                                                     _%clause157104%_)
                                                    (_%g157108157135%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx157874157875%_)))))
                                               (let ((_%__kont157877157878%_
                                                      (lambda (_%g157110157220%_
                                                               _%g157111157222%_)
                                                        (cons _%g157111157222%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g157110157220%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157879157880%_
                                                      (lambda (_%g157118157172%_
                                                               _%g157119157174%_
                                                               _%g157120157175%_)
                                                        (cons _%g157120157175%_
                                                              (cons _%g157119157174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g157118157172%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx157874157875%_))
                                                     (let ((_%e157112157200%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx157874157875%_))))
                                                       (let ((_%tl157114157207%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e157112157200%_)))
                     (_%hd157113157204%_
                      (let () (declare (not safe)) (##car _%e157112157200%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl157114157207%_))
                     (let ((_%e157115157210%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl157114157207%_))))
                       (let ((_%tl157117157217%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e157115157210%_)))
                             (_%hd157116157214%_
                              (let ()
                                (declare (not safe))
                                (##car _%e157115157210%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl157117157217%_))
                             (_%__kont157877157878%_
                              _%hd157116157214%_
                              _%hd157113157204%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl157117157217%_))
                                 (let ((_%e157127157162%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl157117157217%_))))
                                   (let ((_%tl157129157169%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e157127157162%_)))
                                         (_%hd157128157166%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e157127157162%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl157129157169%_))
                                         (_%__kont157879157880%_
                                          _%hd157128157166%_
                                          _%hd157116157214%_
                                          _%hd157113157204%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g157108157135%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g157108157135%_))))))
                     (let () (declare (not safe)) (_%g157108157135%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g157108157135%_)))))))
                                          (__tmp157961
                                           (let ((__tmp157962
                                                  (lambda (_%g157238157241%_
                                                           _%g157239157244%_)
                                                    (cons _%g157238157241%_
                                                          _%g157239157244%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp157962
                                              '()
                                              _%g156926157003%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp157963 __tmp157961))))
                                 (_%g156924156948%_ _%g156925156952%_)))
                           _%clause156942157000%_
                           _%hd156932156969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop156937156981%_
                                                   _%target156934156975%_
                                                   '()))
                                                (_%g156924156948%_
                                                 _%g156925156952%_)))))
                                      (_%g156924156948%_ _%g156925156952%_))))
                              (_%g156924156948%_ _%g156925156952%_))))
                      (_%g156924156948%_ _%g156925156952%_)))))
          (_%g156923157247%_ _%stx156921%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj157924
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
           __obj157924
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157924
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj157924
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 ':init! '12 '#f '#f))
        (let ((__tmp157964 |gxc[1]#_g157965_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 __tmp157964 '3 '#f '#f))
        (let ((__tmp157966 |gxc[1]#_g157967_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 __tmp157966 '13 '#f '#f))
        (let ((__tmp157968 |gxc[1]#_g157969_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 __tmp157968 '14 '#f '#f))
        (let ((__tmp157970
               (cons (cons 'gensyms |gxc[1]#_g157971_|)
                     (cons (cons 'bindings |gxc[1]#_g157972_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 __tmp157970 '15 '#f '#f))
        (let ((__tmp157973
               (cons (cons 'gensyms |gxc[1]#_g157974_|)
                     (cons (cons 'bindings |gxc[1]#_g157975_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 __tmp157973 '16 '#f '#f))
        (let ((__tmp157976
               (cons (cons 'gensyms |gxc[1]#_g157977_|)
                     (cons (cons 'bindings |gxc[1]#_g157978_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 __tmp157976 '17 '#f '#f))
        (let ((__tmp157979
               (cons (cons 'gensyms |gxc[1]#_g157980_|)
                     (cons (cons 'bindings |gxc[1]#_g157981_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 __tmp157979 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj157924 '() '20 '#f '#f))
        __obj157924))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx157253%_)
        (let* ((_%g157257157271%_
                (lambda (_%g157258157267%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157258157267%_))))
               (_%g157256157312%_
                (lambda (_%g157258157275%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157258157275%_))
                      (let ((_%e157260157278%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g157258157275%_))))
                        (let ((_%hd157261157282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157260157278%_)))
                              (_%tl157262157285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157260157278%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157262157285%_))
                              (let ((_%e157263157288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl157262157285%_))))
                                (let ((_%hd157264157292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157263157288%_)))
                                      (_%tl157265157295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157263157288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157265157295%_))
                                      ((lambda (_%g157259157298%_)
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
                         (cons '() (cons _%g157259157298%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd157264157292%_)
                                      (_%g157257157271%_ _%g157258157275%_))))
                              (_%g157257157271%_ _%g157258157275%_))))
                      (_%g157257157271%_ _%g157258157275%_)))))
          (_%g157256157312%_ _%$stx157253%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx157316%_)
        (let* ((_%g157320157334%_
                (lambda (_%g157321157330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157321157330%_))))
               (_%g157319157375%_
                (lambda (_%g157321157338%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157321157338%_))
                      (let ((_%e157323157341%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g157321157338%_))))
                        (let ((_%hd157324157345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157323157341%_)))
                              (_%tl157325157348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157323157341%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157325157348%_))
                              (let ((_%e157326157351%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl157325157348%_))))
                                (let ((_%hd157327157355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157326157351%_)))
                                      (_%tl157328157358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157326157351%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157328157358%_))
                                      ((lambda (_%g157322157361%_)
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
                         (cons _%g157322157361%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd157327157355%_)
                                      (_%g157320157334%_ _%g157321157338%_))))
                              (_%g157320157334%_ _%g157321157338%_))))
                      (_%g157320157334%_ _%g157321157338%_)))))
          (_%g157319157375%_ _%$stx157316%_))))))
