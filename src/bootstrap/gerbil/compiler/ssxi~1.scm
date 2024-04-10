(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g204166_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204173_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204175_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204177_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204179_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204181_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204193_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204195_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204197_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204199_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204201_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx197584%_)
        (let* ((_%g197588197606%_
                (lambda (_%g197589197602%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197589197602%_))))
               (_%g197587197661%_
                (lambda (_%g197589197610%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197589197610%_))
                      (let ((_%e197592197613%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197589197610%_))))
                        (let ((_%hd197593197617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197592197613%_)))
                              (_%tl197594197620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197592197613%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197594197620%_))
                              (let ((_%e197595197623%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197594197620%_))))
                                (let ((_%hd197596197627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197595197623%_)))
                                      (_%tl197597197630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197595197623%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197597197630%_))
                                      (let ((_%e197598197633%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197597197630%_))))
                                        (let ((_%hd197599197637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197598197633%_)))
                                              (_%tl197600197640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197598197633%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197600197640%_))
                                              ((lambda (_%L197643%_
                                                        _%L197645%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L197645%_))
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
                               (cons _%L197645%_ '()))
                         (cons _%L197643%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g197588197606%_
                                                      _%g197589197610%_)))
                                               _%hd197599197637%_
                                               _%hd197596197627%_)
                                              (_%g197588197606%_
                                               _%g197589197610%_))))
                                      (_%g197588197606%_ _%g197589197610%_))))
                              (_%g197588197606%_ _%g197589197610%_))))
                      (_%g197588197606%_ _%g197589197610%_)))))
          (_%g197587197661%_ _%$stx197584%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx197665%_)
        (let* ((_%g197669197687%_
                (lambda (_%g197670197683%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197670197683%_))))
               (_%g197668197742%_
                (lambda (_%g197670197691%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197670197691%_))
                      (let ((_%e197673197694%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197670197691%_))))
                        (let ((_%hd197674197698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197673197694%_)))
                              (_%tl197675197701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197673197694%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197675197701%_))
                              (let ((_%e197676197704%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197675197701%_))))
                                (let ((_%hd197677197708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197676197704%_)))
                                      (_%tl197678197711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197676197704%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197678197711%_))
                                      (let ((_%e197679197714%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197678197711%_))))
                                        (let ((_%hd197680197718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197679197714%_)))
                                              (_%tl197681197721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197679197714%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197681197721%_))
                                              ((lambda (_%L197724%_
                                                        _%L197726%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L197726%_))
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
                               (cons _%L197726%_ '()))
                         (cons _%L197724%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g197669197687%_
                                                      _%g197670197691%_)))
                                               _%hd197680197718%_
                                               _%hd197677197708%_)
                                              (_%g197669197687%_
                                               _%g197670197691%_))))
                                      (_%g197669197687%_ _%g197670197691%_))))
                              (_%g197669197687%_ _%g197670197691%_))))
                      (_%g197669197687%_ _%g197670197691%_)))))
          (_%g197668197742%_ _%$stx197665%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx197746%_)
        (let* ((_%g197750197779%_
                (lambda (_%g197751197775%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197751197775%_))))
               (_%g197749197879%_
                (lambda (_%g197751197783%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197751197783%_))
                      (let ((_%e197754197786%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197751197783%_))))
                        (let ((_%hd197755197790%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197754197786%_)))
                              (_%tl197756197793%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197754197786%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197756197793%_))
                              (let ((_g204144_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197756197793%_
                                        '0))))
                                (begin
                                  (let ((_g204145_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204144_)
                                               (##vector-length _g204144_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204145_ 2)))
                                        (error "Context expects 2 values"
                                               _g204145_)))
                                  (let ((_%target197757197796%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204144_ 0)))
                                        (_%tl197759197799%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204144_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197759197799%_))
                                        (letrec ((_%loop197760197802%_
                                                  (lambda (_%hd197758197806%_
                                                           _%type197764197809%_
                                                           _%symbol197765197811%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197758197806%_))
                                                        (let ((_%e197761197814%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197758197806%_))))
                  (let ((_%lp-hd197762197818%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197761197814%_)))
                        (_%lp-tl197763197821%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197761197814%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197762197818%_))
                        (let ((_%e197768197824%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197762197818%_))))
                          (let ((_%hd197769197828%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197768197824%_)))
                                (_%tl197770197831%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197768197824%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197770197831%_))
                                (let ((_%e197771197834%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197770197831%_))))
                                  (let ((_%hd197772197838%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197771197834%_)))
                                        (_%tl197773197841%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197771197834%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197773197841%_))
                                        (_%loop197760197802%_
                                         _%lp-tl197763197821%_
                                         (cons _%hd197772197838%_
                                               _%type197764197809%_)
                                         (cons _%hd197769197828%_
                                               _%symbol197765197811%_))
                                        (_%g197750197779%_
                                         _%g197751197783%_))))
                                (_%g197750197779%_ _%g197751197783%_))))
                        (_%g197750197779%_ _%g197751197783%_))))
                (let ((_%type197766197844%_ (reverse _%type197764197809%_))
                      (_%symbol197767197847%_
                       (reverse _%symbol197765197811%_)))
                  ((lambda (_%L197850%_ _%L197852%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197850%_
                                _%L197852%_))
                             (let ((__tmp204146
                                    (lambda (_%g197867197871%_
                                             _%g197868197874%_
                                             _%g197869197876%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g197868197874%_
                                                        (cons _%g197867197871%_
                                                              '())))
                                            _%g197869197876%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp204146
                                '()
                                _%L197850%_
                                _%L197852%_)))))
                   _%type197766197844%_
                   _%symbol197767197847%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197760197802%_
                                           _%target197757197796%_
                                           '()
                                           '()))
                                        (_%g197750197779%_
                                         _%g197751197783%_)))))
                              (_%g197750197779%_ _%g197751197783%_))))
                      (_%g197750197779%_ _%g197751197783%_)))))
          (_%g197749197879%_ _%$stx197746%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx197884%_)
        (let* ((_%__stx203455203456%_ _%$stx197884%_)
               (_%g197889197931%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203455203456%_)))))
          (let ((_%__kont203458203459%_
                 (lambda (_%L198059%_ _%L198061%_ _%L198062%_ _%L198063%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198063%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198062%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L198061%_ '()))
                                           (cons _%L198059%_ '())))))))
                (_%__kont203460203461%_
                 (lambda (_%L197978%_ _%L197980%_ _%L197981%_ _%L197982%_)
                   (cons _%L197982%_
                         (cons _%L197981%_
                               (cons _%L197980%_
                                     (cons _%L197978%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match203494203495%_
                   (lambda (_%e197895198009%_
                            _%hd197896198013%_
                            _%tl197897198016%_
                            _%e197898198019%_
                            _%hd197899198023%_
                            _%tl197900198026%_
                            _%e197901198029%_
                            _%hd197902198033%_
                            _%tl197903198036%_
                            _%e197904198039%_
                            _%hd197905198043%_
                            _%tl197906198046%_
                            _%e197907198049%_
                            _%hd197908198053%_
                            _%tl197909198056%_)
                     (let ((_%L198059%_ _%hd197908198053%_)
                           (_%L198061%_ _%hd197905198043%_)
                           (_%L198062%_ _%hd197902198033%_)
                           (_%L198063%_ _%hd197899198023%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L198063%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L198062%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L198061%_)))
                           (_%__kont203458203459%_
                            _%L198059%_
                            _%L198061%_
                            _%L198062%_
                            _%L198063%_)
                           (let ()
                             (declare (not safe))
                             (_%g197889197931%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203455203456%_))
                  (let ((_%e197895198009%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx203455203456%_))))
                    (let ((_%tl197897198016%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197895198009%_)))
                          (_%hd197896198013%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197895198009%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197897198016%_))
                          (let ((_%e197898198019%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197897198016%_))))
                            (let ((_%tl197900198026%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197898198019%_)))
                                  (_%hd197899198023%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197898198019%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197900198026%_))
                                  (let ((_%e197901198029%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197900198026%_))))
                                    (let ((_%tl197903198036%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197901198029%_)))
                                          (_%hd197902198033%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197901198029%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197903198036%_))
                                          (let ((_%e197904198039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl197903198036%_))))
                                            (let ((_%tl197906198046%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197904198039%_)))
                                                  (_%hd197905198043%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197904198039%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197906198046%_))
                                                  (let ((_%e197907198049%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl197906198046%_))))
                                                    (let ((_%tl197909198056%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197907198049%_)))
                                                          (_%hd197908198053%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197907198049%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197909198056%_))
                                                          (_%__match203494203495%_
                                                           _%e197895198009%_
                                                           _%hd197896198013%_
                                                           _%tl197897198016%_
                                                           _%e197898198019%_
                                                           _%hd197899198023%_
                                                           _%tl197900198026%_
                                                           _%e197901198029%_
                                                           _%hd197902198033%_
                                                           _%tl197903198036%_
                                                           _%e197904198039%_
                                                           _%hd197905198043%_
                                                           _%tl197906198046%_
                                                           _%e197907198049%_
                                                           _%hd197908198053%_
                                                           _%tl197909198056%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197889197931%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197906198046%_))
                                                      (_%__kont203460203461%_
                                                       _%hd197905198043%_
                                                       _%hd197902198033%_
                                                       _%hd197899198023%_
                                                       _%hd197896198013%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197889197931%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197889197931%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197889197931%_)))))
                          (let () (declare (not safe)) (_%g197889197931%_)))))
                  (let () (declare (not safe)) (_%g197889197931%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx198088%_)
        (let* ((_%g198092198127%_
                (lambda (_%g198093198123%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198093198123%_))))
               (_%g198091198246%_
                (lambda (_%g198093198131%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198093198131%_))
                      (let ((_%e198097198134%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198093198131%_))))
                        (let ((_%hd198098198138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198097198134%_)))
                              (_%tl198099198141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198097198134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198099198141%_))
                              (let ((_g204147_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198099198141%_
                                        '0))))
                                (begin
                                  (let ((_g204148_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204147_)
                                               (##vector-length _g204147_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204148_ 2)))
                                        (error "Context expects 2 values"
                                               _g204148_)))
                                  (let ((_%target198100198144%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204147_ 0)))
                                        (_%tl198102198147%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204147_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198102198147%_))
                                        (letrec ((_%loop198103198150%_
                                                  (lambda (_%hd198101198154%_
                                                           _%symbol198107198157%_
                                                           _%method198108198159%_
                                                           _%type-t198109198161%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198101198154%_))
                                                        (let ((_%e198104198164%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198101198154%_))))
                  (let ((_%lp-hd198105198168%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198104198164%_)))
                        (_%lp-tl198106198171%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198104198164%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd198105198168%_))
                        (let ((_%e198113198174%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd198105198168%_))))
                          (let ((_%hd198114198178%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198113198174%_)))
                                (_%tl198115198181%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198113198174%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198115198181%_))
                                (let ((_%e198116198184%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198115198181%_))))
                                  (let ((_%hd198117198188%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198116198184%_)))
                                        (_%tl198118198191%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198116198184%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198118198191%_))
                                        (let ((_%e198119198194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl198118198191%_))))
                                          (let ((_%hd198120198198%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198119198194%_)))
                                                (_%tl198121198201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198119198194%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198121198201%_))
                                                (_%loop198103198150%_
                                                 _%lp-tl198106198171%_
                                                 (cons _%hd198120198198%_
                                                       _%symbol198107198157%_)
                                                 (cons _%hd198117198188%_
                                                       _%method198108198159%_)
                                                 (cons _%hd198114198178%_
                                                       _%type-t198109198161%_))
                                                (_%g198092198127%_
                                                 _%g198093198131%_))))
                                        (_%g198092198127%_
                                         _%g198093198131%_))))
                                (_%g198092198127%_ _%g198093198131%_))))
                        (_%g198092198127%_ _%g198093198131%_))))
                (let ((_%symbol198110198204%_ (reverse _%symbol198107198157%_))
                      (_%method198111198207%_ (reverse _%method198108198159%_))
                      (_%type-t198112198209%_
                       (reverse _%type-t198109198161%_)))
                  ((lambda (_%L198212%_ _%L198214%_ _%L198215%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L198212%_
                                _%L198214%_
                                _%L198215%_))
                             (let ((__tmp204149
                                    (lambda (_%g198231198236%_
                                             _%g198232198239%_
                                             _%g198233198241%_
                                             _%g198234198243%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g198233198241%_
                                                        (cons _%g198232198239%_
                                                              (cons _%g198231198236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g198234198243%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp204149
                                '()
                                _%L198212%_
                                _%L198214%_
                                _%L198215%_)))))
                   _%symbol198110198204%_
                   _%method198111198207%_
                   _%type-t198112198209%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198103198150%_
                                           _%target198100198144%_
                                           '()
                                           '()
                                           '()))
                                        (_%g198092198127%_
                                         _%g198093198131%_)))))
                              (_%g198092198127%_ _%g198093198131%_))))
                      (_%g198092198127%_ _%g198093198131%_)))))
          (_%g198091198246%_ _%$stx198088%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx198251%_)
        (let* ((_%g198255198288%_
                (lambda (_%g198256198284%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198256198284%_))))
               (_%g198254198402%_
                (lambda (_%g198256198292%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198256198292%_))
                      (let ((_%e198260198295%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198256198292%_))))
                        (let ((_%hd198261198299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198260198295%_)))
                              (_%tl198262198302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198260198295%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198262198302%_))
                              (let ((_%e198263198305%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198262198302%_))))
                                (let ((_%hd198264198309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198263198305%_)))
                                      (_%tl198265198312%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198263198305%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198265198312%_))
                                      (let ((_g204150_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198265198312%_
                                                '0))))
                                        (begin
                                          (let ((_g204151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204150_)
                                                       (##vector-length
                                                        _g204150_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204151_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204151_)))
                                          (let ((_%target198266198315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g204150_ 0)))
                                                (_%tl198268198318%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g204150_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198268198318%_))
                                                (letrec ((_%loop198269198321%_
                                                          (lambda (_%hd198267198325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol198273198328%_
                           _%method198274198330%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198267198325%_))
                        (let ((_%e198270198333%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd198267198325%_))))
                          (let ((_%lp-hd198271198337%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198270198333%_)))
                                (_%lp-tl198272198340%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198270198333%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd198271198337%_))
                                (let ((_%e198277198343%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd198271198337%_))))
                                  (let ((_%hd198278198347%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198277198343%_)))
                                        (_%tl198279198350%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198277198343%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198279198350%_))
                                        (let ((_%e198280198353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl198279198350%_))))
                                          (let ((_%hd198281198357%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198280198353%_)))
                                                (_%tl198282198360%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198280198353%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198282198360%_))
                                                (_%loop198269198321%_
                                                 _%lp-tl198272198340%_
                                                 (cons _%hd198281198357%_
                                                       _%symbol198273198328%_)
                                                 (cons _%hd198278198347%_
                                                       _%method198274198330%_))
                                                (_%g198255198288%_
                                                 _%g198256198292%_))))
                                        (_%g198255198288%_
                                         _%g198256198292%_))))
                                (_%g198255198288%_ _%g198256198292%_))))
                        (let ((_%symbol198275198363%_
                               (reverse _%symbol198273198328%_))
                              (_%method198276198366%_
                               (reverse _%method198274198330%_)))
                          ((lambda (_%L198369%_ _%L198371%_ _%L198372%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L198369%_
                                        _%L198371%_))
                                     (let ((__tmp204152
                                            (lambda (_%g198390198394%_
                                                     _%g198391198397%_
                                                     _%g198392198399%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L198372%_
                                                                (cons _%g198391198397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g198390198394%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g198392198399%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp204152
                                        '()
                                        _%L198369%_
                                        _%L198371%_)))))
                           _%symbol198275198363%_
                           _%method198276198366%_
                           _%hd198264198309%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop198269198321%_
                                                   _%target198266198315%_
                                                   '()
                                                   '()))
                                                (_%g198255198288%_
                                                 _%g198256198292%_)))))
                                      (_%g198255198288%_ _%g198256198292%_))))
                              (_%g198255198288%_ _%g198256198292%_))))
                      (_%g198255198288%_ _%g198256198292%_)))))
          (_%g198254198402%_ _%$stx198251%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx198407%_)
        (let* ((_%g198411198425%_
                (lambda (_%g198412198421%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198412198421%_))))
               (_%g198410198466%_
                (lambda (_%g198412198429%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198412198429%_))
                      (let ((_%e198414198432%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198412198429%_))))
                        (let ((_%hd198415198436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198414198432%_)))
                              (_%tl198416198439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198414198432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198416198439%_))
                              (let ((_%e198417198442%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198416198439%_))))
                                (let ((_%hd198418198446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198417198442%_)))
                                      (_%tl198419198449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198417198442%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198419198449%_))
                                      ((lambda (_%L198452%_)
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
                                                           (cons _%L198452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd198418198446%_)
                                      (_%g198411198425%_ _%g198412198429%_))))
                              (_%g198411198425%_ _%g198412198429%_))))
                      (_%g198411198425%_ _%g198412198429%_)))))
          (_%g198410198466%_ _%$stx198407%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx198470%_)
        (let* ((_%g198474198528%_
                (lambda (_%g198475198524%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198475198524%_))))
               (_%g198473198709%_
                (lambda (_%g198475198532%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198475198532%_))
                      (let ((_%e198487198535%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198475198532%_))))
                        (let ((_%hd198488198539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198487198535%_)))
                              (_%tl198489198542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198487198535%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198489198542%_))
                              (let ((_%e198490198545%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198489198542%_))))
                                (let ((_%hd198491198549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198490198545%_)))
                                      (_%tl198492198552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198490198545%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198492198552%_))
                                      (let ((_%e198493198555%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198492198552%_))))
                                        (let ((_%hd198494198559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198493198555%_)))
                                              (_%tl198495198562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198493198555%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198495198562%_))
                                              (let ((_%e198496198565%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198495198562%_))))
                                                (let ((_%hd198497198569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198496198565%_)))
                                                      (_%tl198498198572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198496198565%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198498198572%_))
                                                      (let ((_%e198499198575%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl198498198572%_))))
                (let ((_%hd198500198579%_
                       (let () (declare (not safe)) (##car _%e198499198575%_)))
                      (_%tl198501198582%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198499198575%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198501198582%_))
                      (let ((_%e198502198585%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198501198582%_))))
                        (let ((_%hd198503198589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198502198585%_)))
                              (_%tl198504198592%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198502198585%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198504198592%_))
                              (let ((_%e198505198595%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198504198592%_))))
                                (let ((_%hd198506198599%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198505198595%_)))
                                      (_%tl198507198602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198505198595%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198507198602%_))
                                      (let ((_%e198508198605%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198507198602%_))))
                                        (let ((_%hd198509198609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198508198605%_)))
                                              (_%tl198510198612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198508198605%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198510198612%_))
                                              (let ((_%e198511198615%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198510198612%_))))
                                                (let ((_%hd198512198619%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198511198615%_)))
                                                      (_%tl198513198622%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198511198615%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198513198622%_))
                                                      (let ((_%e198514198625%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl198513198622%_))))
                (let ((_%hd198515198629%_
                       (let () (declare (not safe)) (##car _%e198514198625%_)))
                      (_%tl198516198632%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198514198625%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198516198632%_))
                      (let ((_%e198517198635%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198516198632%_))))
                        (let ((_%hd198518198639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198517198635%_)))
                              (_%tl198519198642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198517198635%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198519198642%_))
                              (let ((_%e198520198645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198519198642%_))))
                                (let ((_%hd198521198649%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198520198645%_)))
                                      (_%tl198522198652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198520198645%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198522198652%_))
                                      ((lambda (_%L198655%_
                                                _%L198657%_
                                                _%L198658%_
                                                _%L198659%_
                                                _%L198660%_
                                                _%L198661%_
                                                _%L198662%_
                                                _%L198663%_
                                                _%L198664%_
                                                _%L198665%_
                                                _%L198666%_)
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
                                                           (cons _%L198666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L198665%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L198664%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198663%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198662%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L198661%_ '()))
                                           (cons _%L198660%_
                                                 (cons _%L198659%_
                                                       (cons _%L198658%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198657%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L198655%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd198521198649%_
                                       _%hd198518198639%_
                                       _%hd198515198629%_
                                       _%hd198512198619%_
                                       _%hd198509198609%_
                                       _%hd198506198599%_
                                       _%hd198503198589%_
                                       _%hd198500198579%_
                                       _%hd198497198569%_
                                       _%hd198494198559%_
                                       _%hd198491198549%_)
                                      (_%g198474198528%_ _%g198475198532%_))))
                              (_%g198474198528%_ _%g198475198532%_))))
                      (_%g198474198528%_ _%g198475198532%_))))
              (_%g198474198528%_ _%g198475198532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198474198528%_
                                               _%g198475198532%_))))
                                      (_%g198474198528%_ _%g198475198532%_))))
                              (_%g198474198528%_ _%g198475198532%_))))
                      (_%g198474198528%_ _%g198475198532%_))))
              (_%g198474198528%_ _%g198475198532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198474198528%_
                                               _%g198475198532%_))))
                                      (_%g198474198528%_ _%g198475198532%_))))
                              (_%g198474198528%_ _%g198475198532%_))))
                      (_%g198474198528%_ _%g198475198532%_)))))
          (_%g198473198709%_ _%$stx198470%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx198713%_)
        (let* ((_%g198717198731%_
                (lambda (_%g198718198727%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198718198727%_))))
               (_%g198716198772%_
                (lambda (_%g198718198735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198718198735%_))
                      (let ((_%e198720198738%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198718198735%_))))
                        (let ((_%hd198721198742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198720198738%_)))
                              (_%tl198722198745%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198720198738%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198722198745%_))
                              (let ((_%e198723198748%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198722198745%_))))
                                (let ((_%hd198724198752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198723198748%_)))
                                      (_%tl198725198755%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198723198748%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198725198755%_))
                                      ((lambda (_%L198758%_)
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
                                                           (cons _%L198758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd198724198752%_)
                                      (_%g198717198731%_ _%g198718198735%_))))
                              (_%g198717198731%_ _%g198718198735%_))))
                      (_%g198717198731%_ _%g198718198735%_)))))
          (_%g198716198772%_ _%$stx198713%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx198776%_)
        (let* ((_%g198780198794%_
                (lambda (_%g198781198790%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198781198790%_))))
               (_%g198779198835%_
                (lambda (_%g198781198798%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198781198798%_))
                      (let ((_%e198783198801%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198781198798%_))))
                        (let ((_%hd198784198805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198783198801%_)))
                              (_%tl198785198808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198783198801%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198785198808%_))
                              (let ((_%e198786198811%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198785198808%_))))
                                (let ((_%hd198787198815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198786198811%_)))
                                      (_%tl198788198818%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198786198811%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198788198818%_))
                                      ((lambda (_%L198821%_)
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
                                                           (cons _%L198821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd198787198815%_)
                                      (_%g198780198794%_ _%g198781198798%_))))
                              (_%g198780198794%_ _%g198781198798%_))))
                      (_%g198780198794%_ _%g198781198798%_)))))
          (_%g198779198835%_ _%$stx198776%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx198839%_)
        (let* ((_%g198843198865%_
                (lambda (_%g198844198861%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198844198861%_))))
               (_%g198842198934%_
                (lambda (_%g198844198869%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198844198869%_))
                      (let ((_%e198848198872%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198844198869%_))))
                        (let ((_%hd198849198876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198848198872%_)))
                              (_%tl198850198879%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198848198872%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198850198879%_))
                              (let ((_%e198851198882%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198850198879%_))))
                                (let ((_%hd198852198886%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198851198882%_)))
                                      (_%tl198853198889%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198851198882%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198853198889%_))
                                      (let ((_%e198854198892%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198853198889%_))))
                                        (let ((_%hd198855198896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198854198892%_)))
                                              (_%tl198856198899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198854198892%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198856198899%_))
                                              (let ((_%e198857198902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198856198899%_))))
                                                (let ((_%hd198858198906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198857198902%_)))
                                                      (_%tl198859198909%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198857198902%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198859198909%_))
                                                      ((lambda (_%L198912%_
                                                                _%L198914%_
                                                                _%L198915%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L198915%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198914%_ '()))
                                   (cons _%L198912%_ '())))))
               _%hd198858198906%_
               _%hd198855198896%_
               _%hd198852198886%_)
              (_%g198843198865%_ _%g198844198869%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198843198865%_
                                               _%g198844198869%_))))
                                      (_%g198843198865%_ _%g198844198869%_))))
                              (_%g198843198865%_ _%g198844198869%_))))
                      (_%g198843198865%_ _%g198844198869%_)))))
          (_%g198842198934%_ _%$stx198839%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx198938%_)
        (let* ((_%g198942198964%_
                (lambda (_%g198943198960%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198943198960%_))))
               (_%g198941199033%_
                (lambda (_%g198943198968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198943198968%_))
                      (let ((_%e198947198971%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198943198968%_))))
                        (let ((_%hd198948198975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198947198971%_)))
                              (_%tl198949198978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198947198971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198949198978%_))
                              (let ((_%e198950198981%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198949198978%_))))
                                (let ((_%hd198951198985%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198950198981%_)))
                                      (_%tl198952198988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198950198981%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198952198988%_))
                                      (let ((_%e198953198991%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198952198988%_))))
                                        (let ((_%hd198954198995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198953198991%_)))
                                              (_%tl198955198998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198953198991%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198955198998%_))
                                              (let ((_%e198956199001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198955198998%_))))
                                                (let ((_%hd198957199005%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198956199001%_)))
                                                      (_%tl198958199008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198956199001%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198958199008%_))
                                                      ((lambda (_%L199011%_
                                                                _%L199013%_
                                                                _%L199014%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L199014%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L199013%_ '()))
                                   (cons _%L199011%_ '())))))
               _%hd198957199005%_
               _%hd198954198995%_
               _%hd198951198985%_)
              (_%g198942198964%_ _%g198943198968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198942198964%_
                                               _%g198943198968%_))))
                                      (_%g198942198964%_ _%g198943198968%_))))
                              (_%g198942198964%_ _%g198943198968%_))))
                      (_%g198942198964%_ _%g198943198968%_)))))
          (_%g198941199033%_ _%$stx198938%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx199037%_)
        (let* ((_%g199041199055%_
                (lambda (_%g199042199051%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199042199051%_))))
               (_%g199040199096%_
                (lambda (_%g199042199059%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199042199059%_))
                      (let ((_%e199044199062%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199042199059%_))))
                        (let ((_%hd199045199066%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199044199062%_)))
                              (_%tl199046199069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199044199062%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199046199069%_))
                              (let ((_%e199047199072%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199046199069%_))))
                                (let ((_%hd199048199076%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199047199072%_)))
                                      (_%tl199049199079%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199047199072%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199049199079%_))
                                      ((lambda (_%L199082%_)
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
                                                           (cons _%L199082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd199048199076%_)
                                      (_%g199041199055%_ _%g199042199059%_))))
                              (_%g199041199055%_ _%g199042199059%_))))
                      (_%g199041199055%_ _%g199042199059%_)))))
          (_%g199040199096%_ _%$stx199037%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx199100%_)
        (let* ((_%g199104199122%_
                (lambda (_%g199105199118%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199105199118%_))))
               (_%g199103199177%_
                (lambda (_%g199105199126%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199105199126%_))
                      (let ((_%e199108199129%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199105199126%_))))
                        (let ((_%hd199109199133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199108199129%_)))
                              (_%tl199110199136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199108199129%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199110199136%_))
                              (let ((_%e199111199139%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199110199136%_))))
                                (let ((_%hd199112199143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199111199139%_)))
                                      (_%tl199113199146%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199111199139%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199113199146%_))
                                      (let ((_%e199114199149%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199113199146%_))))
                                        (let ((_%hd199115199153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199114199149%_)))
                                              (_%tl199116199156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199114199149%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199116199156%_))
                                              ((lambda (_%L199159%_
                                                        _%L199161%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L199161%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L199159%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199115199153%_
                                               _%hd199112199143%_)
                                              (_%g199104199122%_
                                               _%g199105199126%_))))
                                      (_%g199104199122%_ _%g199105199126%_))))
                              (_%g199104199122%_ _%g199105199126%_))))
                      (_%g199104199122%_ _%g199105199126%_)))))
          (_%g199103199177%_ _%$stx199100%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx199181%_)
        (let* ((_%__stx203523203524%_ _%$stx199181%_)
               (_%g199188199249%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203523203524%_)))))
          (let ((_%__kont203526203527%_
                 (lambda (_%L199487%_ _%L199489%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L199489%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L199487%_ '()))
                                     '())))))
                (_%__kont203528203529%_
                 (lambda (_%L199426%_ _%L199428%_ _%L199429%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L199429%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L199428%_ '()))
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
                                 (cons _%L199426%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont203530203531%_
                 (lambda (_%L199350%_ _%L199352%_)
                   (cons _%L199352%_ (cons _%L199350%_ (cons '#f '())))))
                (_%__kont203532203533%_
                 (lambda (_%L199300%_ _%L199302%_ _%L199303%_)
                   (cons _%L199303%_
                         (cons _%L199302%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L199300%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx203523203524%_))
                (let ((_%e199192199457%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx203523203524%_))))
                  (let ((_%tl199194199464%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199192199457%_)))
                        (_%hd199193199461%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199192199457%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199194199464%_))
                        (let ((_%e199195199467%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199194199464%_))))
                          (let ((_%tl199197199474%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199195199467%_)))
                                (_%hd199196199471%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199195199467%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199197199474%_))
                                (let ((_%e199198199477%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199197199474%_))))
                                  (let ((_%tl199200199484%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199198199477%_)))
                                        (_%hd199199199481%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199198199477%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199200199484%_))
                                        (_%__kont203526203527%_
                                         _%hd199199199481%_
                                         _%hd199196199471%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199200199484%_))
                                            (let ((_%e199213199402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199200199484%_))))
                                              (let ((_%tl199215199409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199213199402%_)))
                                                    (_%hd199214199406%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199213199402%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199214199406%_))
                                                    (let ((_%e199216199412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199214199406%_))))
                                                      (if (equal? _%e199216199412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199215199409%_))
                      (let ((_%e199217199416%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199215199409%_))))
                        (let ((_%tl199219199423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199217199416%_)))
                              (_%hd199218199420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199217199416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199219199423%_))
                              (_%__kont203528203529%_
                               _%hd199218199420%_
                               _%hd199199199481%_
                               _%hd199196199471%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd199199199481%_))
                                  (let ((_%e199240199286%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199199199481%_))))
                                    (declare (not safe))
                                    (_%g199188199249%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199188199249%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199199199481%_))
                          (let ((_%e199240199286%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199199199481%_))))
                            (if (equal? _%e199240199286%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199215199409%_))
                                    (_%__kont203532203533%_
                                     _%hd199214199406%_
                                     _%hd199196199471%_
                                     _%hd199193199461%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g199188199249%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199188199249%_))))
                          (let () (declare (not safe)) (_%g199188199249%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd199199199481%_))
                      (let ((_%e199240199286%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199199199481%_))))
                        (if (equal? _%e199240199286%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199215199409%_))
                                (_%__kont203532203533%_
                                 _%hd199214199406%_
                                 _%hd199196199471%_
                                 _%hd199193199461%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199188199249%_)))
                            (let () (declare (not safe)) (_%g199188199249%_))))
                      (let () (declare (not safe)) (_%g199188199249%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd199199199481%_))
                                                        (let ((_%e199240199286%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd199199199481%_))))
                  (if (equal? _%e199240199286%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199215199409%_))
                          (_%__kont203532203533%_
                           _%hd199214199406%_
                           _%hd199196199471%_
                           _%hd199193199461%_)
                          (let () (declare (not safe)) (_%g199188199249%_)))
                      (let () (declare (not safe)) (_%g199188199249%_))))
                (let () (declare (not safe)) (_%g199188199249%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd199199199481%_))
                                                (let ((_%e199240199286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199199199481%_))))
                                                  (declare (not safe))
                                                  (_%g199188199249%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199188199249%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199197199474%_))
                                    (_%__kont203530203531%_
                                     _%hd199196199471%_
                                     _%hd199193199461%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g199188199249%_))))))
                        (let () (declare (not safe)) (_%g199188199249%_)))))
                (let () (declare (not safe)) (_%g199188199249%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx199508%_)
        (let* ((_%g199512199541%_
                (lambda (_%g199513199537%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199513199537%_))))
               (_%g199511199650%_
                (lambda (_%g199513199545%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199513199545%_))
                      (let ((_%e199515199548%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199513199545%_))))
                        (let ((_%hd199516199552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199515199548%_)))
                              (_%tl199517199555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199515199548%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199517199555%_))
                              (let ((_g204153_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199517199555%_
                                        '0))))
                                (begin
                                  (let ((_g204154_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204153_)
                                               (##vector-length _g204153_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204154_ 2)))
                                        (error "Context expects 2 values"
                                               _g204154_)))
                                  (let ((_%target199518199558%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204153_ 0)))
                                        (_%tl199520199561%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204153_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199520199561%_))
                                        (letrec ((_%loop199521199564%_
                                                  (lambda (_%hd199519199568%_
                                                           _%clause199525199571%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199519199568%_))
                                                        (let ((_%e199522199574%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199519199568%_))))
                  (let ((_%lp-hd199523199578%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199522199574%_)))
                        (_%lp-tl199524199581%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199522199574%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd199523199578%_))
                        (let ((_g204155_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd199523199578%_
                                  '0))))
                          (begin
                            (let ((_g204156_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g204155_)
                                         (##vector-length _g204155_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g204156_ 2)))
                                  (error "Context expects 2 values"
                                         _g204156_)))
                            (let ((_%target199527199584%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g204155_ 0)))
                                  (_%tl199529199587%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g204155_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199529199587%_))
                                  (letrec ((_%loop199530199590%_
                                            (lambda (_%hd199528199594%_
                                                     _%clause199534199597%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199528199594%_))
                                                  (let ((_%e199531199600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd199528199594%_))))
                                                    (let ((_%lp-hd199532199604%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199531199600%_)))
                                                          (_%lp-tl199533199607%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199531199600%_))))
                                                      (_%loop199530199590%_
                                                       _%lp-tl199533199607%_
                                                       (cons _%lp-hd199532199604%_
                                                             _%clause199534199597%_))))
                                                  (let ((_%clause199535199610%_
                                                         (reverse _%clause199534199597%_)))
                                                    (_%loop199521199564%_
                                                     _%lp-tl199524199581%_
                                                     (cons _%clause199535199610%_
                                                           _%clause199525199571%_)))))))
                                    (_%loop199530199590%_
                                     _%target199527199584%_
                                     '()))
                                  (_%g199512199541%_ _%g199513199545%_)))))
                        (_%g199512199541%_ _%g199513199545%_))))
                (let ((_%clause199526199614%_
                       (reverse _%clause199525199571%_)))
                  ((lambda (_%L199618%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp204157
                                              (lambda (_%g199633199638%_
                                                       _%g199634199641%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp204158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g199635199644%_ _%g199636199647%_)
                             (cons _%g199635199644%_ _%g199636199647%_))))
                      (declare (not safe))
                      (__foldr1 __tmp204158 '() _%g199633199638%_)))
              _%g199634199641%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp204157
                                          '()
                                          _%L199618%_)))
                                 '())))
                   _%clause199526199614%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop199521199564%_
                                           _%target199518199558%_
                                           '()))
                                        (_%g199512199541%_
                                         _%g199513199545%_)))))
                              (_%g199512199541%_ _%g199513199545%_))))
                      (_%g199512199541%_ _%g199513199545%_)))))
          (_%g199511199650%_ _%$stx199508%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx199656%_)
        (let* ((_%g199660199678%_
                (lambda (_%g199661199674%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199661199674%_))))
               (_%g199659199733%_
                (lambda (_%g199661199682%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199661199682%_))
                      (let ((_%e199664199685%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199661199682%_))))
                        (let ((_%hd199665199689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199664199685%_)))
                              (_%tl199666199692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199664199685%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199666199692%_))
                              (let ((_%e199667199695%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199666199692%_))))
                                (let ((_%hd199668199699%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199667199695%_)))
                                      (_%tl199669199702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199667199695%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199669199702%_))
                                      (let ((_%e199670199705%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199669199702%_))))
                                        (let ((_%hd199671199709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199670199705%_)))
                                              (_%tl199672199712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199670199705%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199672199712%_))
                                              ((lambda (_%L199715%_
                                                        _%L199717%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L199717%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L199715%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199671199709%_
                                               _%hd199668199699%_)
                                              (_%g199660199678%_
                                               _%g199661199682%_))))
                                      (_%g199660199678%_ _%g199661199682%_))))
                              (_%g199660199678%_ _%g199661199682%_))))
                      (_%g199660199678%_ _%g199661199682%_)))))
          (_%g199659199733%_ _%$stx199656%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx199737%_)
        (let* ((_%g199741199759%_
                (lambda (_%g199742199755%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199742199755%_))))
               (_%g199740199814%_
                (lambda (_%g199742199763%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199742199763%_))
                      (let ((_%e199745199766%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199742199763%_))))
                        (let ((_%hd199746199770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199745199766%_)))
                              (_%tl199747199773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199745199766%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199747199773%_))
                              (let ((_%e199748199776%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199747199773%_))))
                                (let ((_%hd199749199780%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199748199776%_)))
                                      (_%tl199750199783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199748199776%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199750199783%_))
                                      (let ((_%e199751199786%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199750199783%_))))
                                        (let ((_%hd199752199790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199751199786%_)))
                                              (_%tl199753199793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199751199786%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199753199793%_))
                                              ((lambda (_%L199796%_
                                                        _%L199798%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L199798%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L199796%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199752199790%_
                                               _%hd199749199780%_)
                                              (_%g199741199759%_
                                               _%g199742199763%_))))
                                      (_%g199741199759%_ _%g199742199763%_))))
                              (_%g199741199759%_ _%g199742199763%_))))
                      (_%g199741199759%_ _%g199742199763%_)))))
          (_%g199740199814%_ _%$stx199737%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx199818%_)
        (let* ((_%g199822199851%_
                (lambda (_%g199823199847%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199823199847%_))))
               (_%g199821199951%_
                (lambda (_%g199823199855%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199823199855%_))
                      (let ((_%e199826199858%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199823199855%_))))
                        (let ((_%hd199827199862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199826199858%_)))
                              (_%tl199828199865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199826199858%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199828199865%_))
                              (let ((_g204159_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199828199865%_
                                        '0))))
                                (begin
                                  (let ((_g204160_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204159_)
                                               (##vector-length _g204159_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204160_ 2)))
                                        (error "Context expects 2 values"
                                               _g204160_)))
                                  (let ((_%target199829199868%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204159_ 0)))
                                        (_%tl199831199871%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204159_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199831199871%_))
                                        (letrec ((_%loop199832199874%_
                                                  (lambda (_%hd199830199878%_
                                                           _%rule199836199881%_
                                                           _%proc199837199883%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199830199878%_))
                                                        (let ((_%e199833199886%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199830199878%_))))
                  (let ((_%lp-hd199834199890%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199833199886%_)))
                        (_%lp-tl199835199893%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199833199886%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd199834199890%_))
                        (let ((_%e199840199896%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd199834199890%_))))
                          (let ((_%hd199841199900%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199840199896%_)))
                                (_%tl199842199903%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199840199896%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199842199903%_))
                                (let ((_%e199843199906%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199842199903%_))))
                                  (let ((_%hd199844199910%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199843199906%_)))
                                        (_%tl199845199913%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199843199906%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199845199913%_))
                                        (_%loop199832199874%_
                                         _%lp-tl199835199893%_
                                         (cons _%hd199844199910%_
                                               _%rule199836199881%_)
                                         (cons _%hd199841199900%_
                                               _%proc199837199883%_))
                                        (_%g199822199851%_
                                         _%g199823199855%_))))
                                (_%g199822199851%_ _%g199823199855%_))))
                        (_%g199822199851%_ _%g199823199855%_))))
                (let ((_%rule199838199916%_ (reverse _%rule199836199881%_))
                      (_%proc199839199919%_ (reverse _%proc199837199883%_)))
                  ((lambda (_%L199922%_ _%L199924%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L199922%_
                                _%L199924%_))
                             (let ((__tmp204161
                                    (lambda (_%g199939199943%_
                                             _%g199940199946%_
                                             _%g199941199948%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g199940199946%_
                                                        (cons _%g199939199943%_
                                                              '())))
                                            _%g199941199948%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp204161
                                '()
                                _%L199922%_
                                _%L199924%_)))))
                   _%rule199838199916%_
                   _%proc199839199919%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop199832199874%_
                                           _%target199829199868%_
                                           '()
                                           '()))
                                        (_%g199822199851%_
                                         _%g199823199855%_)))))
                              (_%g199822199851%_ _%g199823199855%_))))
                      (_%g199822199851%_ _%g199823199855%_)))))
          (_%g199821199951%_ _%$stx199818%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx199956%_)
        (let* ((_%g199960199978%_
                (lambda (_%g199961199974%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199961199974%_))))
               (_%g199959200033%_
                (lambda (_%g199961199982%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199961199982%_))
                      (let ((_%e199964199985%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199961199982%_))))
                        (let ((_%hd199965199989%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199964199985%_)))
                              (_%tl199966199992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199964199985%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199966199992%_))
                              (let ((_%e199967199995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199966199992%_))))
                                (let ((_%hd199968199999%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199967199995%_)))
                                      (_%tl199969200002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199967199995%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199969200002%_))
                                      (let ((_%e199970200005%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199969200002%_))))
                                        (let ((_%hd199971200009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199970200005%_)))
                                              (_%tl199972200012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199970200005%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199972200012%_))
                                              ((lambda (_%L200015%_
                                                        _%L200017%_)
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
                                                   (cons _%L200017%_ '()))
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
                 (cons _%L200015%_ '())))
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
                                   (cons _%L200017%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199971200009%_
                                               _%hd199968199999%_)
                                              (_%g199960199978%_
                                               _%g199961199982%_))))
                                      (_%g199960199978%_ _%g199961199982%_))))
                              (_%g199960199978%_ _%g199961199982%_))))
                      (_%g199960199978%_ _%g199961199982%_)))))
          (_%g199959200033%_ _%$stx199956%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx200037%_)
        (let* ((_%__stx203641203642%_ _%$stx200037%_)
               (_%g200042200067%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203641203642%_)))))
          (let ((_%__kont203644203645%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont203646203647%_
                 (lambda (_%L200114%_ _%L200116%_ _%L200117%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L200117%_ (cons _%L200116%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L200114%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx203641203642%_))
                (let ((_%e200044200143%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx203641203642%_))))
                  (let ((_%tl200046200150%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200044200143%_)))
                        (_%hd200045200147%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200044200143%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl200046200150%_))
                        (_%__kont203644203645%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl200046200150%_))
                            (let ((_%e200053200084%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl200046200150%_))))
                              (let ((_%tl200055200091%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200053200084%_)))
                                    (_%hd200054200088%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200053200084%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd200054200088%_))
                                    (let ((_%e200056200094%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd200054200088%_))))
                                      (let ((_%tl200058200101%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200056200094%_)))
                                            (_%hd200057200098%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200056200094%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200058200101%_))
                                            (let ((_%e200059200104%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl200058200101%_))))
                                              (let ((_%tl200061200111%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200059200104%_)))
                                                    (_%hd200060200108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200059200104%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200061200111%_))
                                                    (_%__kont203646203647%_
                                                     _%tl200055200091%_
                                                     _%hd200060200108%_
                                                     _%hd200057200098%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200042200067%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g200042200067%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200042200067%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g200042200067%_))))))
                (let () (declare (not safe)) (_%g200042200067%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx200161%_)
        (let* ((_%__stx203685203686%_ _%$stx200161%_)
               (_%g200166200197%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203685203686%_)))))
          (let ((_%__kont203688203689%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont203690203691%_
                 (lambda (_%L200264%_ _%L200266%_ _%L200267%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L200267%_
                                           (let ((__tmp204162
                                                  (lambda (_%g200287200290%_
                                                           _%g200288200293%_)
                                                    (cons _%g200287200290%_
                                                          _%g200288200293%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp204162
                                              '()
                                              _%L200266%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L200264%_)
                                     '()))))))
            (let ((_%__match203728203729%_
                   (lambda (_%e200174200204%_
                            _%hd200175200208%_
                            _%tl200176200211%_
                            _%e200177200214%_
                            _%hd200178200218%_
                            _%tl200179200221%_
                            _%e200180200224%_
                            _%hd200181200228%_
                            _%tl200182200231%_
                            _%__splice203692203693%_
                            _%target200183200234%_
                            _%tl200185200237%_)
                     (letrec ((_%loop200186200240%_
                               (lambda (_%hd200184200244%_ _%sig200190200247%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd200184200244%_))
                                     (let ((_%e200187200250%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd200184200244%_))))
                                       (let ((_%lp-tl200189200257%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200187200250%_)))
                                             (_%lp-hd200188200254%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200187200250%_))))
                                         (_%loop200186200240%_
                                          _%lp-tl200189200257%_
                                          (cons _%lp-hd200188200254%_
                                                _%sig200190200247%_))))
                                     (let ((_%sig200191200260%_
                                            (reverse _%sig200190200247%_)))
                                       (_%__kont203690203691%_
                                        _%tl200179200221%_
                                        _%sig200191200260%_
                                        _%hd200181200228%_))))))
                       (_%loop200186200240%_ _%target200183200234%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203685203686%_))
                  (let ((_%e200168200303%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx203685203686%_))))
                    (let ((_%tl200170200310%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200168200303%_)))
                          (_%hd200169200307%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200168200303%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200170200310%_))
                          (_%__kont203688203689%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200170200310%_))
                              (let ((_%e200177200214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200170200310%_))))
                                (let ((_%tl200179200221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200177200214%_)))
                                      (_%hd200178200218%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200177200214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200178200218%_))
                                      (let ((_%e200180200224%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd200178200218%_))))
                                        (let ((_%tl200182200231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200180200224%_)))
                                              (_%hd200181200228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200180200224%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl200182200231%_))
                                              (let ((_%__splice203692203693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl200182200231%_
                                                        '0))))
                                                (let ((_%tl200185200237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203692203693%_
                                                          '1)))
                                                      (_%target200183200234%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203692203693%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200185200237%_))
                                                      (_%__match203728203729%_
                                                       _%e200168200303%_
                                                       _%hd200169200307%_
                                                       _%tl200170200310%_
                                                       _%e200177200214%_
                                                       _%hd200178200218%_
                                                       _%tl200179200221%_
                                                       _%e200180200224%_
                                                       _%hd200181200228%_
                                                       _%tl200182200231%_
                                                       _%__splice203692203693%_
                                                       _%target200183200234%_
                                                       _%tl200185200237%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200166200197%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200166200197%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200166200197%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g200166200197%_))))))
                  (let () (declare (not safe)) (_%g200166200197%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx200322%_)
        (let* ((_%__stx203731203732%_ _%$stx200322%_)
               (_%g200327200374%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203731203732%_)))))
          (let ((_%__kont203734203735%_
                 (lambda (_%L200536%_ _%L200538%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L200538%_
                               (let ((__tmp204163
                                      (lambda (_%g200558200561%_
                                               _%g200559200564%_)
                                        (cons _%g200558200561%_
                                              _%g200559200564%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp204163 '() _%L200536%_))))))
                (_%__kont203738203739%_
                 (lambda (_%L200431%_ _%L200433%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L200433%_
                               (let ((__tmp204164
                                      (lambda (_%g200450200453%_
                                               _%g200451200456%_)
                                        (cons _%g200450200453%_
                                              _%g200451200456%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp204164 '() _%L200431%_)))))))
            (let* ((_%__match203798203799%_
                    (lambda (_%e200354200381%_
                             _%hd200355200385%_
                             _%tl200356200388%_
                             _%e200357200391%_
                             _%hd200358200395%_
                             _%tl200359200398%_
                             _%__splice203740203741%_
                             _%target200360200401%_
                             _%tl200362200404%_)
                      (letrec ((_%loop200363200407%_
                                (lambda (_%hd200361200411%_
                                         _%sig200367200414%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200361200411%_))
                                      (let ((_%e200364200417%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd200361200411%_))))
                                        (let ((_%lp-tl200366200424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200364200417%_)))
                                              (_%lp-hd200365200421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200364200417%_))))
                                          (_%loop200363200407%_
                                           _%lp-tl200366200424%_
                                           (cons _%lp-hd200365200421%_
                                                 _%sig200367200414%_))))
                                      (let ((_%sig200368200427%_
                                             (reverse _%sig200367200414%_)))
                                        (_%__kont203738203739%_
                                         _%sig200368200427%_
                                         _%hd200358200395%_))))))
                        (_%loop200363200407%_ _%target200360200401%_ '()))))
                   (_%__match203790203791%_
                    (lambda (_%e200354200381%_
                             _%hd200355200385%_
                             _%tl200356200388%_
                             _%e200357200391%_
                             _%hd200358200395%_
                             _%tl200359200398%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl200359200398%_))
                          (let ((_%__splice203740203741%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl200359200398%_
                                    '0))))
                            (let ((_%tl200362200404%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice203740203741%_
                                      '1)))
                                  (_%target200360200401%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice203740203741%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200362200404%_))
                                  (_%__match203798203799%_
                                   _%e200354200381%_
                                   _%hd200355200385%_
                                   _%tl200356200388%_
                                   _%e200357200391%_
                                   _%hd200358200395%_
                                   _%tl200359200398%_
                                   _%__splice203740203741%_
                                   _%target200360200401%_
                                   _%tl200362200404%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200327200374%_)))))
                          (let () (declare (not safe)) (_%g200327200374%_)))))
                   (_%__match203778203779%_
                    (lambda (_%e200331200466%_
                             _%hd200332200470%_
                             _%tl200333200473%_
                             _%e200334200476%_
                             _%hd200335200480%_
                             _%tl200336200483%_
                             _%e200337200486%_
                             _%hd200338200490%_
                             _%tl200339200493%_
                             _%e200340200496%_
                             _%hd200341200500%_
                             _%tl200342200503%_
                             _%__splice203736203737%_
                             _%target200343200506%_
                             _%tl200345200509%_)
                      (letrec ((_%loop200346200512%_
                                (lambda (_%hd200344200516%_
                                         _%sig200350200519%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200344200516%_))
                                      (let ((_%e200347200522%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd200344200516%_))))
                                        (let ((_%lp-tl200349200529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200347200522%_)))
                                              (_%lp-hd200348200526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200347200522%_))))
                                          (_%loop200346200512%_
                                           _%lp-tl200349200529%_
                                           (cons _%lp-hd200348200526%_
                                                 _%sig200350200519%_))))
                                      (let ((_%sig200351200532%_
                                             (reverse _%sig200350200519%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200339200493%_))
                                            (_%__kont203734203735%_
                                             _%sig200351200532%_
                                             _%hd200335200480%_)
                                            (_%__match203790203791%_
                                             _%e200331200466%_
                                             _%hd200332200470%_
                                             _%tl200333200473%_
                                             _%e200334200476%_
                                             _%hd200335200480%_
                                             _%tl200336200483%_)))))))
                        (_%loop200346200512%_ _%target200343200506%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203731203732%_))
                  (let ((_%e200331200466%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx203731203732%_))))
                    (let ((_%tl200333200473%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200331200466%_)))
                          (_%hd200332200470%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200331200466%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200333200473%_))
                          (let ((_%e200334200476%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200333200473%_))))
                            (let ((_%tl200336200483%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200334200476%_)))
                                  (_%hd200335200480%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200334200476%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200336200483%_))
                                  (let ((_%e200337200486%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl200336200483%_))))
                                    (let ((_%tl200339200493%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200337200486%_)))
                                          (_%hd200338200490%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200337200486%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd200338200490%_))
                                          (let ((_%e200340200496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd200338200490%_))))
                                            (let ((_%tl200342200503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200340200496%_)))
                                                  (_%hd200341200500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200340200496%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd200341200500%_))
                                                  (if (let ((__tmp204165
                                                             |gxc[1]#_g204166_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp204165
                                                         _%hd200341200500%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl200342200503%_))
                                                          (let ((_%__splice203736203737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl200342200503%_ '0))))
                    (let ((_%tl200345200509%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice203736203737%_ '1)))
                          (_%target200343200506%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice203736203737%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200345200509%_))
                          (_%__match203778203779%_
                           _%e200331200466%_
                           _%hd200332200470%_
                           _%tl200333200473%_
                           _%e200334200476%_
                           _%hd200335200480%_
                           _%tl200336200483%_
                           _%e200337200486%_
                           _%hd200338200490%_
                           _%tl200339200493%_
                           _%e200340200496%_
                           _%hd200341200500%_
                           _%tl200342200503%_
                           _%__splice203736203737%_
                           _%target200343200506%_
                           _%tl200345200509%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200336200483%_))
                              (let ((_%__splice203740203741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200336200483%_
                                        '0))))
                                (let ((_%tl200362200404%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice203740203741%_
                                          '1)))
                                      (_%target200360200401%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice203740203741%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200362200404%_))
                                      (_%__match203798203799%_
                                       _%e200331200466%_
                                       _%hd200332200470%_
                                       _%tl200333200473%_
                                       _%e200334200476%_
                                       _%hd200335200480%_
                                       _%tl200336200483%_
                                       _%__splice203740203741%_
                                       _%target200360200401%_
                                       _%tl200362200404%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g200327200374%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g200327200374%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl200336200483%_))
                      (let ((_%__splice203740203741%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl200336200483%_
                                '0))))
                        (let ((_%tl200362200404%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203740203741%_ '1)))
                              (_%target200360200401%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203740203741%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200362200404%_))
                              (_%__match203798203799%_
                               _%e200331200466%_
                               _%hd200332200470%_
                               _%tl200333200473%_
                               _%e200334200476%_
                               _%hd200335200480%_
                               _%tl200336200483%_
                               _%__splice203740203741%_
                               _%target200360200401%_
                               _%tl200362200404%_)
                              (let ()
                                (declare (not safe))
                                (_%g200327200374%_)))))
                      (let () (declare (not safe)) (_%g200327200374%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl200336200483%_))
                  (let ((_%__splice203740203741%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl200336200483%_ '0))))
                    (let ((_%tl200362200404%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice203740203741%_ '1)))
                          (_%target200360200401%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice203740203741%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200362200404%_))
                          (_%__match203798203799%_
                           _%e200331200466%_
                           _%hd200332200470%_
                           _%tl200333200473%_
                           _%e200334200476%_
                           _%hd200335200480%_
                           _%tl200336200483%_
                           _%__splice203740203741%_
                           _%target200360200401%_
                           _%tl200362200404%_)
                          (let () (declare (not safe)) (_%g200327200374%_)))))
                  (let () (declare (not safe)) (_%g200327200374%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl200336200483%_))
                                                      (let ((_%__splice203740203741%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl200336200483%_ '0))))
                (let ((_%tl200362200404%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice203740203741%_ '1)))
                      (_%target200360200401%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice203740203741%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200362200404%_))
                      (_%__match203798203799%_
                       _%e200331200466%_
                       _%hd200332200470%_
                       _%tl200333200473%_
                       _%e200334200476%_
                       _%hd200335200480%_
                       _%tl200336200483%_
                       _%__splice203740203741%_
                       _%target200360200401%_
                       _%tl200362200404%_)
                      (let () (declare (not safe)) (_%g200327200374%_)))))
              (let () (declare (not safe)) (_%g200327200374%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl200336200483%_))
                                              (let ((_%__splice203740203741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl200336200483%_
                                                        '0))))
                                                (let ((_%tl200362200404%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203740203741%_
                                                          '1)))
                                                      (_%target200360200401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203740203741%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200362200404%_))
                                                      (_%__match203798203799%_
                                                       _%e200331200466%_
                                                       _%hd200332200470%_
                                                       _%tl200333200473%_
                                                       _%e200334200476%_
                                                       _%hd200335200480%_
                                                       _%tl200336200483%_
                                                       _%__splice203740203741%_
                                                       _%target200360200401%_
                                                       _%tl200362200404%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200327200374%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200327200374%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200336200483%_))
                                      (let ((_%__splice203740203741%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200336200483%_
                                                '0))))
                                        (let ((_%tl200362200404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice203740203741%_
                                                  '1)))
                                              (_%target200360200401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice203740203741%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200362200404%_))
                                              (_%__match203798203799%_
                                               _%e200331200466%_
                                               _%hd200332200470%_
                                               _%tl200333200473%_
                                               _%e200334200476%_
                                               _%hd200335200480%_
                                               _%tl200336200483%_
                                               _%__splice203740203741%_
                                               _%target200360200401%_
                                               _%tl200362200404%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g200327200374%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200327200374%_))))))
                          (let () (declare (not safe)) (_%g200327200374%_)))))
                  (let () (declare (not safe)) (_%g200327200374%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx201721%_ _%id201723%_)
        (let ((_%proc201727%_
               (let ((__tmp204167
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id201723%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp204167))))
          (if (procedure? _%proc201727%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx201721%_
                 _%id201723%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx201712%_ _%id201714%_)
        (let ((_%klass201718%_
               (let ((__tmp204168
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id201714%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp204168))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass201718%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx201712%_
                 _%id201714%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx200962%_ _%proc200964%_ _%sig200965%_)
        (letrec ((_%signature-arity200967%_
                  (lambda (_%args201644%_)
                    (let _%loop201647%_ ((_%rest201650%_ _%args201644%_)
                                         (_%count201652%_ '0))
                      (let* ((_%rest201653201664%_ _%rest201650%_)
                             (_%E201657201670%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest201653201664%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K201660201701%_
                               (lambda (_%rest201698%_)
                                 (_%loop201647%_
                                  _%rest201698%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count201652%_ '1)))))
                              (_%K201659201690%_ (lambda () _%count201652%_))
                              (_%K201658201678%_
                               (lambda () (cons _%count201652%_ '()))))
                          (let ((_%try-match201655201694%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest201653201664%_))
                                       (_%K201659201690%_)
                                       (_%K201658201678%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest201653201664%_))
                                (let* ((_%tl201662201705%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest201653201664%_)))
                                       (_%rest201709%_ _%tl201662201705%_))
                                  (_%K201660201701%_ _%rest201709%_))
                                (_%try-match201655201694%_))))))))
                 (_%make-signature200969%_
                  (lambda (_%args201526%_
                           _%return201528%_
                           _%effect201529%_
                           _%unchecked201530%_)
                    (let ((__tmp204169
                           (lambda (_%g201531201533%_)
                             (|gxc[1]#verify-class!|
                              _%ctx200962%_
                              _%g201531201533%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp204169 _%args201526%_))
                    (|gxc[1]#verify-class!| _%ctx200962%_ _%return201528%_)
                    (if _%unchecked201530%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx200962%_
                         _%unchecked201530%_)
                        '#!void)
                    (let ((_%arity201537%_
                           (_%signature-arity200967%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args201526%_)))))
                      (if _%effect201529%_
                          (let ((_%effect201540%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect201529%_))))
                            (if (and (list? _%effect201540%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect201540%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx200962%_
                                   _%proc200964%_
                                   _%effect201540%_))))
                          '#!void)
                      (cons _%arity201537%_
                            (cons (let* ((_%g201543201566%_
                                          (lambda (_%g201544201562%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g201544201562%_))))
                                         (_%g201542201640%_
                                          (lambda (_%g201544201570%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g201544201570%_))
                                                (let ((_%e201549201573%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g201544201570%_))))
                                                  (let ((_%hd201550201577%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201549201573%_)))
                                                        (_%tl201551201580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201549201573%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201551201580%_))
                                                        (let ((_%e201552201583%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl201551201580%_))))
                  (let ((_%hd201553201587%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201552201583%_)))
                        (_%tl201554201590%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201552201583%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201554201590%_))
                        (let ((_%e201555201593%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201554201590%_))))
                          (let ((_%hd201556201597%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201555201593%_)))
                                (_%tl201557201600%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201555201593%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201557201600%_))
                                (let ((_%e201558201603%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201557201600%_))))
                                  (let ((_%hd201559201607%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201558201603%_)))
                                        (_%tl201560201610%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201558201603%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201560201610%_))
                                        ((lambda (_%L201613%_
                                                  _%L201615%_
                                                  _%L201616%_
                                                  _%L201617%_)
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
                           (cons _%L201617%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L201616%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L201615%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L201613%_ '()))
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
                                         _%hd201559201607%_
                                         _%hd201556201597%_
                                         _%hd201553201587%_
                                         _%hd201550201577%_)
                                        (_%g201543201566%_
                                         _%g201544201570%_))))
                                (_%g201543201566%_ _%g201544201570%_))))
                        (_%g201543201566%_ _%g201544201570%_))))
                (_%g201543201566%_ _%g201544201570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g201543201566%_
                                                 _%g201544201570%_)))))
                                    (_%g201542201640%_
                                     (list _%args201526%_
                                           _%return201528%_
                                           _%effect201529%_
                                           _%unchecked201530%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx200962%_ _%proc200964%_)
          (let* ((_%__stx203809203810%_ _%sig200965%_)
                 (_%g200976201079%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx203809203810%_)))))
            (let ((_%__kont203812203813%_
                   (lambda (_%L201507%_ _%L201509%_)
                     (_%make-signature200969%_
                      _%L201509%_
                      _%L201507%_
                      '#f
                      '#f)))
                  (_%__kont203814203815%_
                   (lambda (_%L201458%_ _%L201460%_ _%L201461%_)
                     (_%make-signature200969%_
                      _%L201461%_
                      _%L201460%_
                      _%L201458%_
                      '#f)))
                  (_%__kont203816203817%_
                   (lambda (_%L201382%_ _%L201384%_ _%L201385%_)
                     (_%make-signature200969%_
                      _%L201385%_
                      _%L201384%_
                      _%L201382%_
                      (let ((__tmp204170
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc200964%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp204170)))))
                  (_%__kont203818203819%_
                   (lambda (_%L201288%_ _%L201290%_ _%L201291%_ _%L201292%_)
                     (_%make-signature200969%_
                      _%L201292%_
                      _%L201291%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L201288%_)))))
                  (_%__kont203820203821%_
                   (lambda (_%L201195%_ _%L201197%_)
                     (_%make-signature200969%_
                      _%L201197%_
                      _%L201195%_
                      '#f
                      (let ((__tmp204171
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc200964%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp204171)))))
                  (_%__kont203822203823%_
                   (lambda (_%L201130%_ _%L201132%_ _%L201133%_)
                     (_%make-signature200969%_
                      _%L201133%_
                      _%L201132%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L201130%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203809203810%_))
                  (let ((_%e200980201487%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx203809203810%_))))
                    (let ((_%tl200982201494%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200980201487%_)))
                          (_%hd200981201491%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200980201487%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200982201494%_))
                          (let ((_%e200983201497%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200982201494%_))))
                            (let ((_%tl200985201504%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200983201497%_)))
                                  (_%hd200984201501%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200983201497%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200985201504%_))
                                  (_%__kont203812203813%_
                                   _%hd200984201501%_
                                   _%hd200981201491%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200985201504%_))
                                      (let ((_%e200995201434%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200985201504%_))))
                                        (let ((_%tl200997201441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200995201434%_)))
                                              (_%hd200996201438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200995201434%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd200996201438%_))
                                              (let ((_%e200998201444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd200996201438%_))))
                                                (if (equal? _%e200998201444%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200997201441%_))
                                                        (let ((_%e200999201448%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200997201441%_))))
                  (let ((_%tl201001201455%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200999201448%_)))
                        (_%hd201000201452%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200999201448%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl201001201455%_))
                        (_%__kont203814203815%_
                         _%hd201000201452%_
                         _%hd200984201501%_
                         _%hd200981201491%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl201001201455%_))
                            (let ((_%e201018201368%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl201001201455%_))))
                              (let ((_%tl201020201375%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201018201368%_)))
                                    (_%hd201019201372%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201018201368%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd201019201372%_))
                                    (let ((_%e201021201378%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd201019201372%_))))
                                      (if (equal? _%e201021201378%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201020201375%_))
                                              (_%__kont203816203817%_
                                               _%hd201000201452%_
                                               _%hd200984201501%_
                                               _%hd200981201491%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201020201375%_))
                                                  (let ((_%e201043201278%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201020201375%_))))
                                                    (let ((_%tl201045201285%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201043201278%_)))
                                                          (_%hd201044201282%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201043201278%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201045201285%_))
                                                          (_%__kont203818203819%_
                                                           _%hd201044201282%_
                                                           _%hd201000201452%_
                                                           _%hd200984201501%_
                                                           _%hd200981201491%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200976201079%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200976201079%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200976201079%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200976201079%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g200976201079%_))))))
                (let () (declare (not safe)) (_%g200976201079%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e200998201444%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl200997201441%_))
                                                            (_%__kont203820203821%_
                                                             _%hd200984201501%_
                                                             _%hd200981201491%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl200997201441%_))
                        (let ((_%e201071201120%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200997201441%_))))
                          (let ((_%tl201073201127%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201071201120%_)))
                                (_%hd201072201124%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201071201120%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201073201127%_))
                                (_%__kont203822203823%_
                                 _%hd201072201124%_
                                 _%hd200984201501%_
                                 _%hd200981201491%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g200976201079%_)))))
                        (let () (declare (not safe)) (_%g200976201079%_))))
                (let () (declare (not safe)) (_%g200976201079%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200976201079%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200976201079%_))))))
                          (let () (declare (not safe)) (_%g200976201079%_)))))
                  (let () (declare (not safe)) (_%g200976201079%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig200573%_)
        (let* ((_%g200576200656%_
                (lambda (_%g200577200652%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200577200652%_))))
               (_%g200575200958%_
                (lambda (_%g200577200660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200577200660%_))
                      (let ((_%e200583200663%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200577200660%_))))
                        (let ((_%hd200584200667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200583200663%_)))
                              (_%tl200585200670%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200583200663%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200585200670%_))
                              (let ((_%e200586200673%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200585200670%_))))
                                (let ((_%hd200587200677%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200586200673%_)))
                                      (_%tl200588200680%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200586200673%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd200587200677%_))
                                      (let ((_%e200589200683%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd200587200677%_))))
                                        (if (equal? _%e200589200683%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200588200680%_))
                                                (let ((_%e200590200687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl200588200680%_))))
                                                  (let ((_%hd200591200691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200590200687%_)))
                                                        (_%tl200592200694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200590200687%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200591200691%_))
                                                        (let ((_%e200593200697%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200591200691%_))))
                  (let ((_%hd200594200701%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200593200697%_)))
                        (_%tl200595200704%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200593200697%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd200594200701%_))
                        (if (let ((__tmp204172 |gxc[1]#_g204173_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp204172
                               _%hd200594200701%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200595200704%_))
                                (let ((_%e200596200707%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200595200704%_))))
                                  (let ((_%hd200597200711%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200596200707%_)))
                                        (_%tl200598200714%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200596200707%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200598200714%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200592200694%_))
                                            (let ((_%e200599200717%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl200592200694%_))))
                                              (let ((_%hd200600200721%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200599200717%_)))
                                                    (_%tl200601200724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200599200717%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd200600200721%_))
                                                    (let ((_%e200602200727%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd200600200721%_))))
                                                      (if (equal? _%e200602200727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200601200724%_))
                      (let ((_%e200603200731%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200601200724%_))))
                        (let ((_%hd200604200735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200603200731%_)))
                              (_%tl200605200738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200603200731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd200604200735%_))
                              (let ((_%e200606200741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd200604200735%_))))
                                (let ((_%hd200607200745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200606200741%_)))
                                      (_%tl200608200748%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200606200741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200607200745%_))
                                      (if (let ((__tmp204174
                                                 |gxc[1]#_g204175_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp204174
                                             _%hd200607200745%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200608200748%_))
                                              (let ((_%e200609200751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200608200748%_))))
                                                (let ((_%hd200610200755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200609200751%_)))
                                                      (_%tl200611200758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200609200751%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200611200758%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200605200738%_))
                                                          (let ((_%e200612200761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200605200738%_))))
                    (let ((_%hd200613200765%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200612200761%_)))
                          (_%tl200614200768%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200612200761%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd200613200765%_))
                          (let ((_%e200615200771%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200613200765%_))))
                            (if (equal? _%e200615200771%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl200614200768%_))
                                    (let ((_%e200616200775%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl200614200768%_))))
                                      (let ((_%hd200617200779%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200616200775%_)))
                                            (_%tl200618200782%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200616200775%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd200617200779%_))
                                            (let ((_%e200619200785%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd200617200779%_))))
                                              (let ((_%hd200620200789%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200619200785%_)))
                                                    (_%tl200621200792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200619200785%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd200620200789%_))
                                                    (if (let ((__tmp204176
                                                               |gxc[1]#_g204177_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp204176
                                                           _%hd200620200789%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200621200792%_))
                                                            (let ((_%e200622200795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl200621200792%_))))
                      (let ((_%hd200623200799%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200622200795%_)))
                            (_%tl200624200802%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200622200795%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200624200802%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200618200782%_))
                                (let ((_%e200625200805%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200618200782%_))))
                                  (let ((_%hd200626200809%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200625200805%_)))
                                        (_%tl200627200812%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200625200805%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd200626200809%_))
                                        (let ((_%e200628200815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd200626200809%_))))
                                          (if (equal? _%e200628200815%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200627200812%_))
                                                  (let ((_%e200629200819%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200627200812%_))))
                                                    (let ((_%hd200630200823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200629200819%_)))
                                                          (_%tl200631200826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200629200819%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd200630200823%_))
                                                          (let ((_%e200632200829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd200630200823%_))))
                    (let ((_%hd200633200833%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200632200829%_)))
                          (_%tl200634200836%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200632200829%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd200633200833%_))
                          (if (let ((__tmp204178 |gxc[1]#_g204179_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp204178
                                 _%hd200633200833%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200634200836%_))
                                  (let ((_%e200635200839%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl200634200836%_))))
                                    (let ((_%hd200636200843%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200635200839%_)))
                                          (_%tl200637200846%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200635200839%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200637200846%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200631200826%_))
                                              (let ((_%e200638200849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200631200826%_))))
                                                (let ((_%hd200639200853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200638200849%_)))
                                                      (_%tl200640200856%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200638200849%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd200639200853%_))
                                                      (let ((_%e200641200859%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd200639200853%_))))
                (if (equal? _%e200641200859%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200640200856%_))
                        (let ((_%e200642200863%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200640200856%_))))
                          (let ((_%hd200643200867%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200642200863%_)))
                                (_%tl200644200870%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200642200863%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd200643200867%_))
                                (let ((_%e200645200873%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd200643200867%_))))
                                  (let ((_%hd200646200877%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200645200873%_)))
                                        (_%tl200647200880%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200645200873%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200646200877%_))
                                        (if (let ((__tmp204180
                                                   |gxc[1]#_g204181_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp204180
                                               _%hd200646200877%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200647200880%_))
                                                (let ((_%e200648200883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl200647200880%_))))
                                                  (let ((_%hd200649200887%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200648200883%_)))
                                                        (_%tl200650200890%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200648200883%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200650200890%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl200644200870%_))
                                                            ((lambda (_%L200893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L200895%_
                              _%L200896%_
                              _%L200897%_
                              _%L200898%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L200895%_))
                           (cons _%L200895%_
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
                       (cons _%L200897%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L200893%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd200649200887%_
                     _%hd200636200843%_
                     _%hd200623200799%_
                     _%hd200610200755%_
                     _%hd200597200711%_)
                    (_%g200576200656%_ _%g200577200660%_))
                (_%g200576200656%_ _%g200577200660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200576200656%_
                                                 _%g200577200660%_))
                                            (_%g200576200656%_
                                             _%g200577200660%_))
                                        (_%g200576200656%_
                                         _%g200577200660%_))))
                                (_%g200576200656%_ _%g200577200660%_))))
                        (_%g200576200656%_ _%g200577200660%_))
                    (_%g200576200656%_ _%g200577200660%_)))
              (_%g200576200656%_ _%g200577200660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200576200656%_
                                               _%g200577200660%_))
                                          (_%g200576200656%_
                                           _%g200577200660%_))))
                                  (_%g200576200656%_ _%g200577200660%_))
                              (_%g200576200656%_ _%g200577200660%_))
                          (_%g200576200656%_ _%g200577200660%_))))
                  (_%g200576200656%_ _%g200577200660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g200576200656%_
                                                   _%g200577200660%_))
                                              (_%g200576200656%_
                                               _%g200577200660%_)))
                                        (_%g200576200656%_
                                         _%g200577200660%_))))
                                (_%g200576200656%_ _%g200577200660%_))
                            (_%g200576200656%_ _%g200577200660%_))))
                    (_%g200576200656%_ _%g200577200660%_))
                (_%g200576200656%_ _%g200577200660%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g200576200656%_
                                                     _%g200577200660%_))))
                                            (_%g200576200656%_
                                             _%g200577200660%_))))
                                    (_%g200576200656%_ _%g200577200660%_))
                                (_%g200576200656%_ _%g200577200660%_)))
                          (_%g200576200656%_ _%g200577200660%_))))
                  (_%g200576200656%_ _%g200577200660%_))
              (_%g200576200656%_ _%g200577200660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200576200656%_
                                               _%g200577200660%_))
                                          (_%g200576200656%_
                                           _%g200577200660%_))
                                      (_%g200576200656%_ _%g200577200660%_))))
                              (_%g200576200656%_ _%g200577200660%_))))
                      (_%g200576200656%_ _%g200577200660%_))
                  (_%g200576200656%_ _%g200577200660%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g200576200656%_
                                                     _%g200577200660%_))))
                                            (_%g200576200656%_
                                             _%g200577200660%_))
                                        (_%g200576200656%_
                                         _%g200577200660%_))))
                                (_%g200576200656%_ _%g200577200660%_))
                            (_%g200576200656%_ _%g200577200660%_))
                        (_%g200576200656%_ _%g200577200660%_))))
                (_%g200576200656%_ _%g200577200660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200576200656%_
                                                 _%g200577200660%_))
                                            (_%g200576200656%_
                                             _%g200577200660%_)))
                                      (_%g200576200656%_ _%g200577200660%_))))
                              (_%g200576200656%_ _%g200577200660%_))))
                      (_%g200576200656%_ _%g200577200660%_)))))
          (_%g200575200958%_ _%sig200573%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx201730%_)
        (let* ((_%g201733201751%_
                (lambda (_%g201734201747%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201734201747%_))))
               (_%g201732201806%_
                (lambda (_%g201734201755%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201734201755%_))
                      (let ((_%e201737201758%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201734201755%_))))
                        (let ((_%hd201738201762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201737201758%_)))
                              (_%tl201739201765%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201737201758%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201739201765%_))
                              (let ((_%e201740201768%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201739201765%_))))
                                (let ((_%hd201741201772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201740201768%_)))
                                      (_%tl201742201775%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201740201768%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201742201775%_))
                                      (let ((_%e201743201778%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201742201775%_))))
                                        (let ((_%hd201744201782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201743201778%_)))
                                              (_%tl201745201785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201743201778%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201745201785%_))
                                              ((lambda (_%L201788%_
                                                        _%L201790%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L201790%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L201788%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx201730%_
                                                        _%L201790%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx201730%_
                                                        _%L201788%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L201790%_
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
                                                   (cons _%L201788%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201733201751%_
                                                      _%g201734201755%_)))
                                               _%hd201744201782%_
                                               _%hd201741201772%_)
                                              (_%g201733201751%_
                                               _%g201734201755%_))))
                                      (_%g201733201751%_ _%g201734201755%_))))
                              (_%g201733201751%_ _%g201734201755%_))))
                      (_%g201733201751%_ _%g201734201755%_)))))
          (_%g201732201806%_ _%stx201730%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx201810%_)
        (let* ((_%g201813201837%_
                (lambda (_%g201814201833%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201814201833%_))))
               (_%g201812202120%_
                (lambda (_%g201814201841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201814201841%_))
                      (let ((_%e201817201844%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201814201841%_))))
                        (let ((_%hd201818201848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201817201844%_)))
                              (_%tl201819201851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201817201844%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201819201851%_))
                              (let ((_%e201820201854%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201819201851%_))))
                                (let ((_%hd201821201858%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201820201854%_)))
                                      (_%tl201822201861%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201820201854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl201822201861%_))
                                      (let ((_g204182_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl201822201861%_
                                                '0))))
                                        (begin
                                          (let ((_g204183_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204182_)
                                                       (##vector-length
                                                        _g204182_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204183_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204183_)))
                                          (let ((_%target201823201864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g204182_ 0)))
                                                (_%tl201825201867%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g204182_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201825201867%_))
                                                (letrec ((_%loop201826201870%_
                                                          (lambda (_%hd201824201874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature201830201877%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201824201874%_))
                        (let ((_%e201827201880%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd201824201874%_))))
                          (let ((_%lp-hd201828201884%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201827201880%_)))
                                (_%lp-tl201829201887%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201827201880%_))))
                            (_%loop201826201870%_
                             _%lp-tl201829201887%_
                             (cons _%lp-hd201828201884%_
                                   _%signature201830201877%_))))
                        (let ((_%signature201831201890%_
                               (reverse _%signature201830201877%_)))
                          ((lambda (_%L201894%_ _%L201896%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L201896%_))
                                 (let* ((_%g201914201929%_
                                         (lambda (_%g201915201925%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g201915201925%_))))
                                        (_%g201913202108%_
                                         (lambda (_%g201915201933%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g201915201933%_))
                                               (let ((_%e201918201936%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g201915201933%_))))
                                                 (let ((_%hd201919201940%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e201918201936%_)))
                                                       (_%tl201920201943%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e201918201936%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201920201943%_))
                                                       (let ((_%e201921201946%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201920201943%_))))
                 (let ((_%hd201922201950%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201921201946%_)))
                       (_%tl201923201953%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201921201946%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl201923201953%_))
                       ((lambda (_%L201956%_ _%L201958%_)
                          (let* ((_%g201974201982%_
                                  (lambda (_%g201975201978%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g201975201978%_))))
                                 (_%g201973202104%_
                                  (lambda (_%g201975201986%_)
                                    ((lambda (_%L201989%_)
                                       (let* ((_%unchecked202002%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L201956%_))
                                              (_%g202005202013%_
                                               (lambda (_%g202006202009%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g202006202009%_))))
                                              (_%g202004202036%_
                                               (lambda (_%g202006202017%_)
                                                 ((lambda (_%L202020%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L201989%_
                                                                (cons _%L202020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g202006202017%_))))
                                         (_%g202004202036%_
                                          (if _%unchecked202002%_
                                              (let* ((_%g202040202055%_
                                                      (lambda (_%g202041202051%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g202041202051%_))))
                                                     (_%g202039202100%_
                                                      (lambda (_%g202041202059%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g202041202059%_))
                                                            (let ((_%e202044202062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g202041202059%_))))
                      (let ((_%hd202045202066%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202044202062%_)))
                            (_%tl202046202069%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202044202062%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl202046202069%_))
                            (let ((_%e202047202072%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl202046202069%_))))
                              (let ((_%hd202048202076%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202047202072%_)))
                                    (_%tl202049202079%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202047202072%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202049202079%_))
                                    ((lambda (_%L202082%_ _%L202084%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L202084%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L201958%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L202082%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd202048202076%_
                                     _%hd202045202066%_)
                                    (_%g202040202055%_ _%g202041202059%_))))
                            (_%g202040202055%_ _%g202041202059%_))))
                    (_%g202040202055%_ _%g202041202059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g202039202100%_
                                                 _%unchecked202002%_))
                                              '(begin)))))
                                     _%g201975201986%_))))
                            (_%g201973202104%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L201896%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L201958%_ '()))
                   (cons '#f (cons 'signature: (cons _%L201956%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd201922201950%_
                        _%hd201919201940%_)
                       (_%g201914201929%_ _%g201915201933%_))))
               (_%g201914201929%_ _%g201915201933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201914201929%_
                                                _%g201915201933%_)))))
                                   (_%g201913202108%_
                                    (|gxc[1]#parse-signature|
                                     _%stx201810%_
                                     _%L201896%_
                                     (let ((__tmp204184
                                            (lambda (_%g202111202114%_
                                                     _%g202112202117%_)
                                              (cons _%g202111202114%_
                                                    _%g202112202117%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp204184
                                        '()
                                        _%L201894%_)))))
                                 (_%g201813201837%_ _%g201814201841%_)))
                           _%signature201831201890%_
                           _%hd201821201858%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201826201870%_
                                                   _%target201823201864%_
                                                   '()))
                                                (_%g201813201837%_
                                                 _%g201814201841%_)))))
                                      (_%g201813201837%_ _%g201814201841%_))))
                              (_%g201813201837%_ _%g201814201841%_))))
                      (_%g201813201837%_ _%g201814201841%_)))))
          (_%g201812202120%_ _%stx201810%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx202125%_)
        (let* ((_%g202128202152%_
                (lambda (_%g202129202148%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202129202148%_))))
               (_%g202127203035%_
                (lambda (_%g202129202156%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202129202156%_))
                      (let ((_%e202132202159%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202129202156%_))))
                        (let ((_%hd202133202163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202132202159%_)))
                              (_%tl202134202166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202132202159%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202134202166%_))
                              (let ((_%e202135202169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202134202166%_))))
                                (let ((_%hd202136202173%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202135202169%_)))
                                      (_%tl202137202176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202135202169%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl202137202176%_))
                                      (let ((_g204185_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl202137202176%_
                                                '0))))
                                        (begin
                                          (let ((_g204186_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204185_)
                                                       (##vector-length
                                                        _g204185_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204186_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204186_)))
                                          (let ((_%target202138202179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g204185_ 0)))
                                                (_%tl202140202182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g204185_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202140202182%_))
                                                (letrec ((_%loop202141202185%_
                                                          (lambda (_%hd202139202189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature202145202192%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202139202189%_))
                        (let ((_%e202142202195%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd202139202189%_))))
                          (let ((_%lp-hd202143202199%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202142202195%_)))
                                (_%lp-tl202144202202%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202142202195%_))))
                            (_%loop202141202185%_
                             _%lp-tl202144202202%_
                             (cons _%lp-hd202143202199%_
                                   _%case-signature202145202192%_))))
                        (let ((_%case-signature202146202205%_
                               (reverse _%case-signature202145202192%_)))
                          ((lambda (_%L202209%_ _%L202211%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L202211%_))
                                 (let* ((_%signatures202242%_
                                         (map (lambda (_%g202228202230%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx202125%_
                                                 _%L202211%_
                                                 _%g202228202230%_))
                                              (let ((__tmp204187
                                                     (lambda (_%g202233202236%_
                                                              _%g202234202239%_)
                                                       (cons _%g202233202236%_
                                                             _%g202234202239%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp204187
                                                 '()
                                                 _%L202209%_))))
                                        (_%g202245202271%_
                                         (lambda (_%g202246202267%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g202246202267%_))))
                                        (_%g202244203031%_
                                         (lambda (_%g202246202275%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g202246202275%_))
                                               (let ((_g204188_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g202246202275%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g204189_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g204188_)
                        (##vector-length _g204188_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g204189_ 2)))
                 (error "Context expects 2 values" _g204189_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target202249202278%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g204188_
                                                             0)))
                                                         (_%tl202251202281%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g204188_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl202251202281%_))
                                                         (letrec ((_%loop202252202284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd202250202288%_
                                    _%sig202256202291%_
                                    _%arity202257202293%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd202250202288%_))
                                 (let ((_%e202253202296%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd202250202288%_))))
                                   (let ((_%lp-hd202254202300%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e202253202296%_)))
                                         (_%lp-tl202255202303%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e202253202296%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd202254202300%_))
                                         (let ((_%e202260202306%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd202254202300%_))))
                                           (let ((_%hd202261202310%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e202260202306%_)))
                                                 (_%tl202262202313%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e202260202306%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl202262202313%_))
                                                 (let ((_%e202263202316%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl202262202313%_))))
                                                   (let ((_%hd202264202320%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e202263202316%_)))
                                                         (_%tl202265202323%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e202263202316%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl202265202323%_))
                                                         (_%loop202252202284%_
                                                          _%lp-tl202255202303%_
                                                          (cons _%hd202264202320%_
                                                                _%sig202256202291%_)
                                                          (cons _%hd202261202310%_
                                                                _%arity202257202293%_))
                                                         (_%g202245202271%_
                                                          _%g202246202275%_))))
                                                 (_%g202245202271%_
                                                  _%g202246202275%_))))
                                         (_%g202245202271%_
                                          _%g202246202275%_))))
                                 (let ((_%sig202258202326%_
                                        (reverse _%sig202256202291%_))
                                       (_%arity202259202329%_
                                        (reverse _%arity202257202293%_)))
                                   ((lambda (_%L202332%_ _%L202334%_)
                                      (let* ((_%g202351202359%_
                                              (lambda (_%g202352202355%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g202352202355%_))))
                                             (_%g202350203016%_
                                              (lambda (_%g202352202363%_)
                                                ((lambda (_%L202366%_)
                                                   (let* ((_%g202379202387%_
                                                           (lambda (_%g202380202383%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g202380202383%_))))
                  (_%g202378202409%_
                   (lambda (_%g202380202391%_)
                     ((lambda (_%L202394%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L202366%_ (cons _%L202394%_ '()))))
                      _%g202380202391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202378202409%_
                                                      (let ((_g204190_
                                                             (let _%loop202413%_ ((_%rest202416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures202242%_)
                                          (_%unchecked-proc202418%_ '#f)
                                          (_%unchecked-clauses202419%_ '()))
                       (let* ((_%rest202420202428%_ _%rest202416%_)
                              (_%else202422202440%_
                               (lambda ()
                                 (values _%unchecked-proc202418%_
                                         (reverse!
                                          _%unchecked-clauses202419%_))))
                              (_%K202424202881%_
                               (lambda (_%rest202444%_ _%hd202446%_)
                                 (let* ((_%g202448202535%_
                                         (lambda (_%g202449202531%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g202449202531%_))))
                                        (_%g202447202877%_
                                         (lambda (_%g202449202539%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g202449202539%_))
                                               (let ((_%e202456202542%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g202449202539%_))))
                                                 (let ((_%hd202457202546%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e202456202542%_)))
                                                       (_%tl202458202549%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e202456202542%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl202458202549%_))
                                                       (let ((_%e202459202552%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl202458202549%_))))
                 (let ((_%hd202460202556%_
                        (let ()
                          (declare (not safe))
                          (##car _%e202459202552%_)))
                       (_%tl202461202559%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e202459202552%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd202460202556%_))
                       (let ((_%e202462202562%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd202460202556%_))))
                         (let ((_%hd202463202566%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e202462202562%_)))
                               (_%tl202464202569%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e202462202562%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl202464202569%_))
                               (let ((_%e202465202572%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl202464202569%_))))
                                 (let ((_%hd202466202576%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e202465202572%_)))
                                       (_%tl202467202579%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e202465202572%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd202466202576%_))
                                       (let ((_%e202468202582%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd202466202576%_))))
                                         (if (equal? _%e202468202582%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl202467202579%_))
                                                 (let ((_%e202469202586%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl202467202579%_))))
                                                   (let ((_%hd202470202590%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e202469202586%_)))
                                                         (_%tl202471202593%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e202469202586%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd202470202590%_))
                                                         (let ((_%e202472202596%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd202470202590%_))))
                   (let ((_%hd202473202600%_
                          (let ()
                            (declare (not safe))
                            (##car _%e202472202596%_)))
                         (_%tl202474202603%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e202472202596%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd202473202600%_))
                         (if (let ((__tmp204192 |gxc[1]#_g204193_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp204192
                                _%hd202473202600%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl202474202603%_))
                                 (let ((_%e202475202606%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl202474202603%_))))
                                   (let ((_%hd202476202610%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e202475202606%_)))
                                         (_%tl202477202613%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e202475202606%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl202477202613%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl202471202593%_))
                                             (let ((_%e202478202616%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl202471202593%_))))
                                               (let ((_%hd202479202620%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e202478202616%_)))
                                                     (_%tl202480202623%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e202478202616%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd202479202620%_))
                                                     (let ((_%e202481202626%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd202479202620%_))))
                                                       (if (equal? _%e202481202626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl202480202623%_))
                       (let ((_%e202482202630%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl202480202623%_))))
                         (let ((_%hd202483202634%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e202482202630%_)))
                               (_%tl202484202637%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e202482202630%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd202483202634%_))
                               (let ((_%e202485202640%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd202483202634%_))))
                                 (let ((_%hd202486202644%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e202485202640%_)))
                                       (_%tl202487202647%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e202485202640%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd202486202644%_))
                                       (if (let ((__tmp204194
                                                  |gxc[1]#_g204195_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp204194
                                              _%hd202486202644%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl202487202647%_))
                                               (let ((_%e202488202650%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl202487202647%_))))
                                                 (let ((_%hd202489202654%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e202488202650%_)))
                                                       (_%tl202490202657%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e202488202650%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl202490202657%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl202484202637%_))
                                                           (let ((_%e202491202660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl202484202637%_))))
                     (let ((_%hd202492202664%_
                            (let ()
                              (declare (not safe))
                              (##car _%e202491202660%_)))
                           (_%tl202493202667%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e202491202660%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd202492202664%_))
                           (let ((_%e202494202670%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd202492202664%_))))
                             (if (equal? _%e202494202670%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl202493202667%_))
                                     (let ((_%e202495202674%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl202493202667%_))))
                                       (let ((_%hd202496202678%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e202495202674%_)))
                                             (_%tl202497202681%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e202495202674%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd202496202678%_))
                                             (let ((_%e202498202684%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd202496202678%_))))
                                               (let ((_%hd202499202688%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e202498202684%_)))
                                                     (_%tl202500202691%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e202498202684%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd202499202688%_))
                                                     (if (let ((__tmp204196
                                                                |gxc[1]#_g204197_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp204196
                                                            _%hd202499202688%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl202500202691%_))
                     (let ((_%e202501202694%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl202500202691%_))))
                       (let ((_%hd202502202698%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202501202694%_)))
                             (_%tl202503202701%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202501202694%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202503202701%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl202497202681%_))
                                 (let ((_%e202504202704%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl202497202681%_))))
                                   (let ((_%hd202505202708%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e202504202704%_)))
                                         (_%tl202506202711%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e202504202704%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd202505202708%_))
                                         (let ((_%e202507202714%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd202505202708%_))))
                                           (if (equal? _%e202507202714%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl202506202711%_))
                                                   (let ((_%e202508202718%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl202506202711%_))))
                                                     (let ((_%hd202509202722%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e202508202718%_)))
                                                           (_%tl202510202725%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e202508202718%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd202509202722%_))
                                                           (let ((_%e202511202728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd202509202722%_))))
                     (let ((_%hd202512202732%_
                            (let ()
                              (declare (not safe))
                              (##car _%e202511202728%_)))
                           (_%tl202513202735%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e202511202728%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd202512202732%_))
                           (if (let ((__tmp204198 |gxc[1]#_g204199_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp204198
                                  _%hd202512202732%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl202513202735%_))
                                   (let ((_%e202514202738%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl202513202735%_))))
                                     (let ((_%hd202515202742%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e202514202738%_)))
                                           (_%tl202516202745%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e202514202738%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl202516202745%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl202510202725%_))
                                               (let ((_%e202517202748%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl202510202725%_))))
                                                 (let ((_%hd202518202752%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e202517202748%_)))
                                                       (_%tl202519202755%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e202517202748%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd202518202752%_))
                                                       (let ((_%e202520202758%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd202518202752%_))))
                 (if (equal? _%e202520202758%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl202519202755%_))
                         (let ((_%e202521202762%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl202519202755%_))))
                           (let ((_%hd202522202766%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e202521202762%_)))
                                 (_%tl202523202769%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e202521202762%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd202522202766%_))
                                 (let ((_%e202524202772%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd202522202766%_))))
                                   (let ((_%hd202525202776%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e202524202772%_)))
                                         (_%tl202526202779%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e202524202772%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd202525202776%_))
                                         (if (let ((__tmp204200
                                                    |gxc[1]#_g204201_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp204200
                                                _%hd202525202776%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl202526202779%_))
                                                 (let ((_%e202527202782%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl202526202779%_))))
                                                   (let ((_%hd202528202786%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e202527202782%_)))
                                                         (_%tl202529202789%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e202527202782%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl202529202789%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl202523202769%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl202461202559%_))
                         ((lambda (_%L202792%_
                                   _%L202794%_
                                   _%L202795%_
                                   _%L202796%_
                                   _%L202797%_
                                   _%L202798%_)
                            (let ((_%clause202869%_
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
                                                     (cons _%L202798%_ '()))
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
                                                 (cons _%L202796%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L202792%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked202871%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L202794%_))))
                              (_%loop202413%_
                               _%rest202444%_
                               (let ((_%$e202873%_ _%unchecked202871%_))
                                 (if _%$e202873%_
                                     _%$e202873%_
                                     _%unchecked-proc202418%_))
                               (cons _%clause202869%_
                                     _%unchecked-clauses202419%_))))
                          _%hd202528202786%_
                          _%hd202515202742%_
                          _%hd202502202698%_
                          _%hd202489202654%_
                          _%hd202476202610%_
                          _%hd202457202546%_)
                         (_%g202448202535%_ _%g202449202539%_))
                     (_%g202448202535%_ _%g202449202539%_))
                 (_%g202448202535%_ _%g202449202539%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g202448202535%_
                                                  _%g202449202539%_))
                                             (_%g202448202535%_
                                              _%g202449202539%_))
                                         (_%g202448202535%_
                                          _%g202449202539%_))))
                                 (_%g202448202535%_ _%g202449202539%_))))
                         (_%g202448202535%_ _%g202449202539%_))
                     (_%g202448202535%_ _%g202449202539%_)))
               (_%g202448202535%_ _%g202449202539%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g202448202535%_
                                                _%g202449202539%_))
                                           (_%g202448202535%_
                                            _%g202449202539%_))))
                                   (_%g202448202535%_ _%g202449202539%_))
                               (_%g202448202535%_ _%g202449202539%_))
                           (_%g202448202535%_ _%g202449202539%_))))
                   (_%g202448202535%_ _%g202449202539%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g202448202535%_
                                                    _%g202449202539%_))
                                               (_%g202448202535%_
                                                _%g202449202539%_)))
                                         (_%g202448202535%_
                                          _%g202449202539%_))))
                                 (_%g202448202535%_ _%g202449202539%_))
                             (_%g202448202535%_ _%g202449202539%_))))
                     (_%g202448202535%_ _%g202449202539%_))
                 (_%g202448202535%_ _%g202449202539%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202448202535%_
                                                      _%g202449202539%_))))
                                             (_%g202448202535%_
                                              _%g202449202539%_))))
                                     (_%g202448202535%_ _%g202449202539%_))
                                 (_%g202448202535%_ _%g202449202539%_)))
                           (_%g202448202535%_ _%g202449202539%_))))
                   (_%g202448202535%_ _%g202449202539%_))
               (_%g202448202535%_ _%g202449202539%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g202448202535%_
                                                _%g202449202539%_))
                                           (_%g202448202535%_
                                            _%g202449202539%_))
                                       (_%g202448202535%_ _%g202449202539%_))))
                               (_%g202448202535%_ _%g202449202539%_))))
                       (_%g202448202535%_ _%g202449202539%_))
                   (_%g202448202535%_ _%g202449202539%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202448202535%_
                                                      _%g202449202539%_))))
                                             (_%g202448202535%_
                                              _%g202449202539%_))
                                         (_%g202448202535%_
                                          _%g202449202539%_))))
                                 (_%g202448202535%_ _%g202449202539%_))
                             (_%g202448202535%_ _%g202449202539%_))
                         (_%g202448202535%_ _%g202449202539%_))))
                 (_%g202448202535%_ _%g202449202539%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g202448202535%_
                                                  _%g202449202539%_))
                                             (_%g202448202535%_
                                              _%g202449202539%_)))
                                       (_%g202448202535%_ _%g202449202539%_))))
                               (_%g202448202535%_ _%g202449202539%_))))
                       (_%g202448202535%_ _%g202449202539%_))))
               (_%g202448202535%_ _%g202449202539%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g202448202535%_
                                                _%g202449202539%_)))))
                                   (_%g202447202877%_ _%hd202446%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest202420202428%_))
                             (let ((_%hd202425202885%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest202420202428%_)))
                                   (_%tl202426202888%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest202420202428%_))))
                               (let* ((_%hd202891%_ _%hd202425202885%_)
                                      (_%rest202894%_ _%tl202426202888%_))
                                 (_%K202424202881%_
                                  _%rest202894%_
                                  _%hd202891%_)))
                             (_%else202422202440%_))))))
                (begin
                  (let ((_g204191_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g204190_)
                               (##vector-length _g204190_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g204191_ 2)))
                        (error "Context expects 2 values" _g204191_)))
                  (let ((_%unchecked-proc202897%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g204190_ 0)))
                        (_%unchecked-clauses202899%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g204190_ 1))))
                    (if _%unchecked-proc202897%_
                        (let* ((_%g202901202925%_
                                (lambda (_%g202902202921%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g202902202921%_))))
                               (_%g202900203012%_
                                (lambda (_%g202902202929%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g202902202929%_))
                                      (let ((_%e202905202932%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g202902202929%_))))
                                        (let ((_%hd202906202936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202905202932%_)))
                                              (_%tl202907202939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202905202932%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202907202939%_))
                                              (let ((_%e202908202942%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202907202939%_))))
                                                (let ((_%hd202909202946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202908202942%_)))
                                                      (_%tl202910202949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202908202942%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd202909202946%_))
                                                      (let ((_g204202_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd202909202946%_ '0))))
                (begin
                  (let ((_g204203_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g204202_)
                               (##vector-length _g204202_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g204203_ 2)))
                        (error "Context expects 2 values" _g204203_)))
                  (let ((_%target202911202952%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g204202_ 0)))
                        (_%tl202913202955%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g204202_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl202913202955%_))
                        (letrec ((_%loop202914202958%_
                                  (lambda (_%hd202912202962%_
                                           _%clause202918202965%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd202912202962%_))
                                        (let ((_%e202915202968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd202912202962%_))))
                                          (let ((_%lp-hd202916202972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202915202968%_)))
                                                (_%lp-tl202917202975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202915202968%_))))
                                            (_%loop202914202958%_
                                             _%lp-tl202917202975%_
                                             (cons _%lp-hd202916202972%_
                                                   _%clause202918202965%_))))
                                        (let ((_%clause202919202978%_
                                               (reverse _%clause202918202965%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202910202949%_))
                                              ((lambda (_%L202982%_
                                                        _%L202984%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L202984%_
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
                                             (let ((__tmp204204
                                                    (lambda (_%g203003203006%_
                                                             _%g203004203009%_)
                                                      (cons _%g203003203006%_
                                                            _%g203004203009%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp204204
                                                '()
                                                _%L202982%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause202919202978%_
                                               _%hd202906202936%_)
                                              (_%g202901202925%_
                                               _%g202902202929%_)))))))
                          (_%loop202914202958%_ _%target202911202952%_ '()))
                        (_%g202901202925%_ _%g202902202929%_)))))
              (_%g202901202925%_ _%g202902202929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202901202925%_
                                               _%g202902202929%_))))
                                      (_%g202901202925%_ _%g202902202929%_)))))
                          (_%g202900203012%_
                           (list _%unchecked-proc202897%_
                                 _%unchecked-clauses202899%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g202352202363%_))))
                                        (_%g202350203016%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L202211%_
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
                                          _%L202332%_
                                          _%L202334%_))
                                       (let ((__tmp204205
                                              (lambda (_%g203019203023%_
                                                       _%g203020203026%_
                                                       _%g203021203028%_)
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
                                (cons _%g203020203026%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g203019203023%_ '())))))
              _%g203021203028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp204205
                                          '()
                                          _%L202332%_
                                          _%L202334%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig202258202326%_
                                    _%arity202259202329%_))))))
                   (_%loop202252202284%_ _%target202249202278%_ '() '()))
                 (_%g202245202271%_ _%g202246202275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g202245202271%_
                                                _%g202246202275%_)))))
                                   (_%g202244203031%_ _%signatures202242%_))
                                 (_%g202128202152%_ _%g202129202156%_)))
                           _%case-signature202146202205%_
                           _%hd202136202173%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop202141202185%_
                                                   _%target202138202179%_
                                                   '()))
                                                (_%g202128202152%_
                                                 _%g202129202156%_)))))
                                      (_%g202128202152%_ _%g202129202156%_))))
                              (_%g202128202152%_ _%g202129202156%_))))
                      (_%g202128202152%_ _%g202129202156%_)))))
          (_%g202127203035%_ _%stx202125%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx203043%_)
        (let* ((_%__stx204025204026%_ _%$stx203043%_)
               (_%g203049203109%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204025204026%_)))))
          (let ((_%__kont204028204029%_
                 (lambda (_%L203331%_ _%L203333%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203333%_ '()))
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
                                                       (cons _%L203333%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L203331%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont204030204031%_
                 (lambda (_%L203256%_ _%L203258%_ _%L203259%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203259%_ '()))
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
                                                       (cons _%L203259%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L203258%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203256%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont204032204033%_
                 (lambda (_%L203170%_ _%L203172%_ _%L203173%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203173%_ '()))
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
                                                       (cons _%L203173%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L203172%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203170%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx204025204026%_))
                (let ((_%e203053203287%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx204025204026%_))))
                  (let ((_%tl203055203294%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203053203287%_)))
                        (_%hd203054203291%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203053203287%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl203055203294%_))
                        (let ((_%e203056203297%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl203055203294%_))))
                          (let ((_%tl203058203304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203056203297%_)))
                                (_%hd203057203301%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203056203297%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd203057203301%_))
                                (let ((_%e203059203307%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd203057203301%_))))
                                  (if (equal? _%e203059203307%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203058203304%_))
                                          (let ((_%e203060203311%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl203058203304%_))))
                                            (let ((_%tl203062203318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203060203311%_)))
                                                  (_%hd203061203315%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203060203311%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203062203318%_))
                                                  (let ((_%e203063203321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203062203318%_))))
                                                    (let ((_%tl203065203328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203063203321%_)))
                                                          (_%hd203064203325%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203063203321%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203065203328%_))
                                                          (_%__kont204028204029%_
                                                           _%hd203064203325%_
                                                           _%hd203061203315%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g203049203109%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203049203109%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203049203109%_)))
                                      (if (equal? _%e203059203307%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203058203304%_))
                                              (let ((_%e203076203226%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203058203304%_))))
                                                (let ((_%tl203078203233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203076203226%_)))
                                                      (_%hd203077203230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203076203226%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl203078203233%_))
                                                      (let ((_%e203079203236%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl203078203233%_))))
                (let ((_%tl203081203243%_
                       (let () (declare (not safe)) (##cdr _%e203079203236%_)))
                      (_%hd203080203240%_
                       (let ()
                         (declare (not safe))
                         (##car _%e203079203236%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203081203243%_))
                      (let ((_%e203082203246%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203081203243%_))))
                        (let ((_%tl203084203253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203082203246%_)))
                              (_%hd203083203250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203082203246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203084203253%_))
                              (_%__kont204030204031%_
                               _%hd203083203250%_
                               _%hd203080203240%_
                               _%hd203077203230%_)
                              (let ()
                                (declare (not safe))
                                (_%g203049203109%_)))))
                      (let () (declare (not safe)) (_%g203049203109%_)))))
              (let () (declare (not safe)) (_%g203049203109%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g203049203109%_)))
                                          (if (equal? _%e203059203307%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203058203304%_))
                                                  (let ((_%e203095203140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203058203304%_))))
                                                    (let ((_%tl203097203147%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203095203140%_)))
                                                          (_%hd203096203144%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203095203140%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl203097203147%_))
                                                          (let ((_%e203098203150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl203097203147%_))))
                    (let ((_%tl203100203157%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203098203150%_)))
                          (_%hd203099203154%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203098203150%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203100203157%_))
                          (let ((_%e203101203160%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203100203157%_))))
                            (let ((_%tl203103203167%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203101203160%_)))
                                  (_%hd203102203164%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203101203160%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203103203167%_))
                                  (_%__kont204032204033%_
                                   _%hd203102203164%_
                                   _%hd203099203154%_
                                   _%hd203096203144%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g203049203109%_)))))
                          (let () (declare (not safe)) (_%g203049203109%_)))))
                  (let () (declare (not safe)) (_%g203049203109%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203049203109%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203049203109%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g203049203109%_)))))
                        (let () (declare (not safe)) (_%g203049203109%_)))))
                (let () (declare (not safe)) (_%g203049203109%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx203355%_)
        (let* ((_%g203359203379%_
                (lambda (_%g203360203375%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203360203375%_))))
               (_%g203358203450%_
                (lambda (_%g203360203383%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203360203383%_))
                      (let ((_%e203362203386%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203360203383%_))))
                        (let ((_%hd203363203390%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203362203386%_)))
                              (_%tl203364203393%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203362203386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203364203393%_))
                              (let ((_g204206_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203364203393%_
                                        '0))))
                                (begin
                                  (let ((_g204207_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204206_)
                                               (##vector-length _g204206_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204207_ 2)))
                                        (error "Context expects 2 values"
                                               _g204207_)))
                                  (let ((_%target203365203396%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204206_ 0)))
                                        (_%tl203367203399%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204206_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203367203399%_))
                                        (letrec ((_%loop203368203402%_
                                                  (lambda (_%hd203366203406%_
                                                           _%decl203372203409%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203366203406%_))
                                                        (let ((_%e203369203412%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203366203406%_))))
                  (let ((_%lp-hd203370203416%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203369203412%_)))
                        (_%lp-tl203371203419%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203369203412%_))))
                    (_%loop203368203402%_
                     _%lp-tl203371203419%_
                     (cons _%lp-hd203370203416%_ _%decl203372203409%_))))
                (let ((_%decl203373203422%_ (reverse _%decl203372203409%_)))
                  ((lambda (_%L203426%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp204208
                                  (lambda (_%g203441203444%_ _%g203442203447%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g203441203444%_)
                                          _%g203442203447%_))))
                             (declare (not safe))
                             (__foldr1 __tmp204208 '() _%L203426%_))))
                   _%decl203373203422%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203368203402%_
                                           _%target203365203396%_
                                           '()))
                                        (_%g203359203379%_
                                         _%g203360203383%_)))))
                              (_%g203359203379%_ _%g203360203383%_))))
                      (_%g203359203379%_ _%g203360203383%_)))))
          (_%g203358203450%_ _%$stx203355%_))))))
