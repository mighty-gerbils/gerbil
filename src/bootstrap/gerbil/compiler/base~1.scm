(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g197259_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197261_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197263_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197265_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197266_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197268_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197269_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197271_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197272_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197274_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g197275_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx196219%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx196219%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx196222%_)
        (let* ((_%$%g196225196249%_
                (lambda (_%$%g196226196245%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196226196245%_))))
               (_%$%g196224196548%_
                (lambda (_%$%g196226196253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196226196253%_))
                      (let ((_%$%e196229196256%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g196226196253%_))))
                        (let ((_%$%hd196230196260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196229196256%_)))
                              (_%$%tl196231196263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196229196256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196231196263%_))
                              (let ((_%$%e196232196266%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl196231196263%_))))
                                (let ((_%$%hd196233196270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196232196266%_)))
                                      (_%$%tl196234196273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196232196266%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl196234196273%_))
                                      (let ((_g197250_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl196234196273%_
                                                '0))))
                                        (begin
                                          (let ((_g197251_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g197250_)
                                                       (##values-length
                                                        _g197250_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g197251_ 2)))
                                                (error "Context expects 2 values"
                                                       _g197251_)))
                                          (let ((_%$%target196235196276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g197250_ 0)))
                                                (_%$%tl196237196279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g197250_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl196237196279%_))
                                                (letrec ((_%$%loop196238196282%_
                                                          (lambda (_%$%hd196236196286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause196242196289%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd196236196286%_))
                        (let ((_%$%e196239196291%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd196236196286%_))))
                          (let ((_%$%lp-hd196240196295%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e196239196291%_)))
                                (_%$%lp-tl196241196298%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e196239196291%_))))
                            (_%$%loop196238196282%_
                             _%$%lp-tl196241196298%_
                             (cons _%$%lp-hd196240196295%_
                                   _%$%clause196242196289%_))))
                        (let ((_%$%clause196243196301%_
                               (reverse _%$%clause196242196289%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%$%hd196233196270%_))
                              (let* ((_%$%g196325196342%_
                                      (lambda (_%$%g196326196338%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g196326196338%_))))
                                     (_%$%g196324196401%_
                                      (lambda (_%$%g196326196346%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g196326196346%_))
                                            (let ((_g197252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g196326196346%_
                                                      '0))))
                                              (begin
                                                (let ((_g197253_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g197252_)
                                                             (##values-length
                                                              _g197252_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g197253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g197253_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target196328196349%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g197252_
                                                          0)))
                                                      (_%$%tl196330196352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g197252_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl196330196352%_))
                                                      (letrec ((_%$%loop196331196355%_
                                                                (lambda (_%$%hd196329196359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%clause196335196362%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd196329196359%_))
                              (let ((_%$%e196332196364%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd196329196359%_))))
                                (let ((_%$%lp-hd196333196368%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196332196364%_)))
                                      (_%$%lp-tl196334196371%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196332196364%_))))
                                  (_%$%loop196331196355%_
                                   _%$%lp-tl196334196371%_
                                   (cons _%$%lp-hd196333196368%_
                                         _%$%clause196335196362%_))))
                              (let ((_%$%clause196336196374%_
                                     (reverse _%$%clause196335196362%_)))
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
                      (cons _%$%hd196233196270%_
                            (let ((__tmp197254
                                   (lambda (_%$%g196392196395%_
                                            _%$%g196393196398%_)
                                     (cons _%$%g196392196395%_
                                           _%$%g196393196398%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp197254
                               '()
                               _%$%clause196336196374%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%$%loop196331196355%_ _%$%target196328196349%_ '()))
              (_%$%g196325196342%_ _%$%g196326196346%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g196325196342%_
                                             _%$%g196326196346%_)))))
                                (_%$%g196324196401%_
                                 (let ((__tmp197257
                                        (lambda (_%clause196405%_)
                                          (let* ((_%__stx197169197170%_
                                                  _%clause196405%_)
                                                 (_%$%g196409196436%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx197169197170%_)))))
                                            (let ((_%__kont197172197173%_
                                                   (lambda (_%$%g196411196521%_
                                                            _%$%g196412196523%_)
                                                     (cons _%$%g196412196523%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%$%g196411196521%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197174197175%_
                                                   (lambda (_%$%g196419196473%_
                                                            _%$%g196420196475%_
                                                            _%$%g196421196476%_)
                                                     (cons _%$%g196421196476%_
                                                           (cons _%$%g196420196475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%$%g196419196473%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx197169197170%_))
                                                  (let ((_%$%e196413196501%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx197169197170%_))))
                                                    (let ((_%$%tl196415196508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e196413196501%_)))
                                                          (_%$%hd196414196505%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e196413196501%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl196415196508%_))
                                                          (let ((_%$%e196416196511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl196415196508%_))))
                    (let ((_%$%tl196418196518%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e196416196511%_)))
                          (_%$%hd196417196515%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e196416196511%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl196418196518%_))
                          (_%__kont197172197173%_
                           _%$%hd196417196515%_
                           _%$%hd196414196505%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196418196518%_))
                              (let ((_%$%e196428196463%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl196418196518%_))))
                                (let ((_%$%tl196430196470%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196428196463%_)))
                                      (_%$%hd196429196467%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196428196463%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl196430196470%_))
                                      (_%__kont197174197175%_
                                       _%$%hd196429196467%_
                                       _%$%hd196417196515%_
                                       _%$%hd196414196505%_)
                                      (_%$%g196409196436%_))))
                              (_%$%g196409196436%_)))))
                  (_%$%g196409196436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g196409196436%_))))))
                                       (__tmp197255
                                        (let ((__tmp197256
                                               (lambda (_%$%g196539196542%_
                                                        _%$%g196540196545%_)
                                                 (cons _%$%g196539196542%_
                                                       _%$%g196540196545%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp197256
                                           '()
                                           _%$%clause196243196301%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp197257 __tmp197255))))
                              (_%$%g196225196249%_ _%$%g196226196253%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop196238196282%_
                                                   _%$%target196235196276%_
                                                   '()))
                                                (_%$%g196225196249%_
                                                 _%$%g196226196253%_)))))
                                      (_%$%g196225196249%_
                                       _%$%g196226196253%_))))
                              (_%$%g196225196249%_ _%$%g196226196253%_))))
                      (_%$%g196225196249%_ _%$%g196226196253%_)))))
          (_%$%g196224196548%_ _%stx196222%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj197219
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
           __obj197219
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj197219
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj197219
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 ':init! '13 '#f '#f))
        (let ((__tmp197258 |gxc[1]#_g197259_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 __tmp197258 '4 '#f '#f))
        (let ((__tmp197260 |gxc[1]#_g197261_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 __tmp197260 '14 '#f '#f))
        (let ((__tmp197262 |gxc[1]#_g197263_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 __tmp197262 '15 '#f '#f))
        (let ((__tmp197264
               (cons (cons 'gensyms |gxc[1]#_g197265_|)
                     (cons (cons 'bindings |gxc[1]#_g197266_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 __tmp197264 '16 '#f '#f))
        (let ((__tmp197267
               (cons (cons 'gensyms |gxc[1]#_g197268_|)
                     (cons (cons 'bindings |gxc[1]#_g197269_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 __tmp197267 '17 '#f '#f))
        (let ((__tmp197270
               (cons (cons 'gensyms |gxc[1]#_g197271_|)
                     (cons (cons 'bindings |gxc[1]#_g197272_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 __tmp197270 '18 '#f '#f))
        (let ((__tmp197273
               (cons (cons 'gensyms |gxc[1]#_g197274_|)
                     (cons (cons 'bindings |gxc[1]#_g197275_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 __tmp197273 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj197219 '() '21 '#f '#f))
        __obj197219))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx196554%_)
        (let* ((_%$%g196558196572%_
                (lambda (_%$%g196559196568%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196559196568%_))))
               (_%$%g196557196613%_
                (lambda (_%$%g196559196576%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196559196576%_))
                      (let ((_%$%e196561196579%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g196559196576%_))))
                        (let ((_%$%hd196562196583%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196561196579%_)))
                              (_%$%tl196563196586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196561196579%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196563196586%_))
                              (let ((_%$%e196564196589%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl196563196586%_))))
                                (let ((_%$%hd196565196593%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196564196589%_)))
                                      (_%$%tl196566196596%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196564196589%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl196566196596%_))
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
                      (cons '() (cons _%$%hd196565196593%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g196558196572%_
                                       _%$%g196559196576%_))))
                              (_%$%g196558196572%_ _%$%g196559196576%_))))
                      (_%$%g196558196572%_ _%$%g196559196576%_)))))
          (_%$%g196557196613%_ _%$stx196554%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx196617%_)
        (let* ((_%$%g196621196635%_
                (lambda (_%$%g196622196631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g196622196631%_))))
               (_%$%g196620196676%_
                (lambda (_%$%g196622196639%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g196622196639%_))
                      (let ((_%$%e196624196642%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g196622196639%_))))
                        (let ((_%$%hd196625196646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e196624196642%_)))
                              (_%$%tl196626196649%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e196624196642%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl196626196649%_))
                              (let ((_%$%e196627196652%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl196626196649%_))))
                                (let ((_%$%hd196628196656%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e196627196652%_)))
                                      (_%$%tl196629196659%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e196627196652%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl196629196659%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%$%hd196628196656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%$%g196621196635%_
                                       _%$%g196622196639%_))))
                              (_%$%g196621196635%_ _%$%g196622196639%_))))
                      (_%$%g196621196635%_ _%$%g196622196639%_)))))
          (_%$%g196620196676%_ _%$stx196617%_))))))
