(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g197527_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197529_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197531_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197533_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197534_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197536_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197537_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197539_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197540_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197542_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197543_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx196487%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx196487%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx196490%_)
        (let* ((_%$%g196493196517%_
                (lambda (_%$%g196494196513%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196494196513%_))))
               (_%$%g196492196816%_
                (lambda (_%$%g196494196521%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196494196521%_))
                      (let ((_%$%e196497196524%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g196494196521%_))))
                        (let ((_%$%hd196498196528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196497196524%_)))
                              (_%$%tl196499196531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196497196524%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196499196531%_))
                              (let ((_%$%e196500196534%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl196499196531%_))))
                                (let ((_%$%hd196501196538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196500196534%_)))
                                      (_%$%tl196502196541%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196500196534%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl196502196541%_))
                                      (let ((_g197518_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl196502196541%_
                                                '0))))
                                        (begin
                                          (let ((_g197519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g197518_)
                                                       (##values-length
                                                        _g197518_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g197519_ 2)))
                                                (error "Context expects 2 values"
                                                       _g197519_)))
                                          (let ((_%$%target196503196544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g197518_ 0)))
                                                (_%$%tl196505196547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g197518_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl196505196547%_))
                                                (letrec ((_%$%loop196506196550%_
                                                          (lambda (_%$%hd196504196554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause196510196557%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd196504196554%_))
                        (let ((_%$%e196507196559%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd196504196554%_))))
                          (let ((_%$%lp-hd196508196563%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e196507196559%_)))
                                (_%$%lp-tl196509196566%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e196507196559%_))))
                            (_%$%loop196506196550%_
                             _%$%lp-tl196509196566%_
                             (cons _%$%lp-hd196508196563%_
                                   _%$%clause196510196557%_))))
                        (let ((_%$%clause196511196569%_
                               (reverse _%$%clause196510196557%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%$%hd196501196538%_))
                              (let* ((_%$%g196593196610%_
                                      (lambda (_%$%g196594196606%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g196594196606%_))))
                                     (_%$%g196592196669%_
                                      (lambda (_%$%g196594196614%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g196594196614%_))
                                            (let ((_g197520_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g196594196614%_
                                                      '0))))
                                              (begin
                                                (let ((_g197521_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g197520_)
                                                             (##values-length
                                                              _g197520_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g197521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g197521_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target196596196617%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g197520_
                                                          0)))
                                                      (_%$%tl196598196620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g197520_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl196598196620%_))
                                                      (letrec ((_%$%loop196599196623%_
                                                                (lambda (_%$%hd196597196627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%clause196603196630%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd196597196627%_))
                              (let ((_%$%e196600196632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd196597196627%_))))
                                (let ((_%$%lp-hd196601196636%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196600196632%_)))
                                      (_%$%lp-tl196602196639%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196600196632%_))))
                                  (_%$%loop196599196623%_
                                   _%$%lp-tl196602196639%_
                                   (cons _%$%lp-hd196601196636%_
                                         _%$%clause196603196630%_))))
                              (let ((_%$%clause196604196642%_
                                     (reverse _%$%clause196603196630%_)))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'lambda))
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '$stx))
                                                  '())
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'ast-case))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '$stx))
                      (cons _%$%hd196501196538%_
                            (let ((__tmp197522
                                   (lambda (_%$%g196660196663%_
                                            _%$%g196661196666%_)
                                     (cons _%$%g196660196663%_
                                           _%$%g196661196666%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp197522
                               '()
                               _%$%clause196604196642%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%$%loop196599196623%_ _%$%target196596196617%_ '()))
              (_%$%g196593196610%_ _%$%g196594196614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g196593196610%_
                                             _%$%g196594196614%_)))))
                                (_%$%g196592196669%_
                                 (let ((__tmp197525
                                        (lambda (_%clause196673%_)
                                          (let* ((_%__stx197437197438%_
                                                  _%clause196673%_)
                                                 (_%$%g196677196704%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx197437197438%_)))))
                                            (let ((_%__kont197440197441%_
                                                   (lambda (_%$%g196679196789%_
                                                            _%$%g196680196791%_)
                                                     (cons _%$%g196680196791%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%$%g196679196789%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197442197443%_
                                                   (lambda (_%$%g196687196741%_
                                                            _%$%g196688196743%_
                                                            _%$%g196689196744%_)
                                                     (cons _%$%g196689196744%_
                                                           (cons _%$%g196688196743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%$%g196687196741%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx197437197438%_))
                                                  (let ((_%$%e196681196769%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx197437197438%_))))
                                                    (let ((_%$%tl196683196776%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e196681196769%_)))
                                                          (_%$%hd196682196773%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e196681196769%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl196683196776%_))
                                                          (let ((_%$%e196684196779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl196683196776%_))))
                    (let ((_%$%tl196686196786%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e196684196779%_)))
                          (_%$%hd196685196783%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e196684196779%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl196686196786%_))
                          (_%__kont197440197441%_
                           _%$%hd196685196783%_
                           _%$%hd196682196773%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196686196786%_))
                              (let ((_%$%e196696196731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl196686196786%_))))
                                (let ((_%$%tl196698196738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196696196731%_)))
                                      (_%$%hd196697196735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196696196731%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl196698196738%_))
                                      (_%__kont197442197443%_
                                       _%$%hd196697196735%_
                                       _%$%hd196685196783%_
                                       _%$%hd196682196773%_)
                                      (_%$%g196677196704%_))))
                              (_%$%g196677196704%_)))))
                  (_%$%g196677196704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g196677196704%_))))))
                                       (__tmp197523
                                        (let ((__tmp197524
                                               (lambda (_%$%g196807196810%_
                                                        _%$%g196808196813%_)
                                                 (cons _%$%g196807196810%_
                                                       _%$%g196808196813%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp197524
                                           '()
                                           _%$%clause196511196569%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp197525 __tmp197523))))
                              (_%$%g196493196517%_ _%$%g196494196521%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop196506196550%_
                                                   _%$%target196503196544%_
                                                   '()))
                                                (_%$%g196493196517%_
                                                 _%$%g196494196521%_)))))
                                      (_%$%g196493196517%_
                                       _%$%g196494196521%_))))
                              (_%$%g196493196517%_ _%$%g196494196521%_))))
                      (_%$%g196493196517%_ _%$%g196494196521%_)))))
          (_%$%g196492196816%_ _%stx196490%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj197487
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
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj197487
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj197487
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj197487
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 ':init! '13 '#f '#f))
        (let ((__tmp197526 |gxc[1]#_g197527_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 __tmp197526 '4 '#f '#f))
        (let ((__tmp197528 |gxc[1]#_g197529_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 __tmp197528 '14 '#f '#f))
        (let ((__tmp197530 |gxc[1]#_g197531_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 __tmp197530 '15 '#f '#f))
        (let ((__tmp197532
               (cons (cons 'gensyms |gxc[1]#_g197533_|)
                     (cons (cons 'bindings |gxc[1]#_g197534_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 __tmp197532 '16 '#f '#f))
        (let ((__tmp197535
               (cons (cons 'gensyms |gxc[1]#_g197536_|)
                     (cons (cons 'bindings |gxc[1]#_g197537_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 __tmp197535 '17 '#f '#f))
        (let ((__tmp197538
               (cons (cons 'gensyms |gxc[1]#_g197539_|)
                     (cons (cons 'bindings |gxc[1]#_g197540_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 __tmp197538 '18 '#f '#f))
        (let ((__tmp197541
               (cons (cons 'gensyms |gxc[1]#_g197542_|)
                     (cons (cons 'bindings |gxc[1]#_g197543_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 __tmp197541 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197487 '() '21 '#f '#f))
        __obj197487))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx196822%_)
        (let* ((_%$%g196826196840%_
                (lambda (_%$%g196827196836%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196827196836%_))))
               (_%$%g196825196881%_
                (lambda (_%$%g196827196844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196827196844%_))
                      (let ((_%$%e196829196847%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g196827196844%_))))
                        (let ((_%$%hd196830196851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196829196847%_)))
                              (_%$%tl196831196854%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196829196847%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196831196854%_))
                              (let ((_%$%e196832196857%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl196831196854%_))))
                                (let ((_%$%hd196833196861%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196832196857%_)))
                                      (_%$%tl196834196864%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196832196857%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl196834196864%_))
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
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'lambda))
                      (cons '() (cons _%$%hd196833196861%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g196826196840%_
                                       _%$%g196827196844%_))))
                              (_%$%g196826196840%_ _%$%g196827196844%_))))
                      (_%$%g196826196840%_ _%$%g196827196844%_)))))
          (_%$%g196825196881%_ _%$stx196822%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx196885%_)
        (let* ((_%$%g196889196903%_
                (lambda (_%$%g196890196899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196890196899%_))))
               (_%$%g196888196944%_
                (lambda (_%$%g196890196907%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196890196907%_))
                      (let ((_%$%e196892196910%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g196890196907%_))))
                        (let ((_%$%hd196893196914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196892196910%_)))
                              (_%$%tl196894196917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196892196910%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196894196917%_))
                              (let ((_%$%e196895196920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl196894196917%_))))
                                (let ((_%$%hd196896196924%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196895196920%_)))
                                      (_%$%tl196897196927%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196895196920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl196897196927%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%$%hd196896196924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%$%g196889196903%_
                                       _%$%g196890196907%_))))
                              (_%$%g196889196903%_ _%$%g196890196907%_))))
                      (_%$%g196889196903%_ _%$%g196890196907%_)))))
          (_%$%g196888196944%_ _%$stx196885%_))))))
