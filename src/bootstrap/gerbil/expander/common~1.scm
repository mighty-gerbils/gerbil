(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g115624_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115626_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115628_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115630_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115631_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115633_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115634_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115636_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115637_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115639_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115640_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g115642_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj115620
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
          (##unchecked-structure-set! __obj115620 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 '#f '11 '#f '#f))
        (let ((__tmp115623 |gx[1]#_g115624_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 __tmp115623 '12 '#f '#f))
        (let ((__tmp115625 |gx[1]#_g115626_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 __tmp115625 '13 '#f '#f))
        (let ((__tmp115627 |gx[1]#_g115628_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 __tmp115627 '14 '#f '#f))
        (let ((__tmp115629
               (cons (cons 'e |gx[1]#_g115630_|)
                     (cons (cons 'source |gx[1]#_g115631_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 __tmp115629 '15 '#f '#f))
        (let ((__tmp115632
               (cons (cons 'e |gx[1]#_g115633_|)
                     (cons (cons 'source |gx[1]#_g115634_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 __tmp115632 '16 '#f '#f))
        (let ((__tmp115635
               (cons (cons 'e |gx[1]#_g115636_|)
                     (cons (cons 'source |gx[1]#_g115637_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 __tmp115635 '17 '#f '#f))
        (let ((__tmp115638
               (cons (cons 'e |gx[1]#_g115639_|)
                     (cons (cons 'source |gx[1]#_g115640_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 __tmp115638 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj115620 '() '20 '#f '#f))
        __obj115620))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx114215%_)
        (let* ((_%g114219114233%_
                (lambda (_%g114220114229%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g114220114229%_)))
               (_%g114218114275%_
                (lambda (_%g114220114237%_)
                  (if (gx#stx-pair? _%g114220114237%_)
                      (let ((_%e114222114240%_
                             (gx#syntax-e _%g114220114237%_)))
                        (let ((_%hd114223114244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e114222114240%_)))
                              (_%tl114224114247%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e114222114240%_))))
                          (if (gx#stx-pair? _%tl114224114247%_)
                              (let ((_%e114225114250%_
                                     (gx#syntax-e _%tl114224114247%_)))
                                (let ((_%hd114226114254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e114225114250%_)))
                                      (_%tl114227114257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e114225114250%_))))
                                  (if (gx#stx-null? _%tl114227114257%_)
                                      ((lambda (_%L114260%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L114260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L114260%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd114226114254%_)
                                      (_%g114219114233%_ _%g114220114237%_))))
                              (_%g114219114233%_ _%g114220114237%_))))
                      (_%g114219114233%_ _%g114220114237%_)))))
          (_%g114218114275%_ _%$stx114215%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx114279%_)
        (letrec ((_%generate114282%_
                  (lambda (_%tgt114431%_ _%kws114433%_ _%clauses114434%_)
                    (letrec ((_%generate-clause114436%_
                              (lambda (_%hd115371%_ _%E115373%_)
                                (let* ((_%__stx115523115524%_ _%hd115371%_)
                                       (_%g115377115404%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx115523115524%_))))
                                  (let ((_%__kont115526115527%_
                                         (lambda (_%L115500%_ _%L115502%_)
                                           (_%generate1114438%_
                                            _%hd115371%_
                                            _%L115502%_
                                            '#t
                                            _%L115500%_
                                            _%E115373%_)))
                                        (_%__kont115528115529%_
                                         (lambda (_%L115452%_
                                                  _%L115454%_
                                                  _%L115455%_)
                                           (_%generate1114438%_
                                            _%hd115371%_
                                            _%L115455%_
                                            _%L115454%_
                                            _%L115452%_
                                            _%E115373%_)))
                                        (_%__kont115530115531%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx114279%_
                                            _%hd115371%_))))
                                    (if (gx#stx-pair? _%__stx115523115524%_)
                                        (let ((_%e115381115480%_
                                               (gx#syntax-e
                                                _%__stx115523115524%_)))
                                          (let ((_%tl115383115487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e115381115480%_)))
                                                (_%hd115382115484%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e115381115480%_))))
                                            (if (gx#stx-pair?
                                                 _%tl115383115487%_)
                                                (let ((_%e115384115490%_
                                                       (gx#syntax-e
                                                        _%tl115383115487%_)))
                                                  (let ((_%tl115386115497%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e115384115490%_)))
                                                        (_%hd115385115494%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e115384115490%_))))
                                                    (if (gx#stx-null?
                                                         _%tl115386115497%_)
                                                        (_%__kont115526115527%_
                                                         _%hd115385115494%_
                                                         _%hd115382115484%_)
                                                        (if (gx#stx-pair?
                                                             _%tl115386115497%_)
                                                            (let ((_%e115396115442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl115386115497%_)))
                      (let ((_%tl115398115449%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e115396115442%_)))
                            (_%hd115397115446%_
                             (let ()
                               (declare (not safe))
                               (##car _%e115396115442%_))))
                        (if (gx#stx-null? _%tl115398115449%_)
                            (_%__kont115528115529%_
                             _%hd115397115446%_
                             _%hd115385115494%_
                             _%hd115382115484%_)
                            (_%__kont115530115531%_))))
                    (_%__kont115530115531%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont115530115531%_))))
                                        (_%__kont115530115531%_))))))
                             (_%generate1114438%_
                              (lambda (_%where114824%_
                                       _%hd114826%_
                                       _%fender114827%_
                                       _%body114828%_
                                       _%E114829%_)
                                (letrec ((_%recur114831%_
                                          (lambda (_%hd114834%_
                                                   _%tgt114836%_
                                                   _%K114837%_)
                                            (let* ((_%__stx115569115570%_
                                                    _%hd114834%_)
                                                   (_%g114840114852%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx115569115570%_))))
                                              (let ((_%__kont115572115573%_
                                                     (lambda (_%L115161%_
                                                              _%L115163%_)
                                                       (let* ((_%g115174115182%_
                                                               (lambda (_%g115175115178%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g115175115178%_)))
                      (_%g115173115363%_
                       (lambda (_%g115175115186%_)
                         ((lambda (_%L115189%_)
                            (let* ((_%g115201115209%_
                                    (lambda (_%g115202115205%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g115202115205%_)))
                                   (_%g115200115359%_
                                    (lambda (_%g115202115213%_)
                                      ((lambda (_%L115216%_)
                                         (let* ((_%g115229115237%_
                                                 (lambda (_%g115230115233%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g115230115233%_)))
                                                (_%g115228115355%_
                                                 (lambda (_%g115230115241%_)
                                                   ((lambda (_%L115244%_)
                                                      (let* ((_%g115257115265%_
                                                              (lambda (_%g115258115261%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g115258115261%_)))
                     (_%g115256115351%_
                      (lambda (_%g115258115269%_)
                        ((lambda (_%L115272%_)
                           (let* ((_%g115285115293%_
                                   (lambda (_%g115286115289%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115286115289%_)))
                                  (_%g115284115347%_
                                   (lambda (_%g115286115297%_)
                                     ((lambda (_%L115300%_)
                                        (let* ((_%g115313115321%_
                                                (lambda (_%g115314115317%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g115314115317%_)))
                                               (_%g115312115343%_
                                                (lambda (_%g115314115325%_)
                                                  ((lambda (_%L115328%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L115189%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L115216%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L115189%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L115244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L115216%_ '()))
                                       '()))
                           (cons (cons _%L115272%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L115216%_ '()))
                                             '()))
                                 '()))
                     (cons _%L115300%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L115328%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g115314115325%_))))
                                          (_%g115312115343%_ _%E114829%_)))
                                      _%g115286115297%_))))
                             (_%g115284115347%_
                              (_%recur114831%_
                               _%L115163%_
                               _%L115244%_
                               (_%recur114831%_
                                _%L115161%_
                                _%L115272%_
                                _%K114837%_)))))
                         _%g115258115269%_))))
                (_%g115256115351%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g115230115241%_))))
                                           (_%g115228115355%_
                                            (gx#genident 'hd))))
                                       _%g115202115213%_))))
                              (_%g115200115359%_ (gx#genident 'e))))
                          _%g115175115186%_))))
                 (_%g115173115363%_ _%tgt114836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont115574115575%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd114834%_)
                                                           (if (gx#underscore?
                                                                _%hd114834%_)
                                                               _%K114837%_
                                                               (if (let ((__tmp115641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g114866114868%_)
                                    (gx#bound-identifier=?
                                     _%g114866114868%_
                                     _%hd114834%_))))
                             (declare (not safe))
                             (__find __tmp115641 _%kws114433%_))
                           (let* ((_%g114874114889%_
                                   (lambda (_%g114875114885%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114875114885%_)))
                                  (_%g114873114942%_
                                   (lambda (_%g114875114893%_)
                                     (if (gx#stx-pair? _%g114875114893%_)
                                         (let ((_%e114878114896%_
                                                (gx#syntax-e
                                                 _%g114875114893%_)))
                                           (let ((_%hd114879114900%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114878114896%_)))
                                                 (_%tl114880114903%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114878114896%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114880114903%_)
                                                 (let ((_%e114881114906%_
                                                        (gx#syntax-e
                                                         _%tl114880114903%_)))
                                                   (let ((_%hd114882114910%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114881114906%_)))
                                                         (_%tl114883114913%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114881114906%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114883114913%_)
                                                         ((lambda (_%L114916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114918%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L114918%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L114918%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L114916%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K114837%_ (cons _%E114829%_ '())))))
                  _%hd114882114910%_
                  _%hd114879114900%_)
                 (_%g114874114889%_ _%g114875114893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114874114889%_
                                                  _%g114875114893%_))))
                                         (_%g114874114889%_
                                          _%g114875114893%_)))))
                             (_%g114873114942%_
                              (list _%tgt114836%_ _%hd114834%_)))
                           (let* ((_%g114948114963%_
                                   (lambda (_%g114949114959%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114949114959%_)))
                                  (_%g114947115008%_
                                   (lambda (_%g114949114967%_)
                                     (if (gx#stx-pair? _%g114949114967%_)
                                         (let ((_%e114952114970%_
                                                (gx#syntax-e
                                                 _%g114949114967%_)))
                                           (let ((_%hd114953114974%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114952114970%_)))
                                                 (_%tl114954114977%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114952114970%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114954114977%_)
                                                 (let ((_%e114955114980%_
                                                        (gx#syntax-e
                                                         _%tl114954114977%_)))
                                                   (let ((_%hd114956114984%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114955114980%_)))
                                                         (_%tl114957114987%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114955114980%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114957114987%_)
                                                         ((lambda (_%L114990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114992%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L114990%_ (cons _%L114992%_ '()))
                                      '())
                                (cons _%K114837%_ '()))))
                  _%hd114956114984%_
                  _%hd114953114974%_)
                 (_%g114948114963%_ _%g114949114967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114948114963%_
                                                  _%g114949114967%_))))
                                         (_%g114948114963%_
                                          _%g114949114967%_)))))
                             (_%g114947115008%_
                              (list _%tgt114836%_ _%hd114834%_)))))
                   (if (gx#stx-null? _%hd114834%_)
                       (let* ((_%g115014115022%_
                               (lambda (_%g115015115018%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g115015115018%_)))
                              (_%g115013115041%_
                               (lambda (_%g115015115026%_)
                                 ((lambda (_%L115029%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L115029%_ '()))
                                                (cons _%K114837%_
                                                      (cons _%E114829%_
                                                            '())))))
                                  _%g115015115026%_))))
                         (_%g115013115041%_ _%tgt114836%_))
                       (if (gx#stx-datum? _%hd114834%_)
                           (let* ((_%g115047115066%_
                                   (lambda (_%g115048115062%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115048115062%_)))
                                  (_%g115046115125%_
                                   (lambda (_%g115048115070%_)
                                     (if (gx#stx-pair? _%g115048115070%_)
                                         (let ((_%e115052115073%_
                                                (gx#syntax-e
                                                 _%g115048115070%_)))
                                           (let ((_%hd115053115077%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e115052115073%_)))
                                                 (_%tl115054115080%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e115052115073%_))))
                                             (if (gx#stx-pair?
                                                  _%tl115054115080%_)
                                                 (let ((_%e115055115083%_
                                                        (gx#syntax-e
                                                         _%tl115054115080%_)))
                                                   (let ((_%hd115056115087%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e115055115083%_)))
                                                         (_%tl115057115090%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e115055115083%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl115057115090%_)
                                                         (let ((_%e115058115093%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl115057115090%_)))
                   (let ((_%hd115059115097%_
                          (let ()
                            (declare (not safe))
                            (##car _%e115058115093%_)))
                         (_%tl115060115100%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e115058115093%_))))
                     (if (gx#stx-null? _%tl115060115100%_)
                         ((lambda (_%L115103%_ _%L115105%_ _%L115106%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L115103%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L115106%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L115105%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K114837%_
                                              (cons _%E114829%_ '())))))
                          _%hd115059115097%_
                          _%hd115056115087%_
                          _%hd115053115077%_)
                         (_%g115047115066%_ _%g115048115070%_))))
                 (_%g115047115066%_ _%g115048115070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g115047115066%_
                                                  _%g115048115070%_))))
                                         (_%g115047115066%_
                                          _%g115048115070%_)))))
                             (_%g115046115125%_
                              (list _%tgt114836%_
                                    _%hd114834%_
                                    (let ((_%e115129%_
                                           (gx#stx-e _%hd114834%_)))
                                      (if (or (keyword? _%e115129%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e115129%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e115129%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx114279%_
                            _%where114824%_
                            _%hd114834%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx115569115570%_)
                                                    (let ((_%e114844115151%_
                                                           (gx#syntax-e
                                                            _%__stx115569115570%_)))
                                                      (let ((_%tl114846115158%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e114844115151%_)))
                    (_%hd114845115155%_
                     (let () (declare (not safe)) (##car _%e114844115151%_))))
                (_%__kont115572115573%_
                 _%tl114846115158%_
                 _%hd114845115155%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont115574115575%_)))))))
                                  (_%recur114831%_
                                   _%hd114826%_
                                   _%tgt114431%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender114827%_
                                               (cons _%body114828%_
                                                     (cons _%E114829%_
                                                           '()))))))))
                             (_%generate-clauses114439%_
                              (lambda (_%clauses114562%_)
                                (let _%lp114565%_ ((_%rest114568%_
                                                    _%clauses114562%_)
                                                   (_%E114570%_
                                                    (gx#genident 'E))
                                                   (_%r114571%_ '()))
                                  (let* ((_%__stx115605115606%_ _%rest114568%_)
                                         (_%g114574114586%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx115605115606%_))))
                                    (let ((_%__kont115608115609%_
                                           (lambda (_%L114651%_ _%L114653%_)
                                             (let* ((_%__stx115585115586%_
                                                     _%L114653%_)
                                                    (_%g114665114676%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx115585115586%_))))
                                               (let ((_%__kont115588115589%_
                                                      (lambda (_%L114805%_)
                                                        (if (gx#stx-null?
                                                             _%L114651%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L114805%_)
                             (not (gx#stx-null? _%L114805%_)))
                        (cons (cons _%E114570%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L114805%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L114653%_))
                                          '()))
                              _%r114571%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx114279%_
                         _%L114653%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx114279%_
                     _%L114653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont115590115591%_
                                                      (lambda ()
                                                        (let* ((_%g114687114695%_
                                                                (lambda (_%g114688114691%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g114688114691%_)))
                       (_%g114686114784%_
                        (lambda (_%g114688114699%_)
                          ((lambda (_%L114702%_)
                             (let* ((_%g114718114726%_
                                     (lambda (_%g114719114722%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g114719114722%_)))
                                    (_%g114717114780%_
                                     (lambda (_%g114719114730%_)
                                       ((lambda (_%L114733%_)
                                          (let* ((_%g114746114754%_
                                                  (lambda (_%g114747114750%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g114747114750%_)))
                                                 (_%g114745114776%_
                                                  (lambda (_%g114747114758%_)
                                                    ((lambda (_%L114761%_)
                                                       (_%lp114565%_
                                                        _%L114651%_
                                                        _%L114702%_
                                                        (cons (cons _%E114570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L114761%_ '()))
                      _%r114571%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g114747114758%_))))
                                            (_%g114745114776%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L114733%_
                                                                '())))
                                              (gx#stx-source _%L114653%_)))))
                                        _%g114719114730%_))))
                               (_%g114717114780%_
                                (_%generate-clause114436%_
                                 _%L114653%_
                                 (cons _%L114702%_ '())))))
                           _%g114688114699%_))))
                  (_%g114686114784%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx115585115586%_)
                                                     (let ((_%e114668114795%_
                                                            (gx#syntax-e
                                                             _%__stx115585115586%_)))
                                                       (let ((_%tl114670114802%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e114668114795%_)))
                     (_%hd114669114799%_
                      (let () (declare (not safe)) (##car _%e114668114795%_))))
                 (if (gx#identifier? _%hd114669114799%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g115642_|
                          _%hd114669114799%_)
                         (_%__kont115588115589%_ _%tl114670114802%_)
                         (_%__kont115590115591%_))
                     (_%__kont115590115591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont115590115591%_))))))
                                          (_%__kont115610115611%_
                                           (lambda ()
                                             (let* ((_%g114597114605%_
                                                     (lambda (_%g114598114601%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g114598114601%_)))
                                                    (_%g114596114630%_
                                                     (lambda (_%g114598114609%_)
                                                       ((lambda (_%L114612%_)
                                                          (cons (cons _%E114570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'raise-syntax-error)
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"Bad syntax; invalid syntax-case clause"
                                 (cons _%L114612%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx114279%_))
                                    '()))
                        _%r114571%_))
                _%g114598114609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g114596114630%_
                                                _%tgt114431%_)))))
                                      (if (gx#stx-pair? _%__stx115605115606%_)
                                          (let ((_%e114578114641%_
                                                 (gx#syntax-e
                                                  _%__stx115605115606%_)))
                                            (let ((_%tl114580114648%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e114578114641%_)))
                                                  (_%hd114579114645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e114578114641%_))))
                                              (_%__kont115608115609%_
                                               _%tl114580114648%_
                                               _%hd114579114645%_)))
                                          (_%__kont115610115611%_))))))))
                      (let* ((_%bind114441%_
                              (_%generate-clauses114439%_ _%clauses114434%_))
                             (_%g114444114461%_
                              (lambda (_%g114445114457%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g114445114457%_)))
                             (_%g114443114558%_
                              (lambda (_%g114445114465%_)
                                (if (gx#stx-pair/null? _%g114445114465%_)
                                    (let ((_g115643_
                                           (gx#syntax-split-splice
                                            _%g114445114465%_
                                            '0)))
                                      (begin
                                        (let ((_g115644_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g115643_)
                                                     (##vector-length
                                                      _g115643_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g115644_ 2)))
                                              (error "Context expects 2 values"
                                                     _g115644_)))
                                        (let ((_%target114447114468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g115643_ 0)))
                                              (_%tl114449114471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g115643_ 1))))
                                          (if (gx#stx-null? _%tl114449114471%_)
                                              (letrec ((_%loop114450114474%_
                                                        (lambda (_%hd114448114478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try114454114481%_)
                  (if (gx#stx-pair? _%hd114448114478%_)
                      (let ((_%e114451114484%_
                             (gx#syntax-e _%hd114448114478%_)))
                        (let ((_%lp-hd114452114488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e114451114484%_)))
                              (_%lp-tl114453114491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e114451114484%_))))
                          (_%loop114450114474%_
                           _%lp-tl114453114491%_
                           (cons _%lp-hd114452114488%_
                                 _%bind-try114454114481%_))))
                      (let ((_%bind-try114455114494%_
                             (reverse _%bind-try114454114481%_)))
                        ((lambda (_%L114498%_)
                           (let* ((_%g114516114524%_
                                   (lambda (_%g114517114520%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114517114520%_)))
                                  (_%g114515114554%_
                                   (lambda (_%g114517114528%_)
                                     ((lambda (_%L114531%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp115645
                                                           (lambda (_%g114545114548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g114546114551%_)
                     (cons _%g114545114548%_ _%g114546114551%_))))
              (declare (not safe))
              (__foldr1 __tmp115645 '() _%L114498%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L114531%_
                                                                '())
                                                          '()))))
                                      _%g114517114528%_))))
                             (_%g114515114554%_ (car (last _%bind114441%_)))))
                         _%bind-try114455114494%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop114450114474%_
                                                 _%target114447114468%_
                                                 '()))
                                              (_%g114444114461%_
                                               _%g114445114465%_)))))
                                    (_%g114444114461%_ _%g114445114465%_)))))
                        (_%g114443114558%_ _%bind114441%_))))))
          (let* ((_%g114285114304%_
                  (lambda (_%g114286114300%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g114286114300%_)))
                 (_%g114284114427%_
                  (lambda (_%g114286114308%_)
                    (if (gx#stx-pair? _%g114286114308%_)
                        (let ((_%e114290114311%_
                               (gx#syntax-e _%g114286114308%_)))
                          (let ((_%hd114291114315%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e114290114311%_)))
                                (_%tl114292114318%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e114290114311%_))))
                            (if (gx#stx-pair? _%tl114292114318%_)
                                (let ((_%e114293114321%_
                                       (gx#syntax-e _%tl114292114318%_)))
                                  (let ((_%hd114294114325%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e114293114321%_)))
                                        (_%tl114295114328%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e114293114321%_))))
                                    (if (gx#stx-pair? _%tl114295114328%_)
                                        (let ((_%e114296114331%_
                                               (gx#syntax-e
                                                _%tl114295114328%_)))
                                          (let ((_%hd114297114335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e114296114331%_)))
                                                (_%tl114298114338%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e114296114331%_))))
                                            ((lambda (_%L114341%_
                                                      _%L114343%_
                                                      _%L114344%_)
                                               (if (and (gx#identifier-list?
                                                         _%L114343%_)
                                                        (gx#stx-list?
                                                         _%L114341%_))
                                                   (let* ((_%g114362114370%_
                                                           (lambda (_%g114363114366%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g114363114366%_)))
                                                          (_%g114361114423%_
                                                           (lambda (_%g114363114374%_)
                                                             ((lambda (_%L114377%_)
                                                                (let* ((_%g114389114397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g114390114393%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g114390114393%_)))
                               (_%g114388114419%_
                                (lambda (_%g114390114401%_)
                                  ((lambda (_%L114404%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L114377%_
                                                             (cons _%L114344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L114404%_ '()))))
                                   _%g114390114401%_))))
                          (_%g114388114419%_
                           (_%generate114282%_
                            _%L114377%_
                            (gx#syntax->list _%L114343%_)
                            _%L114341%_))))
                      _%g114363114374%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g114361114423%_
                                                      (gx#genident 'e)))
                                                   (_%g114285114304%_
                                                    _%g114286114308%_)))
                                             _%tl114298114338%_
                                             _%hd114297114335%_
                                             _%hd114294114325%_)))
                                        (_%g114285114304%_
                                         _%g114286114308%_))))
                                (_%g114285114304%_ _%g114286114308%_))))
                        (_%g114285114304%_ _%g114286114308%_)))))
            (_%g114284114427%_ _%stx114279%_)))))))
