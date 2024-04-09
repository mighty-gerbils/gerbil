(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g112938_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112940_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112942_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112944_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112945_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112947_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112948_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112950_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112951_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112953_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112954_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112956_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj112934
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
          (##unchecked-structure-set! __obj112934 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 '#f '11 '#f '#f))
        (let ((__tmp112937 |gx[1]#_g112938_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 __tmp112937 '12 '#f '#f))
        (let ((__tmp112939 |gx[1]#_g112940_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 __tmp112939 '13 '#f '#f))
        (let ((__tmp112941 |gx[1]#_g112942_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 __tmp112941 '14 '#f '#f))
        (let ((__tmp112943
               (cons (cons 'e |gx[1]#_g112944_|)
                     (cons (cons 'source |gx[1]#_g112945_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 __tmp112943 '15 '#f '#f))
        (let ((__tmp112946
               (cons (cons 'e |gx[1]#_g112947_|)
                     (cons (cons 'source |gx[1]#_g112948_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 __tmp112946 '16 '#f '#f))
        (let ((__tmp112949
               (cons (cons 'e |gx[1]#_g112950_|)
                     (cons (cons 'source |gx[1]#_g112951_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 __tmp112949 '17 '#f '#f))
        (let ((__tmp112952
               (cons (cons 'e |gx[1]#_g112953_|)
                     (cons (cons 'source |gx[1]#_g112954_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 __tmp112952 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112934 '() '20 '#f '#f))
        __obj112934))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx111529%_)
        (let* ((_%g111533111547%_
                (lambda (_%g111534111543%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g111534111543%_)))
               (_%g111532111589%_
                (lambda (_%g111534111551%_)
                  (if (gx#stx-pair? _%g111534111551%_)
                      (let ((_%e111536111554%_
                             (gx#syntax-e _%g111534111551%_)))
                        (let ((_%hd111537111558%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111536111554%_)))
                              (_%tl111538111561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111536111554%_))))
                          (if (gx#stx-pair? _%tl111538111561%_)
                              (let ((_%e111539111564%_
                                     (gx#syntax-e _%tl111538111561%_)))
                                (let ((_%hd111540111568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e111539111564%_)))
                                      (_%tl111541111571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e111539111564%_))))
                                  (if (gx#stx-null? _%tl111541111571%_)
                                      ((lambda (_%L111574%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L111574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L111574%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd111540111568%_)
                                      (_%g111533111547%_ _%g111534111551%_))))
                              (_%g111533111547%_ _%g111534111551%_))))
                      (_%g111533111547%_ _%g111534111551%_)))))
          (_%g111532111589%_ _%$stx111529%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx111593%_)
        (letrec ((_%generate111596%_
                  (lambda (_%tgt111745%_ _%kws111747%_ _%clauses111748%_)
                    (letrec ((_%generate-clause111750%_
                              (lambda (_%hd112685%_ _%E112687%_)
                                (let* ((_%__stx112837112838%_ _%hd112685%_)
                                       (_%g112691112718%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx112837112838%_))))
                                  (let ((_%__kont112840112841%_
                                         (lambda (_%L112814%_ _%L112816%_)
                                           (_%generate1111752%_
                                            _%hd112685%_
                                            _%L112816%_
                                            '#t
                                            _%L112814%_
                                            _%E112687%_)))
                                        (_%__kont112842112843%_
                                         (lambda (_%L112766%_
                                                  _%L112768%_
                                                  _%L112769%_)
                                           (_%generate1111752%_
                                            _%hd112685%_
                                            _%L112769%_
                                            _%L112768%_
                                            _%L112766%_
                                            _%E112687%_)))
                                        (_%__kont112844112845%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx111593%_
                                            _%hd112685%_))))
                                    (if (gx#stx-pair? _%__stx112837112838%_)
                                        (let ((_%e112695112794%_
                                               (gx#syntax-e
                                                _%__stx112837112838%_)))
                                          (let ((_%tl112697112801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112695112794%_)))
                                                (_%hd112696112798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112695112794%_))))
                                            (if (gx#stx-pair?
                                                 _%tl112697112801%_)
                                                (let ((_%e112698112804%_
                                                       (gx#syntax-e
                                                        _%tl112697112801%_)))
                                                  (let ((_%tl112700112811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e112698112804%_)))
                                                        (_%hd112699112808%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e112698112804%_))))
                                                    (if (gx#stx-null?
                                                         _%tl112700112811%_)
                                                        (_%__kont112840112841%_
                                                         _%hd112699112808%_
                                                         _%hd112696112798%_)
                                                        (if (gx#stx-pair?
                                                             _%tl112700112811%_)
                                                            (let ((_%e112710112756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl112700112811%_)))
                      (let ((_%tl112712112763%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112710112756%_)))
                            (_%hd112711112760%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112710112756%_))))
                        (if (gx#stx-null? _%tl112712112763%_)
                            (_%__kont112842112843%_
                             _%hd112711112760%_
                             _%hd112699112808%_
                             _%hd112696112798%_)
                            (_%__kont112844112845%_))))
                    (_%__kont112844112845%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont112844112845%_))))
                                        (_%__kont112844112845%_))))))
                             (_%generate1111752%_
                              (lambda (_%where112138%_
                                       _%hd112140%_
                                       _%fender112141%_
                                       _%body112142%_
                                       _%E112143%_)
                                (letrec ((_%recur112145%_
                                          (lambda (_%hd112148%_
                                                   _%tgt112150%_
                                                   _%K112151%_)
                                            (let* ((_%__stx112883112884%_
                                                    _%hd112148%_)
                                                   (_%g112154112166%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx112883112884%_))))
                                              (let ((_%__kont112886112887%_
                                                     (lambda (_%L112475%_
                                                              _%L112477%_)
                                                       (let* ((_%g112488112496%_
                                                               (lambda (_%g112489112492%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g112489112492%_)))
                      (_%g112487112677%_
                       (lambda (_%g112489112500%_)
                         ((lambda (_%L112503%_)
                            (let* ((_%g112515112523%_
                                    (lambda (_%g112516112519%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g112516112519%_)))
                                   (_%g112514112673%_
                                    (lambda (_%g112516112527%_)
                                      ((lambda (_%L112530%_)
                                         (let* ((_%g112543112551%_
                                                 (lambda (_%g112544112547%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g112544112547%_)))
                                                (_%g112542112669%_
                                                 (lambda (_%g112544112555%_)
                                                   ((lambda (_%L112558%_)
                                                      (let* ((_%g112571112579%_
                                                              (lambda (_%g112572112575%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g112572112575%_)))
                     (_%g112570112665%_
                      (lambda (_%g112572112583%_)
                        ((lambda (_%L112586%_)
                           (let* ((_%g112599112607%_
                                   (lambda (_%g112600112603%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112600112603%_)))
                                  (_%g112598112661%_
                                   (lambda (_%g112600112611%_)
                                     ((lambda (_%L112614%_)
                                        (let* ((_%g112627112635%_
                                                (lambda (_%g112628112631%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g112628112631%_)))
                                               (_%g112626112657%_
                                                (lambda (_%g112628112639%_)
                                                  ((lambda (_%L112642%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L112503%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L112530%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L112503%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L112558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L112530%_ '()))
                                       '()))
                           (cons (cons _%L112586%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L112530%_ '()))
                                             '()))
                                 '()))
                     (cons _%L112614%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L112642%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g112628112639%_))))
                                          (_%g112626112657%_ _%E112143%_)))
                                      _%g112600112611%_))))
                             (_%g112598112661%_
                              (_%recur112145%_
                               _%L112477%_
                               _%L112558%_
                               (_%recur112145%_
                                _%L112475%_
                                _%L112586%_
                                _%K112151%_)))))
                         _%g112572112583%_))))
                (_%g112570112665%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g112544112555%_))))
                                           (_%g112542112669%_
                                            (gx#genident 'hd))))
                                       _%g112516112527%_))))
                              (_%g112514112673%_ (gx#genident 'e))))
                          _%g112489112500%_))))
                 (_%g112487112677%_ _%tgt112150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont112888112889%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112148%_)
                                                           (if (gx#underscore?
                                                                _%hd112148%_)
                                                               _%K112151%_
                                                               (if (let ((__tmp112955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g112180112182%_)
                                    (gx#bound-identifier=?
                                     _%g112180112182%_
                                     _%hd112148%_))))
                             (declare (not safe))
                             (__find __tmp112955 _%kws111747%_))
                           (let* ((_%g112188112203%_
                                   (lambda (_%g112189112199%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112189112199%_)))
                                  (_%g112187112256%_
                                   (lambda (_%g112189112207%_)
                                     (if (gx#stx-pair? _%g112189112207%_)
                                         (let ((_%e112192112210%_
                                                (gx#syntax-e
                                                 _%g112189112207%_)))
                                           (let ((_%hd112193112214%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e112192112210%_)))
                                                 (_%tl112194112217%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e112192112210%_))))
                                             (if (gx#stx-pair?
                                                  _%tl112194112217%_)
                                                 (let ((_%e112195112220%_
                                                        (gx#syntax-e
                                                         _%tl112194112217%_)))
                                                   (let ((_%hd112196112224%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e112195112220%_)))
                                                         (_%tl112197112227%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e112195112220%_))))
                                                     (if (gx#stx-null?
                                                          _%tl112197112227%_)
                                                         ((lambda (_%L112230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L112232%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L112232%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L112232%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L112230%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K112151%_ (cons _%E112143%_ '())))))
                  _%hd112196112224%_
                  _%hd112193112214%_)
                 (_%g112188112203%_ _%g112189112207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g112188112203%_
                                                  _%g112189112207%_))))
                                         (_%g112188112203%_
                                          _%g112189112207%_)))))
                             (_%g112187112256%_
                              (list _%tgt112150%_ _%hd112148%_)))
                           (let* ((_%g112262112277%_
                                   (lambda (_%g112263112273%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112263112273%_)))
                                  (_%g112261112322%_
                                   (lambda (_%g112263112281%_)
                                     (if (gx#stx-pair? _%g112263112281%_)
                                         (let ((_%e112266112284%_
                                                (gx#syntax-e
                                                 _%g112263112281%_)))
                                           (let ((_%hd112267112288%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e112266112284%_)))
                                                 (_%tl112268112291%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e112266112284%_))))
                                             (if (gx#stx-pair?
                                                  _%tl112268112291%_)
                                                 (let ((_%e112269112294%_
                                                        (gx#syntax-e
                                                         _%tl112268112291%_)))
                                                   (let ((_%hd112270112298%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e112269112294%_)))
                                                         (_%tl112271112301%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e112269112294%_))))
                                                     (if (gx#stx-null?
                                                          _%tl112271112301%_)
                                                         ((lambda (_%L112304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L112306%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L112304%_ (cons _%L112306%_ '()))
                                      '())
                                (cons _%K112151%_ '()))))
                  _%hd112270112298%_
                  _%hd112267112288%_)
                 (_%g112262112277%_ _%g112263112281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g112262112277%_
                                                  _%g112263112281%_))))
                                         (_%g112262112277%_
                                          _%g112263112281%_)))))
                             (_%g112261112322%_
                              (list _%tgt112150%_ _%hd112148%_)))))
                   (if (gx#stx-null? _%hd112148%_)
                       (let* ((_%g112328112336%_
                               (lambda (_%g112329112332%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g112329112332%_)))
                              (_%g112327112355%_
                               (lambda (_%g112329112340%_)
                                 ((lambda (_%L112343%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L112343%_ '()))
                                                (cons _%K112151%_
                                                      (cons _%E112143%_
                                                            '())))))
                                  _%g112329112340%_))))
                         (_%g112327112355%_ _%tgt112150%_))
                       (if (gx#stx-datum? _%hd112148%_)
                           (let* ((_%g112361112380%_
                                   (lambda (_%g112362112376%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112362112376%_)))
                                  (_%g112360112439%_
                                   (lambda (_%g112362112384%_)
                                     (if (gx#stx-pair? _%g112362112384%_)
                                         (let ((_%e112366112387%_
                                                (gx#syntax-e
                                                 _%g112362112384%_)))
                                           (let ((_%hd112367112391%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e112366112387%_)))
                                                 (_%tl112368112394%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e112366112387%_))))
                                             (if (gx#stx-pair?
                                                  _%tl112368112394%_)
                                                 (let ((_%e112369112397%_
                                                        (gx#syntax-e
                                                         _%tl112368112394%_)))
                                                   (let ((_%hd112370112401%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e112369112397%_)))
                                                         (_%tl112371112404%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e112369112397%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl112371112404%_)
                                                         (let ((_%e112372112407%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl112371112404%_)))
                   (let ((_%hd112373112411%_
                          (let ()
                            (declare (not safe))
                            (##car _%e112372112407%_)))
                         (_%tl112374112414%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e112372112407%_))))
                     (if (gx#stx-null? _%tl112374112414%_)
                         ((lambda (_%L112417%_ _%L112419%_ _%L112420%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L112417%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L112420%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L112419%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K112151%_
                                              (cons _%E112143%_ '())))))
                          _%hd112373112411%_
                          _%hd112370112401%_
                          _%hd112367112391%_)
                         (_%g112361112380%_ _%g112362112384%_))))
                 (_%g112361112380%_ _%g112362112384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g112361112380%_
                                                  _%g112362112384%_))))
                                         (_%g112361112380%_
                                          _%g112362112384%_)))))
                             (_%g112360112439%_
                              (list _%tgt112150%_
                                    _%hd112148%_
                                    (let ((_%e112443%_
                                           (gx#stx-e _%hd112148%_)))
                                      (if (or (keyword? _%e112443%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e112443%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e112443%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx111593%_
                            _%where112138%_
                            _%hd112148%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx112883112884%_)
                                                    (let ((_%e112158112465%_
                                                           (gx#syntax-e
                                                            _%__stx112883112884%_)))
                                                      (let ((_%tl112160112472%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112158112465%_)))
                    (_%hd112159112469%_
                     (let () (declare (not safe)) (##car _%e112158112465%_))))
                (_%__kont112886112887%_
                 _%tl112160112472%_
                 _%hd112159112469%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont112888112889%_)))))))
                                  (_%recur112145%_
                                   _%hd112140%_
                                   _%tgt111745%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112141%_
                                               (cons _%body112142%_
                                                     (cons _%E112143%_
                                                           '()))))))))
                             (_%generate-clauses111753%_
                              (lambda (_%clauses111876%_)
                                (let _%lp111879%_ ((_%rest111882%_
                                                    _%clauses111876%_)
                                                   (_%E111884%_
                                                    (gx#genident 'E))
                                                   (_%r111885%_ '()))
                                  (let* ((_%__stx112919112920%_ _%rest111882%_)
                                         (_%g111888111900%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx112919112920%_))))
                                    (let ((_%__kont112922112923%_
                                           (lambda (_%L111965%_ _%L111967%_)
                                             (let* ((_%__stx112899112900%_
                                                     _%L111967%_)
                                                    (_%g111979111990%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx112899112900%_))))
                                               (let ((_%__kont112902112903%_
                                                      (lambda (_%L112119%_)
                                                        (if (gx#stx-null?
                                                             _%L111965%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112119%_)
                             (not (gx#stx-null? _%L112119%_)))
                        (cons (cons _%E111884%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112119%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L111967%_))
                                          '()))
                              _%r111885%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx111593%_
                         _%L111967%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx111593%_
                     _%L111967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont112904112905%_
                                                      (lambda ()
                                                        (let* ((_%g112001112009%_
                                                                (lambda (_%g112002112005%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112002112005%_)))
                       (_%g112000112098%_
                        (lambda (_%g112002112013%_)
                          ((lambda (_%L112016%_)
                             (let* ((_%g112032112040%_
                                     (lambda (_%g112033112036%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112033112036%_)))
                                    (_%g112031112094%_
                                     (lambda (_%g112033112044%_)
                                       ((lambda (_%L112047%_)
                                          (let* ((_%g112060112068%_
                                                  (lambda (_%g112061112064%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g112061112064%_)))
                                                 (_%g112059112090%_
                                                  (lambda (_%g112061112072%_)
                                                    ((lambda (_%L112075%_)
                                                       (_%lp111879%_
                                                        _%L111965%_
                                                        _%L112016%_
                                                        (cons (cons _%E111884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L112075%_ '()))
                      _%r111885%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g112061112072%_))))
                                            (_%g112059112090%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L112047%_
                                                                '())))
                                              (gx#stx-source _%L111967%_)))))
                                        _%g112033112044%_))))
                               (_%g112031112094%_
                                (_%generate-clause111750%_
                                 _%L111967%_
                                 (cons _%L112016%_ '())))))
                           _%g112002112013%_))))
                  (_%g112000112098%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx112899112900%_)
                                                     (let ((_%e111982112109%_
                                                            (gx#syntax-e
                                                             _%__stx112899112900%_)))
                                                       (let ((_%tl111984112116%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e111982112109%_)))
                     (_%hd111983112113%_
                      (let () (declare (not safe)) (##car _%e111982112109%_))))
                 (if (gx#identifier? _%hd111983112113%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g112956_|
                          _%hd111983112113%_)
                         (_%__kont112902112903%_ _%tl111984112116%_)
                         (_%__kont112904112905%_))
                     (_%__kont112904112905%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont112904112905%_))))))
                                          (_%__kont112924112925%_
                                           (lambda ()
                                             (let* ((_%g111911111919%_
                                                     (lambda (_%g111912111915%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g111912111915%_)))
                                                    (_%g111910111944%_
                                                     (lambda (_%g111912111923%_)
                                                       ((lambda (_%L111926%_)
                                                          (cons (cons _%E111884%_
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
                                 (cons _%L111926%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx111593%_))
                                    '()))
                        _%r111885%_))
                _%g111912111923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g111910111944%_
                                                _%tgt111745%_)))))
                                      (if (gx#stx-pair? _%__stx112919112920%_)
                                          (let ((_%e111892111955%_
                                                 (gx#syntax-e
                                                  _%__stx112919112920%_)))
                                            (let ((_%tl111894111962%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e111892111955%_)))
                                                  (_%hd111893111959%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e111892111955%_))))
                                              (_%__kont112922112923%_
                                               _%tl111894111962%_
                                               _%hd111893111959%_)))
                                          (_%__kont112924112925%_))))))))
                      (let* ((_%bind111755%_
                              (_%generate-clauses111753%_ _%clauses111748%_))
                             (_%g111758111775%_
                              (lambda (_%g111759111771%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g111759111771%_)))
                             (_%g111757111872%_
                              (lambda (_%g111759111779%_)
                                (if (gx#stx-pair/null? _%g111759111779%_)
                                    (let ((_g112957_
                                           (gx#syntax-split-splice
                                            _%g111759111779%_
                                            '0)))
                                      (begin
                                        (let ((_g112958_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g112957_)
                                                     (##vector-length
                                                      _g112957_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g112958_ 2)))
                                              (error "Context expects 2 values"
                                                     _g112958_)))
                                        (let ((_%target111761111782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g112957_ 0)))
                                              (_%tl111763111785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g112957_ 1))))
                                          (if (gx#stx-null? _%tl111763111785%_)
                                              (letrec ((_%loop111764111788%_
                                                        (lambda (_%hd111762111792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try111768111795%_)
                  (if (gx#stx-pair? _%hd111762111792%_)
                      (let ((_%e111765111798%_
                             (gx#syntax-e _%hd111762111792%_)))
                        (let ((_%lp-hd111766111802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111765111798%_)))
                              (_%lp-tl111767111805%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111765111798%_))))
                          (_%loop111764111788%_
                           _%lp-tl111767111805%_
                           (cons _%lp-hd111766111802%_
                                 _%bind-try111768111795%_))))
                      (let ((_%bind-try111769111808%_
                             (reverse _%bind-try111768111795%_)))
                        ((lambda (_%L111812%_)
                           (let* ((_%g111830111838%_
                                   (lambda (_%g111831111834%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g111831111834%_)))
                                  (_%g111829111868%_
                                   (lambda (_%g111831111842%_)
                                     ((lambda (_%L111845%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp112959
                                                           (lambda (_%g111859111862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g111860111865%_)
                     (cons _%g111859111862%_ _%g111860111865%_))))
              (declare (not safe))
              (__foldr1 __tmp112959 '() _%L111812%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L111845%_
                                                                '())
                                                          '()))))
                                      _%g111831111842%_))))
                             (_%g111829111868%_ (car (last _%bind111755%_)))))
                         _%bind-try111769111808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop111764111788%_
                                                 _%target111761111782%_
                                                 '()))
                                              (_%g111758111775%_
                                               _%g111759111779%_)))))
                                    (_%g111758111775%_ _%g111759111779%_)))))
                        (_%g111757111872%_ _%bind111755%_))))))
          (let* ((_%g111599111618%_
                  (lambda (_%g111600111614%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g111600111614%_)))
                 (_%g111598111741%_
                  (lambda (_%g111600111622%_)
                    (if (gx#stx-pair? _%g111600111622%_)
                        (let ((_%e111604111625%_
                               (gx#syntax-e _%g111600111622%_)))
                          (let ((_%hd111605111629%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111604111625%_)))
                                (_%tl111606111632%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111604111625%_))))
                            (if (gx#stx-pair? _%tl111606111632%_)
                                (let ((_%e111607111635%_
                                       (gx#syntax-e _%tl111606111632%_)))
                                  (let ((_%hd111608111639%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e111607111635%_)))
                                        (_%tl111609111642%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e111607111635%_))))
                                    (if (gx#stx-pair? _%tl111609111642%_)
                                        (let ((_%e111610111645%_
                                               (gx#syntax-e
                                                _%tl111609111642%_)))
                                          (let ((_%hd111611111649%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e111610111645%_)))
                                                (_%tl111612111652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e111610111645%_))))
                                            ((lambda (_%L111655%_
                                                      _%L111657%_
                                                      _%L111658%_)
                                               (if (and (gx#identifier-list?
                                                         _%L111657%_)
                                                        (gx#stx-list?
                                                         _%L111655%_))
                                                   (let* ((_%g111676111684%_
                                                           (lambda (_%g111677111680%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g111677111680%_)))
                                                          (_%g111675111737%_
                                                           (lambda (_%g111677111688%_)
                                                             ((lambda (_%L111691%_)
                                                                (let* ((_%g111703111711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g111704111707%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g111704111707%_)))
                               (_%g111702111733%_
                                (lambda (_%g111704111715%_)
                                  ((lambda (_%L111718%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L111691%_
                                                             (cons _%L111658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L111718%_ '()))))
                                   _%g111704111715%_))))
                          (_%g111702111733%_
                           (_%generate111596%_
                            _%L111691%_
                            (gx#syntax->list _%L111657%_)
                            _%L111655%_))))
                      _%g111677111688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g111675111737%_
                                                      (gx#genident 'e)))
                                                   (_%g111599111618%_
                                                    _%g111600111622%_)))
                                             _%tl111612111652%_
                                             _%hd111611111649%_
                                             _%hd111608111639%_)))
                                        (_%g111599111618%_
                                         _%g111600111622%_))))
                                (_%g111599111618%_ _%g111600111622%_))))
                        (_%g111599111618%_ _%g111600111622%_)))))
            (_%g111598111741%_ _%stx111593%_)))))))
