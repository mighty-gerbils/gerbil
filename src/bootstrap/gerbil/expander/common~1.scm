(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g116915_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116917_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116919_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116921_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116922_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116924_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116925_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116927_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116928_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116930_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116931_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116933_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj116911
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
          (##unchecked-structure-set! __obj116911 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 '#f '11 '#f '#f))
        (let ((__tmp116914 |gx[1]#_g116915_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 __tmp116914 '12 '#f '#f))
        (let ((__tmp116916 |gx[1]#_g116917_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 __tmp116916 '13 '#f '#f))
        (let ((__tmp116918 |gx[1]#_g116919_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 __tmp116918 '14 '#f '#f))
        (let ((__tmp116920
               (cons (cons 'e |gx[1]#_g116921_|)
                     (cons (cons 'source |gx[1]#_g116922_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 __tmp116920 '15 '#f '#f))
        (let ((__tmp116923
               (cons (cons 'e |gx[1]#_g116924_|)
                     (cons (cons 'source |gx[1]#_g116925_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 __tmp116923 '16 '#f '#f))
        (let ((__tmp116926
               (cons (cons 'e |gx[1]#_g116927_|)
                     (cons (cons 'source |gx[1]#_g116928_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 __tmp116926 '17 '#f '#f))
        (let ((__tmp116929
               (cons (cons 'e |gx[1]#_g116930_|)
                     (cons (cons 'source |gx[1]#_g116931_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 __tmp116929 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116911 '() '20 '#f '#f))
        __obj116911))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx115506%_)
        (let* ((_%g115510115524%_
                (lambda (_%g115511115520%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g115511115520%_)))
               (_%g115509115566%_
                (lambda (_%g115511115528%_)
                  (if (gx#stx-pair? _%g115511115528%_)
                      (let ((_%e115513115531%_
                             (gx#syntax-e _%g115511115528%_)))
                        (let ((_%hd115514115535%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e115513115531%_)))
                              (_%tl115515115538%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e115513115531%_))))
                          (if (gx#stx-pair? _%tl115515115538%_)
                              (let ((_%e115516115541%_
                                     (gx#syntax-e _%tl115515115538%_)))
                                (let ((_%hd115517115545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e115516115541%_)))
                                      (_%tl115518115548%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e115516115541%_))))
                                  (if (gx#stx-null? _%tl115518115548%_)
                                      ((lambda (_%L115551%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L115551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L115551%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd115517115545%_)
                                      (_%g115510115524%_ _%g115511115528%_))))
                              (_%g115510115524%_ _%g115511115528%_))))
                      (_%g115510115524%_ _%g115511115528%_)))))
          (_%g115509115566%_ _%$stx115506%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx115570%_)
        (letrec ((_%generate115573%_
                  (lambda (_%tgt115722%_ _%kws115724%_ _%clauses115725%_)
                    (letrec ((_%generate-clause115727%_
                              (lambda (_%hd116662%_ _%E116664%_)
                                (let* ((_%__stx116814116815%_ _%hd116662%_)
                                       (_%g116668116695%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx116814116815%_))))
                                  (let ((_%__kont116817116818%_
                                         (lambda (_%L116791%_ _%L116793%_)
                                           (_%generate1115729%_
                                            _%hd116662%_
                                            _%L116793%_
                                            '#t
                                            _%L116791%_
                                            _%E116664%_)))
                                        (_%__kont116819116820%_
                                         (lambda (_%L116743%_
                                                  _%L116745%_
                                                  _%L116746%_)
                                           (_%generate1115729%_
                                            _%hd116662%_
                                            _%L116746%_
                                            _%L116745%_
                                            _%L116743%_
                                            _%E116664%_)))
                                        (_%__kont116821116822%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx115570%_
                                            _%hd116662%_))))
                                    (if (gx#stx-pair? _%__stx116814116815%_)
                                        (let ((_%e116672116771%_
                                               (gx#syntax-e
                                                _%__stx116814116815%_)))
                                          (let ((_%tl116674116778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e116672116771%_)))
                                                (_%hd116673116775%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e116672116771%_))))
                                            (if (gx#stx-pair?
                                                 _%tl116674116778%_)
                                                (let ((_%e116675116781%_
                                                       (gx#syntax-e
                                                        _%tl116674116778%_)))
                                                  (let ((_%tl116677116788%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e116675116781%_)))
                                                        (_%hd116676116785%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e116675116781%_))))
                                                    (if (gx#stx-null?
                                                         _%tl116677116788%_)
                                                        (_%__kont116817116818%_
                                                         _%hd116676116785%_
                                                         _%hd116673116775%_)
                                                        (if (gx#stx-pair?
                                                             _%tl116677116788%_)
                                                            (let ((_%e116687116733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl116677116788%_)))
                      (let ((_%tl116689116740%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116687116733%_)))
                            (_%hd116688116737%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116687116733%_))))
                        (if (gx#stx-null? _%tl116689116740%_)
                            (_%__kont116819116820%_
                             _%hd116688116737%_
                             _%hd116676116785%_
                             _%hd116673116775%_)
                            (_%__kont116821116822%_))))
                    (_%__kont116821116822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont116821116822%_))))
                                        (_%__kont116821116822%_))))))
                             (_%generate1115729%_
                              (lambda (_%where116115%_
                                       _%hd116117%_
                                       _%fender116118%_
                                       _%body116119%_
                                       _%E116120%_)
                                (letrec ((_%recur116122%_
                                          (lambda (_%hd116125%_
                                                   _%tgt116127%_
                                                   _%K116128%_)
                                            (let* ((_%__stx116860116861%_
                                                    _%hd116125%_)
                                                   (_%g116131116143%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx116860116861%_))))
                                              (let ((_%__kont116863116864%_
                                                     (lambda (_%L116452%_
                                                              _%L116454%_)
                                                       (let* ((_%g116465116473%_
                                                               (lambda (_%g116466116469%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g116466116469%_)))
                      (_%g116464116654%_
                       (lambda (_%g116466116477%_)
                         ((lambda (_%L116480%_)
                            (let* ((_%g116492116500%_
                                    (lambda (_%g116493116496%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g116493116496%_)))
                                   (_%g116491116650%_
                                    (lambda (_%g116493116504%_)
                                      ((lambda (_%L116507%_)
                                         (let* ((_%g116520116528%_
                                                 (lambda (_%g116521116524%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g116521116524%_)))
                                                (_%g116519116646%_
                                                 (lambda (_%g116521116532%_)
                                                   ((lambda (_%L116535%_)
                                                      (let* ((_%g116548116556%_
                                                              (lambda (_%g116549116552%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g116549116552%_)))
                     (_%g116547116642%_
                      (lambda (_%g116549116560%_)
                        ((lambda (_%L116563%_)
                           (let* ((_%g116576116584%_
                                   (lambda (_%g116577116580%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116577116580%_)))
                                  (_%g116575116638%_
                                   (lambda (_%g116577116588%_)
                                     ((lambda (_%L116591%_)
                                        (let* ((_%g116604116612%_
                                                (lambda (_%g116605116608%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g116605116608%_)))
                                               (_%g116603116634%_
                                                (lambda (_%g116605116616%_)
                                                  ((lambda (_%L116619%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L116480%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L116507%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L116480%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L116535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L116507%_ '()))
                                       '()))
                           (cons (cons _%L116563%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L116507%_ '()))
                                             '()))
                                 '()))
                     (cons _%L116591%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L116619%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g116605116616%_))))
                                          (_%g116603116634%_ _%E116120%_)))
                                      _%g116577116588%_))))
                             (_%g116575116638%_
                              (_%recur116122%_
                               _%L116454%_
                               _%L116535%_
                               (_%recur116122%_
                                _%L116452%_
                                _%L116563%_
                                _%K116128%_)))))
                         _%g116549116560%_))))
                (_%g116547116642%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g116521116532%_))))
                                           (_%g116519116646%_
                                            (gx#genident 'hd))))
                                       _%g116493116504%_))))
                              (_%g116491116650%_ (gx#genident 'e))))
                          _%g116466116477%_))))
                 (_%g116464116654%_ _%tgt116127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont116865116866%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd116125%_)
                                                           (if (gx#underscore?
                                                                _%hd116125%_)
                                                               _%K116128%_
                                                               (if (let ((__tmp116932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g116157116159%_)
                                    (gx#bound-identifier=?
                                     _%g116157116159%_
                                     _%hd116125%_))))
                             (declare (not safe))
                             (__find __tmp116932 _%kws115724%_))
                           (let* ((_%g116165116180%_
                                   (lambda (_%g116166116176%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116166116176%_)))
                                  (_%g116164116233%_
                                   (lambda (_%g116166116184%_)
                                     (if (gx#stx-pair? _%g116166116184%_)
                                         (let ((_%e116169116187%_
                                                (gx#syntax-e
                                                 _%g116166116184%_)))
                                           (let ((_%hd116170116191%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116169116187%_)))
                                                 (_%tl116171116194%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116169116187%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116171116194%_)
                                                 (let ((_%e116172116197%_
                                                        (gx#syntax-e
                                                         _%tl116171116194%_)))
                                                   (let ((_%hd116173116201%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116172116197%_)))
                                                         (_%tl116174116204%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116172116197%_))))
                                                     (if (gx#stx-null?
                                                          _%tl116174116204%_)
                                                         ((lambda (_%L116207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L116209%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L116209%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L116209%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L116207%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K116128%_ (cons _%E116120%_ '())))))
                  _%hd116173116201%_
                  _%hd116170116191%_)
                 (_%g116165116180%_ _%g116166116184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116165116180%_
                                                  _%g116166116184%_))))
                                         (_%g116165116180%_
                                          _%g116166116184%_)))))
                             (_%g116164116233%_
                              (list _%tgt116127%_ _%hd116125%_)))
                           (let* ((_%g116239116254%_
                                   (lambda (_%g116240116250%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116240116250%_)))
                                  (_%g116238116299%_
                                   (lambda (_%g116240116258%_)
                                     (if (gx#stx-pair? _%g116240116258%_)
                                         (let ((_%e116243116261%_
                                                (gx#syntax-e
                                                 _%g116240116258%_)))
                                           (let ((_%hd116244116265%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116243116261%_)))
                                                 (_%tl116245116268%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116243116261%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116245116268%_)
                                                 (let ((_%e116246116271%_
                                                        (gx#syntax-e
                                                         _%tl116245116268%_)))
                                                   (let ((_%hd116247116275%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116246116271%_)))
                                                         (_%tl116248116278%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116246116271%_))))
                                                     (if (gx#stx-null?
                                                          _%tl116248116278%_)
                                                         ((lambda (_%L116281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L116283%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L116281%_ (cons _%L116283%_ '()))
                                      '())
                                (cons _%K116128%_ '()))))
                  _%hd116247116275%_
                  _%hd116244116265%_)
                 (_%g116239116254%_ _%g116240116258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116239116254%_
                                                  _%g116240116258%_))))
                                         (_%g116239116254%_
                                          _%g116240116258%_)))))
                             (_%g116238116299%_
                              (list _%tgt116127%_ _%hd116125%_)))))
                   (if (gx#stx-null? _%hd116125%_)
                       (let* ((_%g116305116313%_
                               (lambda (_%g116306116309%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g116306116309%_)))
                              (_%g116304116332%_
                               (lambda (_%g116306116317%_)
                                 ((lambda (_%L116320%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L116320%_ '()))
                                                (cons _%K116128%_
                                                      (cons _%E116120%_
                                                            '())))))
                                  _%g116306116317%_))))
                         (_%g116304116332%_ _%tgt116127%_))
                       (if (gx#stx-datum? _%hd116125%_)
                           (let* ((_%g116338116357%_
                                   (lambda (_%g116339116353%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116339116353%_)))
                                  (_%g116337116416%_
                                   (lambda (_%g116339116361%_)
                                     (if (gx#stx-pair? _%g116339116361%_)
                                         (let ((_%e116343116364%_
                                                (gx#syntax-e
                                                 _%g116339116361%_)))
                                           (let ((_%hd116344116368%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116343116364%_)))
                                                 (_%tl116345116371%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116343116364%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116345116371%_)
                                                 (let ((_%e116346116374%_
                                                        (gx#syntax-e
                                                         _%tl116345116371%_)))
                                                   (let ((_%hd116347116378%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116346116374%_)))
                                                         (_%tl116348116381%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116346116374%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl116348116381%_)
                                                         (let ((_%e116349116384%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl116348116381%_)))
                   (let ((_%hd116350116388%_
                          (let ()
                            (declare (not safe))
                            (##car _%e116349116384%_)))
                         (_%tl116351116391%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e116349116384%_))))
                     (if (gx#stx-null? _%tl116351116391%_)
                         ((lambda (_%L116394%_ _%L116396%_ _%L116397%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L116394%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L116397%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L116396%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K116128%_
                                              (cons _%E116120%_ '())))))
                          _%hd116350116388%_
                          _%hd116347116378%_
                          _%hd116344116368%_)
                         (_%g116338116357%_ _%g116339116361%_))))
                 (_%g116338116357%_ _%g116339116361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116338116357%_
                                                  _%g116339116361%_))))
                                         (_%g116338116357%_
                                          _%g116339116361%_)))))
                             (_%g116337116416%_
                              (list _%tgt116127%_
                                    _%hd116125%_
                                    (let ((_%e116420%_
                                           (gx#stx-e _%hd116125%_)))
                                      (if (or (keyword? _%e116420%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e116420%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e116420%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx115570%_
                            _%where116115%_
                            _%hd116125%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx116860116861%_)
                                                    (let ((_%e116135116442%_
                                                           (gx#syntax-e
                                                            _%__stx116860116861%_)))
                                                      (let ((_%tl116137116449%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e116135116442%_)))
                    (_%hd116136116446%_
                     (let () (declare (not safe)) (##car _%e116135116442%_))))
                (_%__kont116863116864%_
                 _%tl116137116449%_
                 _%hd116136116446%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont116865116866%_)))))))
                                  (_%recur116122%_
                                   _%hd116117%_
                                   _%tgt115722%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender116118%_
                                               (cons _%body116119%_
                                                     (cons _%E116120%_
                                                           '()))))))))
                             (_%generate-clauses115730%_
                              (lambda (_%clauses115853%_)
                                (let _%lp115856%_ ((_%rest115859%_
                                                    _%clauses115853%_)
                                                   (_%E115861%_
                                                    (gx#genident 'E))
                                                   (_%r115862%_ '()))
                                  (let* ((_%__stx116896116897%_ _%rest115859%_)
                                         (_%g115865115877%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx116896116897%_))))
                                    (let ((_%__kont116899116900%_
                                           (lambda (_%L115942%_ _%L115944%_)
                                             (let* ((_%__stx116876116877%_
                                                     _%L115944%_)
                                                    (_%g115956115967%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx116876116877%_))))
                                               (let ((_%__kont116879116880%_
                                                      (lambda (_%L116096%_)
                                                        (if (gx#stx-null?
                                                             _%L115942%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L116096%_)
                             (not (gx#stx-null? _%L116096%_)))
                        (cons (cons _%E115861%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L116096%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L115944%_))
                                          '()))
                              _%r115862%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx115570%_
                         _%L115944%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx115570%_
                     _%L115944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont116881116882%_
                                                      (lambda ()
                                                        (let* ((_%g115978115986%_
                                                                (lambda (_%g115979115982%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g115979115982%_)))
                       (_%g115977116075%_
                        (lambda (_%g115979115990%_)
                          ((lambda (_%L115993%_)
                             (let* ((_%g116009116017%_
                                     (lambda (_%g116010116013%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g116010116013%_)))
                                    (_%g116008116071%_
                                     (lambda (_%g116010116021%_)
                                       ((lambda (_%L116024%_)
                                          (let* ((_%g116037116045%_
                                                  (lambda (_%g116038116041%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g116038116041%_)))
                                                 (_%g116036116067%_
                                                  (lambda (_%g116038116049%_)
                                                    ((lambda (_%L116052%_)
                                                       (_%lp115856%_
                                                        _%L115942%_
                                                        _%L115993%_
                                                        (cons (cons _%E115861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L116052%_ '()))
                      _%r115862%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g116038116049%_))))
                                            (_%g116036116067%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L116024%_
                                                                '())))
                                              (gx#stx-source _%L115944%_)))))
                                        _%g116010116021%_))))
                               (_%g116008116071%_
                                (_%generate-clause115727%_
                                 _%L115944%_
                                 (cons _%L115993%_ '())))))
                           _%g115979115990%_))))
                  (_%g115977116075%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx116876116877%_)
                                                     (let ((_%e115959116086%_
                                                            (gx#syntax-e
                                                             _%__stx116876116877%_)))
                                                       (let ((_%tl115961116093%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e115959116086%_)))
                     (_%hd115960116090%_
                      (let () (declare (not safe)) (##car _%e115959116086%_))))
                 (if (gx#identifier? _%hd115960116090%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g116933_|
                          _%hd115960116090%_)
                         (_%__kont116879116880%_ _%tl115961116093%_)
                         (_%__kont116881116882%_))
                     (_%__kont116881116882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont116881116882%_))))))
                                          (_%__kont116901116902%_
                                           (lambda ()
                                             (let* ((_%g115888115896%_
                                                     (lambda (_%g115889115892%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g115889115892%_)))
                                                    (_%g115887115921%_
                                                     (lambda (_%g115889115900%_)
                                                       ((lambda (_%L115903%_)
                                                          (cons (cons _%E115861%_
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
                                 (cons _%L115903%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx115570%_))
                                    '()))
                        _%r115862%_))
                _%g115889115900%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g115887115921%_
                                                _%tgt115722%_)))))
                                      (if (gx#stx-pair? _%__stx116896116897%_)
                                          (let ((_%e115869115932%_
                                                 (gx#syntax-e
                                                  _%__stx116896116897%_)))
                                            (let ((_%tl115871115939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e115869115932%_)))
                                                  (_%hd115870115936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e115869115932%_))))
                                              (_%__kont116899116900%_
                                               _%tl115871115939%_
                                               _%hd115870115936%_)))
                                          (_%__kont116901116902%_))))))))
                      (let* ((_%bind115732%_
                              (_%generate-clauses115730%_ _%clauses115725%_))
                             (_%g115735115752%_
                              (lambda (_%g115736115748%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g115736115748%_)))
                             (_%g115734115849%_
                              (lambda (_%g115736115756%_)
                                (if (gx#stx-pair/null? _%g115736115756%_)
                                    (let ((_g116934_
                                           (gx#syntax-split-splice
                                            _%g115736115756%_
                                            '0)))
                                      (begin
                                        (let ((_g116935_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g116934_)
                                                     (##vector-length
                                                      _g116934_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g116935_ 2)))
                                              (error "Context expects 2 values"
                                                     _g116935_)))
                                        (let ((_%target115738115759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g116934_ 0)))
                                              (_%tl115740115762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g116934_ 1))))
                                          (if (gx#stx-null? _%tl115740115762%_)
                                              (letrec ((_%loop115741115765%_
                                                        (lambda (_%hd115739115769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try115745115772%_)
                  (if (gx#stx-pair? _%hd115739115769%_)
                      (let ((_%e115742115775%_
                             (gx#syntax-e _%hd115739115769%_)))
                        (let ((_%lp-hd115743115779%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e115742115775%_)))
                              (_%lp-tl115744115782%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e115742115775%_))))
                          (_%loop115741115765%_
                           _%lp-tl115744115782%_
                           (cons _%lp-hd115743115779%_
                                 _%bind-try115745115772%_))))
                      (let ((_%bind-try115746115785%_
                             (reverse _%bind-try115745115772%_)))
                        ((lambda (_%L115789%_)
                           (let* ((_%g115807115815%_
                                   (lambda (_%g115808115811%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115808115811%_)))
                                  (_%g115806115845%_
                                   (lambda (_%g115808115819%_)
                                     ((lambda (_%L115822%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp116936
                                                           (lambda (_%g115836115839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g115837115842%_)
                     (cons _%g115836115839%_ _%g115837115842%_))))
              (declare (not safe))
              (__foldr1 __tmp116936 '() _%L115789%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L115822%_
                                                                '())
                                                          '()))))
                                      _%g115808115819%_))))
                             (_%g115806115845%_ (car (last _%bind115732%_)))))
                         _%bind-try115746115785%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop115741115765%_
                                                 _%target115738115759%_
                                                 '()))
                                              (_%g115735115752%_
                                               _%g115736115756%_)))))
                                    (_%g115735115752%_ _%g115736115756%_)))))
                        (_%g115734115849%_ _%bind115732%_))))))
          (let* ((_%g115576115595%_
                  (lambda (_%g115577115591%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g115577115591%_)))
                 (_%g115575115718%_
                  (lambda (_%g115577115599%_)
                    (if (gx#stx-pair? _%g115577115599%_)
                        (let ((_%e115581115602%_
                               (gx#syntax-e _%g115577115599%_)))
                          (let ((_%hd115582115606%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e115581115602%_)))
                                (_%tl115583115609%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e115581115602%_))))
                            (if (gx#stx-pair? _%tl115583115609%_)
                                (let ((_%e115584115612%_
                                       (gx#syntax-e _%tl115583115609%_)))
                                  (let ((_%hd115585115616%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e115584115612%_)))
                                        (_%tl115586115619%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e115584115612%_))))
                                    (if (gx#stx-pair? _%tl115586115619%_)
                                        (let ((_%e115587115622%_
                                               (gx#syntax-e
                                                _%tl115586115619%_)))
                                          (let ((_%hd115588115626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e115587115622%_)))
                                                (_%tl115589115629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e115587115622%_))))
                                            ((lambda (_%L115632%_
                                                      _%L115634%_
                                                      _%L115635%_)
                                               (if (and (gx#identifier-list?
                                                         _%L115634%_)
                                                        (gx#stx-list?
                                                         _%L115632%_))
                                                   (let* ((_%g115653115661%_
                                                           (lambda (_%g115654115657%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g115654115657%_)))
                                                          (_%g115652115714%_
                                                           (lambda (_%g115654115665%_)
                                                             ((lambda (_%L115668%_)
                                                                (let* ((_%g115680115688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g115681115684%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g115681115684%_)))
                               (_%g115679115710%_
                                (lambda (_%g115681115692%_)
                                  ((lambda (_%L115695%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L115668%_
                                                             (cons _%L115635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L115695%_ '()))))
                                   _%g115681115692%_))))
                          (_%g115679115710%_
                           (_%generate115573%_
                            _%L115668%_
                            (gx#syntax->list _%L115634%_)
                            _%L115632%_))))
                      _%g115654115665%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g115652115714%_
                                                      (gx#genident 'e)))
                                                   (_%g115576115595%_
                                                    _%g115577115599%_)))
                                             _%tl115589115629%_
                                             _%hd115588115626%_
                                             _%hd115585115616%_)))
                                        (_%g115576115595%_
                                         _%g115577115599%_))))
                                (_%g115576115595%_ _%g115577115599%_))))
                        (_%g115576115595%_ _%g115577115599%_)))))
            (_%g115575115718%_ _%stx115570%_)))))))
