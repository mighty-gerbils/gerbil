(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g169042_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169044_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169046_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169048_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169049_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169051_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169052_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169054_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169055_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169057_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169058_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g169060_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj169038
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
          (##unchecked-structure-set! __obj169038 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 '#f '12 '#f '#f))
        (let ((__tmp169041 |gx[1]#_g169042_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 __tmp169041 '3 '#f '#f))
        (let ((__tmp169043 |gx[1]#_g169044_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 __tmp169043 '13 '#f '#f))
        (let ((__tmp169045 |gx[1]#_g169046_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 __tmp169045 '14 '#f '#f))
        (let ((__tmp169047
               (cons (cons 'e |gx[1]#_g169048_|)
                     (cons (cons 'source |gx[1]#_g169049_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 __tmp169047 '15 '#f '#f))
        (let ((__tmp169050
               (cons (cons 'e |gx[1]#_g169051_|)
                     (cons (cons 'source |gx[1]#_g169052_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 __tmp169050 '16 '#f '#f))
        (let ((__tmp169053
               (cons (cons 'e |gx[1]#_g169054_|)
                     (cons (cons 'source |gx[1]#_g169055_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 __tmp169053 '17 '#f '#f))
        (let ((__tmp169056
               (cons (cons 'e |gx[1]#_g169057_|)
                     (cons (cons 'source |gx[1]#_g169058_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 __tmp169056 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj169038 '() '20 '#f '#f))
        __obj169038))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx167635%_)
        (let* ((_%g167639167653%_
                (lambda (_%g167640167649%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g167640167649%_)))
               (_%g167638167695%_
                (lambda (_%g167640167657%_)
                  (if (gx#stx-pair? _%g167640167657%_)
                      (let ((_%e167642167660%_
                             (gx#syntax-e _%g167640167657%_)))
                        (let ((_%hd167643167664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167642167660%_)))
                              (_%tl167644167667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167642167660%_))))
                          (if (gx#stx-pair? _%tl167644167667%_)
                              (let ((_%e167645167670%_
                                     (gx#syntax-e _%tl167644167667%_)))
                                (let ((_%hd167646167674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167645167670%_)))
                                      (_%tl167647167677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167645167670%_))))
                                  (if (gx#stx-null? _%tl167647167677%_)
                                      ((lambda (_%g167641167680%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g167641167680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g167641167680%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd167646167674%_)
                                      (_%g167639167653%_ _%g167640167657%_))))
                              (_%g167639167653%_ _%g167640167657%_))))
                      (_%g167639167653%_ _%g167640167657%_)))))
          (_%g167638167695%_ _%$stx167635%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx167699%_)
        (letrec ((_%generate167702%_
                  (lambda (_%tgt167851%_ _%kws167853%_ _%clauses167854%_)
                    (letrec ((_%generate-clause167856%_
                              (lambda (_%hd168789%_ _%E168791%_)
                                (let* ((_%__stx168941168942%_ _%hd168789%_)
                                       (_%g168795168822%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx168941168942%_))))
                                  (let ((_%__kont168944168945%_
                                         (lambda (_%g168797168918%_
                                                  _%g168798168920%_)
                                           (_%generate1167858%_
                                            _%hd168789%_
                                            _%g168798168920%_
                                            '#t
                                            _%g168797168918%_
                                            _%E168791%_)))
                                        (_%__kont168946168947%_
                                         (lambda (_%g168805168870%_
                                                  _%g168806168872%_
                                                  _%g168807168873%_)
                                           (_%generate1167858%_
                                            _%hd168789%_
                                            _%g168807168873%_
                                            _%g168806168872%_
                                            _%g168805168870%_
                                            _%E168791%_)))
                                        (_%__kont168948168949%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx167699%_
                                            _%hd168789%_))))
                                    (if (gx#stx-pair? _%__stx168941168942%_)
                                        (let ((_%e168799168898%_
                                               (gx#syntax-e
                                                _%__stx168941168942%_)))
                                          (let ((_%tl168801168905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168799168898%_)))
                                                (_%hd168800168902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168799168898%_))))
                                            (if (gx#stx-pair?
                                                 _%tl168801168905%_)
                                                (let ((_%e168802168908%_
                                                       (gx#syntax-e
                                                        _%tl168801168905%_)))
                                                  (let ((_%tl168804168915%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168802168908%_)))
                                                        (_%hd168803168912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168802168908%_))))
                                                    (if (gx#stx-null?
                                                         _%tl168804168915%_)
                                                        (_%__kont168944168945%_
                                                         _%hd168803168912%_
                                                         _%hd168800168902%_)
                                                        (if (gx#stx-pair?
                                                             _%tl168804168915%_)
                                                            (let ((_%e168814168860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl168804168915%_)))
                      (let ((_%tl168816168867%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168814168860%_)))
                            (_%hd168815168864%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168814168860%_))))
                        (if (gx#stx-null? _%tl168816168867%_)
                            (_%__kont168946168947%_
                             _%hd168815168864%_
                             _%hd168803168912%_
                             _%hd168800168902%_)
                            (_%__kont168948168949%_))))
                    (_%__kont168948168949%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont168948168949%_))))
                                        (_%__kont168948168949%_))))))
                             (_%generate1167858%_
                              (lambda (_%where168242%_
                                       _%hd168244%_
                                       _%fender168245%_
                                       _%body168246%_
                                       _%E168247%_)
                                (letrec ((_%recur168249%_
                                          (lambda (_%hd168252%_
                                                   _%tgt168254%_
                                                   _%K168255%_)
                                            (let* ((_%__stx168987168988%_
                                                    _%hd168252%_)
                                                   (_%g168258168270%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx168987168988%_))))
                                              (let ((_%__kont168990168991%_
                                                     (lambda (_%g168260168579%_
                                                              _%g168261168581%_)
                                                       (let* ((_%g168592168600%_
                                                               (lambda (_%g168593168596%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g168593168596%_)))
                      (_%g168591168781%_
                       (lambda (_%g168593168604%_)
                         ((lambda (_%g168594168607%_)
                            (let* ((_%g168619168627%_
                                    (lambda (_%g168620168623%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g168620168623%_)))
                                   (_%g168618168777%_
                                    (lambda (_%g168620168631%_)
                                      ((lambda (_%g168621168634%_)
                                         (let* ((_%g168647168655%_
                                                 (lambda (_%g168648168651%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g168648168651%_)))
                                                (_%g168646168773%_
                                                 (lambda (_%g168648168659%_)
                                                   ((lambda (_%g168649168662%_)
                                                      (let* ((_%g168675168683%_
                                                              (lambda (_%g168676168679%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g168676168679%_)))
                     (_%g168674168769%_
                      (lambda (_%g168676168687%_)
                        ((lambda (_%g168677168690%_)
                           (let* ((_%g168703168711%_
                                   (lambda (_%g168704168707%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g168704168707%_)))
                                  (_%g168702168765%_
                                   (lambda (_%g168704168715%_)
                                     ((lambda (_%g168705168718%_)
                                        (let* ((_%g168731168739%_
                                                (lambda (_%g168732168735%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g168732168735%_)))
                                               (_%g168730168761%_
                                                (lambda (_%g168732168743%_)
                                                  ((lambda (_%g168733168746%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g168594168607%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g168621168634%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g168594168607%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g168649168662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g168621168634%_ '()))
                                       '()))
                           (cons (cons _%g168677168690%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g168621168634%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g168705168718%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g168733168746%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g168732168743%_))))
                                          (_%g168730168761%_ _%E168247%_)))
                                      _%g168704168715%_))))
                             (_%g168702168765%_
                              (_%recur168249%_
                               _%g168261168581%_
                               _%g168649168662%_
                               (_%recur168249%_
                                _%g168260168579%_
                                _%g168677168690%_
                                _%K168255%_)))))
                         _%g168676168687%_))))
                (_%g168674168769%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g168648168659%_))))
                                           (_%g168646168773%_
                                            (gx#genident 'hd))))
                                       _%g168620168631%_))))
                              (_%g168618168777%_ (gx#genident 'e))))
                          _%g168593168604%_))))
                 (_%g168591168781%_ _%tgt168254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont168992168993%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd168252%_)
                                                           (if (gx#underscore?
                                                                _%hd168252%_)
                                                               _%K168255%_
                                                               (if (let ((__tmp169059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g168284168286%_)
                                    (gx#bound-identifier=?
                                     _%g168284168286%_
                                     _%hd168252%_))))
                             (declare (not safe))
                             (__find __tmp169059 _%kws167853%_))
                           (let* ((_%g168292168307%_
                                   (lambda (_%g168293168303%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g168293168303%_)))
                                  (_%g168291168360%_
                                   (lambda (_%g168293168311%_)
                                     (if (gx#stx-pair? _%g168293168311%_)
                                         (let ((_%e168296168314%_
                                                (gx#syntax-e
                                                 _%g168293168311%_)))
                                           (let ((_%hd168297168318%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168296168314%_)))
                                                 (_%tl168298168321%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168296168314%_))))
                                             (if (gx#stx-pair?
                                                  _%tl168298168321%_)
                                                 (let ((_%e168299168324%_
                                                        (gx#syntax-e
                                                         _%tl168298168321%_)))
                                                   (let ((_%hd168300168328%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168299168324%_)))
                                                         (_%tl168301168331%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168299168324%_))))
                                                     (if (gx#stx-null?
                                                          _%tl168301168331%_)
                                                         ((lambda (_%g168294168334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g168295168336%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g168295168336%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g168295168336%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g168294168334%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K168255%_ (cons _%E168247%_ '())))))
                  _%hd168300168328%_
                  _%hd168297168318%_)
                 (_%g168292168307%_ _%g168293168311%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g168292168307%_
                                                  _%g168293168311%_))))
                                         (_%g168292168307%_
                                          _%g168293168311%_)))))
                             (_%g168291168360%_
                              (list _%tgt168254%_ _%hd168252%_)))
                           (let* ((_%g168366168381%_
                                   (lambda (_%g168367168377%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g168367168377%_)))
                                  (_%g168365168426%_
                                   (lambda (_%g168367168385%_)
                                     (if (gx#stx-pair? _%g168367168385%_)
                                         (let ((_%e168370168388%_
                                                (gx#syntax-e
                                                 _%g168367168385%_)))
                                           (let ((_%hd168371168392%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168370168388%_)))
                                                 (_%tl168372168395%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168370168388%_))))
                                             (if (gx#stx-pair?
                                                  _%tl168372168395%_)
                                                 (let ((_%e168373168398%_
                                                        (gx#syntax-e
                                                         _%tl168372168395%_)))
                                                   (let ((_%hd168374168402%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168373168398%_)))
                                                         (_%tl168375168405%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168373168398%_))))
                                                     (if (gx#stx-null?
                                                          _%tl168375168405%_)
                                                         ((lambda (_%g168368168408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g168369168410%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g168368168408%_
                                            (cons _%g168369168410%_ '()))
                                      '())
                                (cons _%K168255%_ '()))))
                  _%hd168374168402%_
                  _%hd168371168392%_)
                 (_%g168366168381%_ _%g168367168385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g168366168381%_
                                                  _%g168367168385%_))))
                                         (_%g168366168381%_
                                          _%g168367168385%_)))))
                             (_%g168365168426%_
                              (list _%tgt168254%_ _%hd168252%_)))))
                   (if (gx#stx-null? _%hd168252%_)
                       (let* ((_%g168432168440%_
                               (lambda (_%g168433168436%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g168433168436%_)))
                              (_%g168431168459%_
                               (lambda (_%g168433168444%_)
                                 ((lambda (_%g168434168447%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g168434168447%_
                                                            '()))
                                                (cons _%K168255%_
                                                      (cons _%E168247%_
                                                            '())))))
                                  _%g168433168444%_))))
                         (_%g168431168459%_ _%tgt168254%_))
                       (if (gx#stx-datum? _%hd168252%_)
                           (let* ((_%g168465168484%_
                                   (lambda (_%g168466168480%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g168466168480%_)))
                                  (_%g168464168543%_
                                   (lambda (_%g168466168488%_)
                                     (if (gx#stx-pair? _%g168466168488%_)
                                         (let ((_%e168470168491%_
                                                (gx#syntax-e
                                                 _%g168466168488%_)))
                                           (let ((_%hd168471168495%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168470168491%_)))
                                                 (_%tl168472168498%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168470168491%_))))
                                             (if (gx#stx-pair?
                                                  _%tl168472168498%_)
                                                 (let ((_%e168473168501%_
                                                        (gx#syntax-e
                                                         _%tl168472168498%_)))
                                                   (let ((_%hd168474168505%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168473168501%_)))
                                                         (_%tl168475168508%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168473168501%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl168475168508%_)
                                                         (let ((_%e168476168511%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl168475168508%_)))
                   (let ((_%hd168477168515%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168476168511%_)))
                         (_%tl168478168518%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168476168511%_))))
                     (if (gx#stx-null? _%tl168478168518%_)
                         ((lambda (_%g168467168521%_
                                   _%g168468168523%_
                                   _%g168469168524%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g168467168521%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g168469168524%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g168468168523%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K168255%_
                                              (cons _%E168247%_ '())))))
                          _%hd168477168515%_
                          _%hd168474168505%_
                          _%hd168471168495%_)
                         (_%g168465168484%_ _%g168466168488%_))))
                 (_%g168465168484%_ _%g168466168488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g168465168484%_
                                                  _%g168466168488%_))))
                                         (_%g168465168484%_
                                          _%g168466168488%_)))))
                             (_%g168464168543%_
                              (list _%tgt168254%_
                                    _%hd168252%_
                                    (let ((_%e168547%_
                                           (gx#stx-e _%hd168252%_)))
                                      (if (or (keyword? _%e168547%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e168547%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e168547%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx167699%_
                            _%where168242%_
                            _%hd168252%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx168987168988%_)
                                                    (let ((_%e168262168569%_
                                                           (gx#syntax-e
                                                            _%__stx168987168988%_)))
                                                      (let ((_%tl168264168576%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168262168569%_)))
                    (_%hd168263168573%_
                     (let () (declare (not safe)) (##car _%e168262168569%_))))
                (_%__kont168990168991%_
                 _%tl168264168576%_
                 _%hd168263168573%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont168992168993%_)))))))
                                  (_%recur168249%_
                                   _%hd168244%_
                                   _%tgt167851%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender168245%_
                                               (cons _%body168246%_
                                                     (cons _%E168247%_
                                                           '()))))))))
                             (_%generate-clauses167859%_
                              (lambda (_%clauses167980%_)
                                (let _%lp167983%_ ((_%rest167986%_
                                                    _%clauses167980%_)
                                                   (_%E167988%_
                                                    (gx#genident 'E))
                                                   (_%r167989%_ '()))
                                  (let* ((_%__stx169023169024%_ _%rest167986%_)
                                         (_%g167992168004%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx169023169024%_))))
                                    (let ((_%__kont169026169027%_
                                           (lambda (_%g167994168069%_
                                                    _%g167995168071%_)
                                             (let* ((_%__stx169003169004%_
                                                     _%g167995168071%_)
                                                    (_%g168083168094%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx169003169004%_))))
                                               (let ((_%__kont169006169007%_
                                                      (lambda (_%g168085168223%_)
                                                        (if (gx#stx-null?
                                                             _%g167994168069%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g168085168223%_)
                             (not (gx#stx-null? _%g168085168223%_)))
                        (cons (cons _%E167988%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g168085168223%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g167995168071%_))
                                          '()))
                              _%r167989%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx167699%_
                         _%g167995168071%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx167699%_
                     _%g167995168071%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont169008169009%_
                                                      (lambda ()
                                                        (let* ((_%g168105168113%_
                                                                (lambda (_%g168106168109%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g168106168109%_)))
                       (_%g168104168202%_
                        (lambda (_%g168106168117%_)
                          ((lambda (_%g168107168120%_)
                             (let* ((_%g168136168144%_
                                     (lambda (_%g168137168140%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g168137168140%_)))
                                    (_%g168135168198%_
                                     (lambda (_%g168137168148%_)
                                       ((lambda (_%g168138168151%_)
                                          (let* ((_%g168164168172%_
                                                  (lambda (_%g168165168168%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g168165168168%_)))
                                                 (_%g168163168194%_
                                                  (lambda (_%g168165168176%_)
                                                    ((lambda (_%g168166168179%_)
                                                       (_%lp167983%_
                                                        _%g167994168069%_
                                                        _%g168107168120%_
                                                        (cons (cons _%E167988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g168166168179%_ '()))
                      _%r167989%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g168165168176%_))))
                                            (_%g168163168194%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g168138168151%_
                                                                '())))
                                              (gx#stx-source
                                               _%g167995168071%_)))))
                                        _%g168137168148%_))))
                               (_%g168135168198%_
                                (_%generate-clause167856%_
                                 _%g167995168071%_
                                 (cons _%g168107168120%_ '())))))
                           _%g168106168117%_))))
                  (_%g168104168202%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx169003169004%_)
                                                     (let ((_%e168086168213%_
                                                            (gx#syntax-e
                                                             _%__stx169003169004%_)))
                                                       (let ((_%tl168088168220%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168086168213%_)))
                     (_%hd168087168217%_
                      (let () (declare (not safe)) (##car _%e168086168213%_))))
                 (if (gx#identifier? _%hd168087168217%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g169060_|
                          _%hd168087168217%_)
                         (_%__kont169006169007%_ _%tl168088168220%_)
                         (_%__kont169008169009%_))
                     (_%__kont169008169009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont169008169009%_))))))
                                          (_%__kont169028169029%_
                                           (lambda ()
                                             (let* ((_%g168015168023%_
                                                     (lambda (_%g168016168019%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g168016168019%_)))
                                                    (_%g168014168048%_
                                                     (lambda (_%g168016168027%_)
                                                       ((lambda (_%g168017168030%_)
                                                          (cons (cons _%E167988%_
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
                                 (cons _%g168017168030%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx167699%_))
                                    '()))
                        _%r167989%_))
                _%g168016168027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g168014168048%_
                                                _%tgt167851%_)))))
                                      (if (gx#stx-pair? _%__stx169023169024%_)
                                          (let ((_%e167996168059%_
                                                 (gx#syntax-e
                                                  _%__stx169023169024%_)))
                                            (let ((_%tl167998168066%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167996168059%_)))
                                                  (_%hd167997168063%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167996168059%_))))
                                              (_%__kont169026169027%_
                                               _%tl167998168066%_
                                               _%hd167997168063%_)))
                                          (_%__kont169028169029%_))))))))
                      (let* ((_%bind167861%_
                              (_%generate-clauses167859%_ _%clauses167854%_))
                             (_%g167864167881%_
                              (lambda (_%g167865167877%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g167865167877%_)))
                             (_%g167863167976%_
                              (lambda (_%g167865167885%_)
                                (if (gx#stx-pair/null? _%g167865167885%_)
                                    (let ((_g169061_
                                           (gx#syntax-split-splice
                                            _%g167865167885%_
                                            '0)))
                                      (begin
                                        (let ((_g169062_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g169061_)
                                                     (##values-length
                                                      _g169061_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g169062_ 2)))
                                              (error "Context expects 2 values"
                                                     _g169062_)))
                                        (let ((_%target167867167888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g169061_ 0)))
                                              (_%tl167869167891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g169061_ 1))))
                                          (if (gx#stx-null? _%tl167869167891%_)
                                              (letrec ((_%loop167870167894%_
                                                        (lambda (_%hd167868167898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try167874167901%_)
                  (if (gx#stx-pair? _%hd167868167898%_)
                      (let ((_%e167871167903%_
                             (gx#syntax-e _%hd167868167898%_)))
                        (let ((_%lp-hd167872167907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167871167903%_)))
                              (_%lp-tl167873167910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167871167903%_))))
                          (_%loop167870167894%_
                           _%lp-tl167873167910%_
                           (cons _%lp-hd167872167907%_
                                 _%bind-try167874167901%_))))
                      (let ((_%bind-try167875167913%_
                             (reverse _%bind-try167874167901%_)))
                        ((lambda (_%g167866167916%_)
                           (let* ((_%g167934167942%_
                                   (lambda (_%g167935167938%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g167935167938%_)))
                                  (_%g167933167972%_
                                   (lambda (_%g167935167946%_)
                                     ((lambda (_%g167936167949%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp169063
                                                           (lambda (_%g167963167966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167964167969%_)
                     (cons _%g167963167966%_ _%g167964167969%_))))
              (declare (not safe))
              (foldr__0 __tmp169063 '() _%g167866167916%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g167936167949%_
                                                                '())
                                                          '()))))
                                      _%g167935167946%_))))
                             (_%g167933167972%_ (car (last _%bind167861%_)))))
                         _%bind-try167875167913%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop167870167894%_
                                                 _%target167867167888%_
                                                 '()))
                                              (_%g167864167881%_
                                               _%g167865167885%_)))))
                                    (_%g167864167881%_ _%g167865167885%_)))))
                        (_%g167863167976%_ _%bind167861%_))))))
          (let* ((_%g167705167724%_
                  (lambda (_%g167706167720%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g167706167720%_)))
                 (_%g167704167847%_
                  (lambda (_%g167706167728%_)
                    (if (gx#stx-pair? _%g167706167728%_)
                        (let ((_%e167710167731%_
                               (gx#syntax-e _%g167706167728%_)))
                          (let ((_%hd167711167735%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167710167731%_)))
                                (_%tl167712167738%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167710167731%_))))
                            (if (gx#stx-pair? _%tl167712167738%_)
                                (let ((_%e167713167741%_
                                       (gx#syntax-e _%tl167712167738%_)))
                                  (let ((_%hd167714167745%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167713167741%_)))
                                        (_%tl167715167748%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167713167741%_))))
                                    (if (gx#stx-pair? _%tl167715167748%_)
                                        (let ((_%e167716167751%_
                                               (gx#syntax-e
                                                _%tl167715167748%_)))
                                          (let ((_%hd167717167755%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167716167751%_)))
                                                (_%tl167718167758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167716167751%_))))
                                            ((lambda (_%g167707167761%_
                                                      _%g167708167763%_
                                                      _%g167709167764%_)
                                               (if (and (gx#identifier-list?
                                                         _%g167708167763%_)
                                                        (gx#stx-list?
                                                         _%g167707167761%_))
                                                   (let* ((_%g167782167790%_
                                                           (lambda (_%g167783167786%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g167783167786%_)))
                                                          (_%g167781167843%_
                                                           (lambda (_%g167783167794%_)
                                                             ((lambda (_%g167784167797%_)
                                                                (let* ((_%g167809167817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g167810167813%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g167810167813%_)))
                               (_%g167808167839%_
                                (lambda (_%g167810167821%_)
                                  ((lambda (_%g167811167824%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g167784167797%_
                                                             (cons _%g167709167764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g167811167824%_
                                                       '()))))
                                   _%g167810167821%_))))
                          (_%g167808167839%_
                           (_%generate167702%_
                            _%g167784167797%_
                            (gx#syntax->list _%g167708167763%_)
                            _%g167707167761%_))))
                      _%g167783167794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g167781167843%_
                                                      (gx#genident 'e)))
                                                   (_%g167705167724%_
                                                    _%g167706167728%_)))
                                             _%tl167718167758%_
                                             _%hd167717167755%_
                                             _%hd167714167745%_)))
                                        (_%g167705167724%_
                                         _%g167706167728%_))))
                                (_%g167705167724%_ _%g167706167728%_))))
                        (_%g167705167724%_ _%g167706167728%_)))))
            (_%g167704167847%_ _%stx167699%_)))))))
