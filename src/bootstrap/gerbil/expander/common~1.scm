(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g128754_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128756_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128758_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128760_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128761_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128763_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128764_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128766_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128767_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128769_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128770_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128772_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj128750
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
          (##unchecked-structure-set! __obj128750 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 '#f '12 '#f '#f))
        (let ((__tmp128753 |gx[1]#_g128754_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 __tmp128753 '3 '#f '#f))
        (let ((__tmp128755 |gx[1]#_g128756_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 __tmp128755 '13 '#f '#f))
        (let ((__tmp128757 |gx[1]#_g128758_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 __tmp128757 '14 '#f '#f))
        (let ((__tmp128759
               (cons (cons 'e |gx[1]#_g128760_|)
                     (cons (cons 'source |gx[1]#_g128761_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 __tmp128759 '15 '#f '#f))
        (let ((__tmp128762
               (cons (cons 'e |gx[1]#_g128763_|)
                     (cons (cons 'source |gx[1]#_g128764_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 __tmp128762 '16 '#f '#f))
        (let ((__tmp128765
               (cons (cons 'e |gx[1]#_g128766_|)
                     (cons (cons 'source |gx[1]#_g128767_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 __tmp128765 '17 '#f '#f))
        (let ((__tmp128768
               (cons (cons 'e |gx[1]#_g128769_|)
                     (cons (cons 'source |gx[1]#_g128770_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 __tmp128768 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj128750 '() '20 '#f '#f))
        __obj128750))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx127345%_)
        (let* ((_%g127349127363%_
                (lambda (_%g127350127359%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g127350127359%_)))
               (_%g127348127405%_
                (lambda (_%g127350127367%_)
                  (if (gx#stx-pair? _%g127350127367%_)
                      (let ((_%e127352127370%_
                             (gx#syntax-e _%g127350127367%_)))
                        (let ((_%hd127353127374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e127352127370%_)))
                              (_%tl127354127377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e127352127370%_))))
                          (if (gx#stx-pair? _%tl127354127377%_)
                              (let ((_%e127355127380%_
                                     (gx#syntax-e _%tl127354127377%_)))
                                (let ((_%hd127356127384%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e127355127380%_)))
                                      (_%tl127357127387%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e127355127380%_))))
                                  (if (gx#stx-null? _%tl127357127387%_)
                                      ((lambda (_%L127390%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L127390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L127390%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd127356127384%_)
                                      (_%g127349127363%_ _%g127350127367%_))))
                              (_%g127349127363%_ _%g127350127367%_))))
                      (_%g127349127363%_ _%g127350127367%_)))))
          (_%g127348127405%_ _%$stx127345%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx127409%_)
        (letrec ((_%generate127412%_
                  (lambda (_%tgt127561%_ _%kws127563%_ _%clauses127564%_)
                    (letrec ((_%generate-clause127566%_
                              (lambda (_%hd128501%_ _%E128503%_)
                                (let* ((_%__stx128653128654%_ _%hd128501%_)
                                       (_%g128507128534%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx128653128654%_))))
                                  (let ((_%__kont128656128657%_
                                         (lambda (_%L128630%_ _%L128632%_)
                                           (_%generate1127568%_
                                            _%hd128501%_
                                            _%L128632%_
                                            '#t
                                            _%L128630%_
                                            _%E128503%_)))
                                        (_%__kont128658128659%_
                                         (lambda (_%L128582%_
                                                  _%L128584%_
                                                  _%L128585%_)
                                           (_%generate1127568%_
                                            _%hd128501%_
                                            _%L128585%_
                                            _%L128584%_
                                            _%L128582%_
                                            _%E128503%_)))
                                        (_%__kont128660128661%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx127409%_
                                            _%hd128501%_))))
                                    (if (gx#stx-pair? _%__stx128653128654%_)
                                        (let ((_%e128511128610%_
                                               (gx#syntax-e
                                                _%__stx128653128654%_)))
                                          (let ((_%tl128513128617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e128511128610%_)))
                                                (_%hd128512128614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e128511128610%_))))
                                            (if (gx#stx-pair?
                                                 _%tl128513128617%_)
                                                (let ((_%e128514128620%_
                                                       (gx#syntax-e
                                                        _%tl128513128617%_)))
                                                  (let ((_%tl128516128627%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e128514128620%_)))
                                                        (_%hd128515128624%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e128514128620%_))))
                                                    (if (gx#stx-null?
                                                         _%tl128516128627%_)
                                                        (_%__kont128656128657%_
                                                         _%hd128515128624%_
                                                         _%hd128512128614%_)
                                                        (if (gx#stx-pair?
                                                             _%tl128516128627%_)
                                                            (let ((_%e128526128572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl128516128627%_)))
                      (let ((_%tl128528128579%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e128526128572%_)))
                            (_%hd128527128576%_
                             (let ()
                               (declare (not safe))
                               (##car _%e128526128572%_))))
                        (if (gx#stx-null? _%tl128528128579%_)
                            (_%__kont128658128659%_
                             _%hd128527128576%_
                             _%hd128515128624%_
                             _%hd128512128614%_)
                            (_%__kont128660128661%_))))
                    (_%__kont128660128661%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont128660128661%_))))
                                        (_%__kont128660128661%_))))))
                             (_%generate1127568%_
                              (lambda (_%where127954%_
                                       _%hd127956%_
                                       _%fender127957%_
                                       _%body127958%_
                                       _%E127959%_)
                                (letrec ((_%recur127961%_
                                          (lambda (_%hd127964%_
                                                   _%tgt127966%_
                                                   _%K127967%_)
                                            (let* ((_%__stx128699128700%_
                                                    _%hd127964%_)
                                                   (_%g127970127982%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx128699128700%_))))
                                              (let ((_%__kont128702128703%_
                                                     (lambda (_%L128291%_
                                                              _%L128293%_)
                                                       (let* ((_%g128304128312%_
                                                               (lambda (_%g128305128308%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g128305128308%_)))
                      (_%g128303128493%_
                       (lambda (_%g128305128316%_)
                         ((lambda (_%L128319%_)
                            (let* ((_%g128331128339%_
                                    (lambda (_%g128332128335%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g128332128335%_)))
                                   (_%g128330128489%_
                                    (lambda (_%g128332128343%_)
                                      ((lambda (_%L128346%_)
                                         (let* ((_%g128359128367%_
                                                 (lambda (_%g128360128363%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g128360128363%_)))
                                                (_%g128358128485%_
                                                 (lambda (_%g128360128371%_)
                                                   ((lambda (_%L128374%_)
                                                      (let* ((_%g128387128395%_
                                                              (lambda (_%g128388128391%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g128388128391%_)))
                     (_%g128386128481%_
                      (lambda (_%g128388128399%_)
                        ((lambda (_%L128402%_)
                           (let* ((_%g128415128423%_
                                   (lambda (_%g128416128419%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128416128419%_)))
                                  (_%g128414128477%_
                                   (lambda (_%g128416128427%_)
                                     ((lambda (_%L128430%_)
                                        (let* ((_%g128443128451%_
                                                (lambda (_%g128444128447%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g128444128447%_)))
                                               (_%g128442128473%_
                                                (lambda (_%g128444128455%_)
                                                  ((lambda (_%L128458%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L128319%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L128346%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L128319%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L128374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L128346%_ '()))
                                       '()))
                           (cons (cons _%L128402%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L128346%_ '()))
                                             '()))
                                 '()))
                     (cons _%L128430%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L128458%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g128444128455%_))))
                                          (_%g128442128473%_ _%E127959%_)))
                                      _%g128416128427%_))))
                             (_%g128414128477%_
                              (_%recur127961%_
                               _%L128293%_
                               _%L128374%_
                               (_%recur127961%_
                                _%L128291%_
                                _%L128402%_
                                _%K127967%_)))))
                         _%g128388128399%_))))
                (_%g128386128481%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g128360128371%_))))
                                           (_%g128358128485%_
                                            (gx#genident 'hd))))
                                       _%g128332128343%_))))
                              (_%g128330128489%_ (gx#genident 'e))))
                          _%g128305128316%_))))
                 (_%g128303128493%_ _%tgt127966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont128704128705%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd127964%_)
                                                           (if (gx#underscore?
                                                                _%hd127964%_)
                                                               _%K127967%_
                                                               (if (let ((__tmp128771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g127996127998%_)
                                    (gx#bound-identifier=?
                                     _%g127996127998%_
                                     _%hd127964%_))))
                             (declare (not safe))
                             (__find __tmp128771 _%kws127563%_))
                           (let* ((_%g128004128019%_
                                   (lambda (_%g128005128015%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128005128015%_)))
                                  (_%g128003128072%_
                                   (lambda (_%g128005128023%_)
                                     (if (gx#stx-pair? _%g128005128023%_)
                                         (let ((_%e128008128026%_
                                                (gx#syntax-e
                                                 _%g128005128023%_)))
                                           (let ((_%hd128009128030%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128008128026%_)))
                                                 (_%tl128010128033%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128008128026%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128010128033%_)
                                                 (let ((_%e128011128036%_
                                                        (gx#syntax-e
                                                         _%tl128010128033%_)))
                                                   (let ((_%hd128012128040%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128011128036%_)))
                                                         (_%tl128013128043%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128011128036%_))))
                                                     (if (gx#stx-null?
                                                          _%tl128013128043%_)
                                                         ((lambda (_%L128046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L128048%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L128048%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L128048%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L128046%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K127967%_ (cons _%E127959%_ '())))))
                  _%hd128012128040%_
                  _%hd128009128030%_)
                 (_%g128004128019%_ _%g128005128023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128004128019%_
                                                  _%g128005128023%_))))
                                         (_%g128004128019%_
                                          _%g128005128023%_)))))
                             (_%g128003128072%_
                              (list _%tgt127966%_ _%hd127964%_)))
                           (let* ((_%g128078128093%_
                                   (lambda (_%g128079128089%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128079128089%_)))
                                  (_%g128077128138%_
                                   (lambda (_%g128079128097%_)
                                     (if (gx#stx-pair? _%g128079128097%_)
                                         (let ((_%e128082128100%_
                                                (gx#syntax-e
                                                 _%g128079128097%_)))
                                           (let ((_%hd128083128104%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128082128100%_)))
                                                 (_%tl128084128107%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128082128100%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128084128107%_)
                                                 (let ((_%e128085128110%_
                                                        (gx#syntax-e
                                                         _%tl128084128107%_)))
                                                   (let ((_%hd128086128114%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128085128110%_)))
                                                         (_%tl128087128117%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128085128110%_))))
                                                     (if (gx#stx-null?
                                                          _%tl128087128117%_)
                                                         ((lambda (_%L128120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L128122%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L128120%_ (cons _%L128122%_ '()))
                                      '())
                                (cons _%K127967%_ '()))))
                  _%hd128086128114%_
                  _%hd128083128104%_)
                 (_%g128078128093%_ _%g128079128097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128078128093%_
                                                  _%g128079128097%_))))
                                         (_%g128078128093%_
                                          _%g128079128097%_)))))
                             (_%g128077128138%_
                              (list _%tgt127966%_ _%hd127964%_)))))
                   (if (gx#stx-null? _%hd127964%_)
                       (let* ((_%g128144128152%_
                               (lambda (_%g128145128148%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g128145128148%_)))
                              (_%g128143128171%_
                               (lambda (_%g128145128156%_)
                                 ((lambda (_%L128159%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L128159%_ '()))
                                                (cons _%K127967%_
                                                      (cons _%E127959%_
                                                            '())))))
                                  _%g128145128156%_))))
                         (_%g128143128171%_ _%tgt127966%_))
                       (if (gx#stx-datum? _%hd127964%_)
                           (let* ((_%g128177128196%_
                                   (lambda (_%g128178128192%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g128178128192%_)))
                                  (_%g128176128255%_
                                   (lambda (_%g128178128200%_)
                                     (if (gx#stx-pair? _%g128178128200%_)
                                         (let ((_%e128182128203%_
                                                (gx#syntax-e
                                                 _%g128178128200%_)))
                                           (let ((_%hd128183128207%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e128182128203%_)))
                                                 (_%tl128184128210%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e128182128203%_))))
                                             (if (gx#stx-pair?
                                                  _%tl128184128210%_)
                                                 (let ((_%e128185128213%_
                                                        (gx#syntax-e
                                                         _%tl128184128210%_)))
                                                   (let ((_%hd128186128217%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e128185128213%_)))
                                                         (_%tl128187128220%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e128185128213%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl128187128220%_)
                                                         (let ((_%e128188128223%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl128187128220%_)))
                   (let ((_%hd128189128227%_
                          (let ()
                            (declare (not safe))
                            (##car _%e128188128223%_)))
                         (_%tl128190128230%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e128188128223%_))))
                     (if (gx#stx-null? _%tl128190128230%_)
                         ((lambda (_%L128233%_ _%L128235%_ _%L128236%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L128233%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L128236%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L128235%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K127967%_
                                              (cons _%E127959%_ '())))))
                          _%hd128189128227%_
                          _%hd128186128217%_
                          _%hd128183128207%_)
                         (_%g128177128196%_ _%g128178128200%_))))
                 (_%g128177128196%_ _%g128178128200%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g128177128196%_
                                                  _%g128178128200%_))))
                                         (_%g128177128196%_
                                          _%g128178128200%_)))))
                             (_%g128176128255%_
                              (list _%tgt127966%_
                                    _%hd127964%_
                                    (let ((_%e128259%_
                                           (gx#stx-e _%hd127964%_)))
                                      (if (or (keyword? _%e128259%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e128259%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e128259%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx127409%_
                            _%where127954%_
                            _%hd127964%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx128699128700%_)
                                                    (let ((_%e127974128281%_
                                                           (gx#syntax-e
                                                            _%__stx128699128700%_)))
                                                      (let ((_%tl127976128288%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e127974128281%_)))
                    (_%hd127975128285%_
                     (let () (declare (not safe)) (##car _%e127974128281%_))))
                (_%__kont128702128703%_
                 _%tl127976128288%_
                 _%hd127975128285%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont128704128705%_)))))))
                                  (_%recur127961%_
                                   _%hd127956%_
                                   _%tgt127561%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender127957%_
                                               (cons _%body127958%_
                                                     (cons _%E127959%_
                                                           '()))))))))
                             (_%generate-clauses127569%_
                              (lambda (_%clauses127692%_)
                                (let _%lp127695%_ ((_%rest127698%_
                                                    _%clauses127692%_)
                                                   (_%E127700%_
                                                    (gx#genident 'E))
                                                   (_%r127701%_ '()))
                                  (let* ((_%__stx128735128736%_ _%rest127698%_)
                                         (_%g127704127716%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx128735128736%_))))
                                    (let ((_%__kont128738128739%_
                                           (lambda (_%L127781%_ _%L127783%_)
                                             (let* ((_%__stx128715128716%_
                                                     _%L127783%_)
                                                    (_%g127795127806%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx128715128716%_))))
                                               (let ((_%__kont128718128719%_
                                                      (lambda (_%L127935%_)
                                                        (if (gx#stx-null?
                                                             _%L127781%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L127935%_)
                             (not (gx#stx-null? _%L127935%_)))
                        (cons (cons _%E127700%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L127935%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L127783%_))
                                          '()))
                              _%r127701%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx127409%_
                         _%L127783%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx127409%_
                     _%L127783%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont128720128721%_
                                                      (lambda ()
                                                        (let* ((_%g127817127825%_
                                                                (lambda (_%g127818127821%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g127818127821%_)))
                       (_%g127816127914%_
                        (lambda (_%g127818127829%_)
                          ((lambda (_%L127832%_)
                             (let* ((_%g127848127856%_
                                     (lambda (_%g127849127852%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g127849127852%_)))
                                    (_%g127847127910%_
                                     (lambda (_%g127849127860%_)
                                       ((lambda (_%L127863%_)
                                          (let* ((_%g127876127884%_
                                                  (lambda (_%g127877127880%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g127877127880%_)))
                                                 (_%g127875127906%_
                                                  (lambda (_%g127877127888%_)
                                                    ((lambda (_%L127891%_)
                                                       (_%lp127695%_
                                                        _%L127781%_
                                                        _%L127832%_
                                                        (cons (cons _%E127700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L127891%_ '()))
                      _%r127701%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g127877127888%_))))
                                            (_%g127875127906%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L127863%_
                                                                '())))
                                              (gx#stx-source _%L127783%_)))))
                                        _%g127849127860%_))))
                               (_%g127847127910%_
                                (_%generate-clause127566%_
                                 _%L127783%_
                                 (cons _%L127832%_ '())))))
                           _%g127818127829%_))))
                  (_%g127816127914%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx128715128716%_)
                                                     (let ((_%e127798127925%_
                                                            (gx#syntax-e
                                                             _%__stx128715128716%_)))
                                                       (let ((_%tl127800127932%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e127798127925%_)))
                     (_%hd127799127929%_
                      (let () (declare (not safe)) (##car _%e127798127925%_))))
                 (if (gx#identifier? _%hd127799127929%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g128772_|
                          _%hd127799127929%_)
                         (_%__kont128718128719%_ _%tl127800127932%_)
                         (_%__kont128720128721%_))
                     (_%__kont128720128721%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont128720128721%_))))))
                                          (_%__kont128740128741%_
                                           (lambda ()
                                             (let* ((_%g127727127735%_
                                                     (lambda (_%g127728127731%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g127728127731%_)))
                                                    (_%g127726127760%_
                                                     (lambda (_%g127728127739%_)
                                                       ((lambda (_%L127742%_)
                                                          (cons (cons _%E127700%_
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
                                 (cons _%L127742%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx127409%_))
                                    '()))
                        _%r127701%_))
                _%g127728127739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g127726127760%_
                                                _%tgt127561%_)))))
                                      (if (gx#stx-pair? _%__stx128735128736%_)
                                          (let ((_%e127708127771%_
                                                 (gx#syntax-e
                                                  _%__stx128735128736%_)))
                                            (let ((_%tl127710127778%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e127708127771%_)))
                                                  (_%hd127709127775%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e127708127771%_))))
                                              (_%__kont128738128739%_
                                               _%tl127710127778%_
                                               _%hd127709127775%_)))
                                          (_%__kont128740128741%_))))))))
                      (let* ((_%bind127571%_
                              (_%generate-clauses127569%_ _%clauses127564%_))
                             (_%g127574127591%_
                              (lambda (_%g127575127587%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g127575127587%_)))
                             (_%g127573127688%_
                              (lambda (_%g127575127595%_)
                                (if (gx#stx-pair/null? _%g127575127595%_)
                                    (let ((_g128773_
                                           (gx#syntax-split-splice
                                            _%g127575127595%_
                                            '0)))
                                      (begin
                                        (let ((_g128774_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g128773_)
                                                     (##values-length
                                                      _g128773_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g128774_ 2)))
                                              (error "Context expects 2 values"
                                                     _g128774_)))
                                        (let ((_%target127577127598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g128773_ 0)))
                                              (_%tl127579127601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g128773_ 1))))
                                          (if (gx#stx-null? _%tl127579127601%_)
                                              (letrec ((_%loop127580127604%_
                                                        (lambda (_%hd127578127608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try127584127611%_)
                  (if (gx#stx-pair? _%hd127578127608%_)
                      (let ((_%e127581127614%_
                             (gx#syntax-e _%hd127578127608%_)))
                        (let ((_%lp-hd127582127618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e127581127614%_)))
                              (_%lp-tl127583127621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e127581127614%_))))
                          (_%loop127580127604%_
                           _%lp-tl127583127621%_
                           (cons _%lp-hd127582127618%_
                                 _%bind-try127584127611%_))))
                      (let ((_%bind-try127585127624%_
                             (reverse _%bind-try127584127611%_)))
                        ((lambda (_%L127628%_)
                           (let* ((_%g127646127654%_
                                   (lambda (_%g127647127650%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g127647127650%_)))
                                  (_%g127645127684%_
                                   (lambda (_%g127647127658%_)
                                     ((lambda (_%L127661%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp128775
                                                           (lambda (_%g127675127678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g127676127681%_)
                     (cons _%g127675127678%_ _%g127676127681%_))))
              (declare (not safe))
              (__foldr1 __tmp128775 '() _%L127628%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L127661%_
                                                                '())
                                                          '()))))
                                      _%g127647127658%_))))
                             (_%g127645127684%_ (car (last _%bind127571%_)))))
                         _%bind-try127585127624%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop127580127604%_
                                                 _%target127577127598%_
                                                 '()))
                                              (_%g127574127591%_
                                               _%g127575127595%_)))))
                                    (_%g127574127591%_ _%g127575127595%_)))))
                        (_%g127573127688%_ _%bind127571%_))))))
          (let* ((_%g127415127434%_
                  (lambda (_%g127416127430%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g127416127430%_)))
                 (_%g127414127557%_
                  (lambda (_%g127416127438%_)
                    (if (gx#stx-pair? _%g127416127438%_)
                        (let ((_%e127420127441%_
                               (gx#syntax-e _%g127416127438%_)))
                          (let ((_%hd127421127445%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e127420127441%_)))
                                (_%tl127422127448%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e127420127441%_))))
                            (if (gx#stx-pair? _%tl127422127448%_)
                                (let ((_%e127423127451%_
                                       (gx#syntax-e _%tl127422127448%_)))
                                  (let ((_%hd127424127455%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e127423127451%_)))
                                        (_%tl127425127458%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e127423127451%_))))
                                    (if (gx#stx-pair? _%tl127425127458%_)
                                        (let ((_%e127426127461%_
                                               (gx#syntax-e
                                                _%tl127425127458%_)))
                                          (let ((_%hd127427127465%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e127426127461%_)))
                                                (_%tl127428127468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e127426127461%_))))
                                            ((lambda (_%L127471%_
                                                      _%L127473%_
                                                      _%L127474%_)
                                               (if (and (gx#identifier-list?
                                                         _%L127473%_)
                                                        (gx#stx-list?
                                                         _%L127471%_))
                                                   (let* ((_%g127492127500%_
                                                           (lambda (_%g127493127496%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g127493127496%_)))
                                                          (_%g127491127553%_
                                                           (lambda (_%g127493127504%_)
                                                             ((lambda (_%L127507%_)
                                                                (let* ((_%g127519127527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g127520127523%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g127520127523%_)))
                               (_%g127518127549%_
                                (lambda (_%g127520127531%_)
                                  ((lambda (_%L127534%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L127507%_
                                                             (cons _%L127474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L127534%_ '()))))
                                   _%g127520127531%_))))
                          (_%g127518127549%_
                           (_%generate127412%_
                            _%L127507%_
                            (gx#syntax->list _%L127473%_)
                            _%L127471%_))))
                      _%g127493127504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g127491127553%_
                                                      (gx#genident 'e)))
                                                   (_%g127415127434%_
                                                    _%g127416127438%_)))
                                             _%tl127428127468%_
                                             _%hd127427127465%_
                                             _%hd127424127455%_)))
                                        (_%g127415127434%_
                                         _%g127416127438%_))))
                                (_%g127415127434%_ _%g127416127438%_))))
                        (_%g127415127434%_ _%g127416127438%_)))))
            (_%g127414127557%_ _%stx127409%_)))))))
