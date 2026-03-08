(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g173085_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173087_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173089_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173091_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173092_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173094_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173095_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173097_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173098_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173100_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173101_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173103_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj173081
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
          (##unchecked-structure-set! __obj173081 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 '#f '13 '#f '#f))
        (let ((__tmp173084 |gx[1]#_g173085_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 __tmp173084 '4 '#f '#f))
        (let ((__tmp173086 |gx[1]#_g173087_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 __tmp173086 '14 '#f '#f))
        (let ((__tmp173088 |gx[1]#_g173089_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 __tmp173088 '15 '#f '#f))
        (let ((__tmp173090
               (cons (cons 'e |gx[1]#_g173091_|)
                     (cons (cons 'source |gx[1]#_g173092_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 __tmp173090 '16 '#f '#f))
        (let ((__tmp173093
               (cons (cons 'e |gx[1]#_g173094_|)
                     (cons (cons 'source |gx[1]#_g173095_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 __tmp173093 '17 '#f '#f))
        (let ((__tmp173096
               (cons (cons 'e |gx[1]#_g173097_|)
                     (cons (cons 'source |gx[1]#_g173098_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 __tmp173096 '18 '#f '#f))
        (let ((__tmp173099
               (cons (cons 'e |gx[1]#_g173100_|)
                     (cons (cons 'source |gx[1]#_g173101_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 __tmp173099 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173081 '() '21 '#f '#f))
        __obj173081))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx171678%_)
        (let* ((_%g171682171696%_
                (lambda (_%g171683171692%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g171683171692%_)))
               (_%g171681171738%_
                (lambda (_%g171683171700%_)
                  (if (gx#stx-pair? _%g171683171700%_)
                      (let ((_%e171685171703%_
                             (gx#syntax-e _%g171683171700%_)))
                        (let ((_%hd171686171707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171685171703%_)))
                              (_%tl171687171710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171685171703%_))))
                          (if (gx#stx-pair? _%tl171687171710%_)
                              (let ((_%e171688171713%_
                                     (gx#syntax-e _%tl171687171710%_)))
                                (let ((_%hd171689171717%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171688171713%_)))
                                      (_%tl171690171720%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171688171713%_))))
                                  (if (gx#stx-null? _%tl171690171720%_)
                                      ((lambda (_%g171684171723%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g171684171723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g171684171723%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd171689171717%_)
                                      (_%g171682171696%_ _%g171683171700%_))))
                              (_%g171682171696%_ _%g171683171700%_))))
                      (_%g171682171696%_ _%g171683171700%_)))))
          (_%g171681171738%_ _%$stx171678%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx171742%_)
        (letrec ((_%generate171745%_
                  (lambda (_%tgt171894%_ _%kws171896%_ _%clauses171897%_)
                    (letrec ((_%generate-clause171899%_
                              (lambda (_%hd172832%_ _%E172834%_)
                                (let* ((_%__stx172984172985%_ _%hd172832%_)
                                       (_%g172838172865%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx172984172985%_))))
                                  (let ((_%__kont172987172988%_
                                         (lambda (_%g172840172961%_
                                                  _%g172841172963%_)
                                           (_%generate1171901%_
                                            _%hd172832%_
                                            _%g172841172963%_
                                            '#t
                                            _%g172840172961%_
                                            _%E172834%_)))
                                        (_%__kont172989172990%_
                                         (lambda (_%g172848172913%_
                                                  _%g172849172915%_
                                                  _%g172850172916%_)
                                           (_%generate1171901%_
                                            _%hd172832%_
                                            _%g172850172916%_
                                            _%g172849172915%_
                                            _%g172848172913%_
                                            _%E172834%_)))
                                        (_%__kont172991172992%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx171742%_
                                            _%hd172832%_))))
                                    (if (gx#stx-pair? _%__stx172984172985%_)
                                        (let ((_%e172842172941%_
                                               (gx#syntax-e
                                                _%__stx172984172985%_)))
                                          (let ((_%tl172844172948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172842172941%_)))
                                                (_%hd172843172945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172842172941%_))))
                                            (if (gx#stx-pair?
                                                 _%tl172844172948%_)
                                                (let ((_%e172845172951%_
                                                       (gx#syntax-e
                                                        _%tl172844172948%_)))
                                                  (let ((_%tl172847172958%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172845172951%_)))
                                                        (_%hd172846172955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172845172951%_))))
                                                    (if (gx#stx-null?
                                                         _%tl172847172958%_)
                                                        (_%__kont172987172988%_
                                                         _%hd172846172955%_
                                                         _%hd172843172945%_)
                                                        (if (gx#stx-pair?
                                                             _%tl172847172958%_)
                                                            (let ((_%e172857172903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl172847172958%_)))
                      (let ((_%tl172859172910%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172857172903%_)))
                            (_%hd172858172907%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172857172903%_))))
                        (if (gx#stx-null? _%tl172859172910%_)
                            (_%__kont172989172990%_
                             _%hd172858172907%_
                             _%hd172846172955%_
                             _%hd172843172945%_)
                            (_%__kont172991172992%_))))
                    (_%__kont172991172992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172991172992%_))))
                                        (_%__kont172991172992%_))))))
                             (_%generate1171901%_
                              (lambda (_%where172285%_
                                       _%hd172287%_
                                       _%fender172288%_
                                       _%body172289%_
                                       _%E172290%_)
                                (letrec ((_%recur172292%_
                                          (lambda (_%hd172295%_
                                                   _%tgt172297%_
                                                   _%K172298%_)
                                            (let* ((_%__stx173030173031%_
                                                    _%hd172295%_)
                                                   (_%g172301172313%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx173030173031%_))))
                                              (let ((_%__kont173033173034%_
                                                     (lambda (_%g172303172622%_
                                                              _%g172304172624%_)
                                                       (let* ((_%g172635172643%_
                                                               (lambda (_%g172636172639%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g172636172639%_)))
                      (_%g172634172824%_
                       (lambda (_%g172636172647%_)
                         ((lambda (_%g172637172650%_)
                            (let* ((_%g172662172670%_
                                    (lambda (_%g172663172666%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g172663172666%_)))
                                   (_%g172661172820%_
                                    (lambda (_%g172663172674%_)
                                      ((lambda (_%g172664172677%_)
                                         (let* ((_%g172690172698%_
                                                 (lambda (_%g172691172694%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g172691172694%_)))
                                                (_%g172689172816%_
                                                 (lambda (_%g172691172702%_)
                                                   ((lambda (_%g172692172705%_)
                                                      (let* ((_%g172718172726%_
                                                              (lambda (_%g172719172722%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g172719172722%_)))
                     (_%g172717172812%_
                      (lambda (_%g172719172730%_)
                        ((lambda (_%g172720172733%_)
                           (let* ((_%g172746172754%_
                                   (lambda (_%g172747172750%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172747172750%_)))
                                  (_%g172745172808%_
                                   (lambda (_%g172747172758%_)
                                     ((lambda (_%g172748172761%_)
                                        (let* ((_%g172774172782%_
                                                (lambda (_%g172775172778%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g172775172778%_)))
                                               (_%g172773172804%_
                                                (lambda (_%g172775172786%_)
                                                  ((lambda (_%g172776172789%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g172637172650%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g172664172677%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g172637172650%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g172692172705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g172664172677%_ '()))
                                       '()))
                           (cons (cons _%g172720172733%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g172664172677%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g172748172761%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g172776172789%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g172775172786%_))))
                                          (_%g172773172804%_ _%E172290%_)))
                                      _%g172747172758%_))))
                             (_%g172745172808%_
                              (_%recur172292%_
                               _%g172304172624%_
                               _%g172692172705%_
                               (_%recur172292%_
                                _%g172303172622%_
                                _%g172720172733%_
                                _%K172298%_)))))
                         _%g172719172730%_))))
                (_%g172717172812%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g172691172702%_))))
                                           (_%g172689172816%_
                                            (gx#genident 'hd))))
                                       _%g172663172674%_))))
                              (_%g172661172820%_ (gx#genident 'e))))
                          _%g172636172647%_))))
                 (_%g172634172824%_ _%tgt172297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont173035173036%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd172295%_)
                                                           (if (gx#underscore?
                                                                _%hd172295%_)
                                                               _%K172298%_
                                                               (if (let ((__tmp173102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g172327172329%_)
                                    (gx#bound-identifier=?
                                     _%g172327172329%_
                                     _%hd172295%_))))
                             (declare (not safe))
                             (__find __tmp173102 _%kws171896%_))
                           (let* ((_%g172335172350%_
                                   (lambda (_%g172336172346%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172336172346%_)))
                                  (_%g172334172403%_
                                   (lambda (_%g172336172354%_)
                                     (if (gx#stx-pair? _%g172336172354%_)
                                         (let ((_%e172339172357%_
                                                (gx#syntax-e
                                                 _%g172336172354%_)))
                                           (let ((_%hd172340172361%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172339172357%_)))
                                                 (_%tl172341172364%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172339172357%_))))
                                             (if (gx#stx-pair?
                                                  _%tl172341172364%_)
                                                 (let ((_%e172342172367%_
                                                        (gx#syntax-e
                                                         _%tl172341172364%_)))
                                                   (let ((_%hd172343172371%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e172342172367%_)))
                                                         (_%tl172344172374%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e172342172367%_))))
                                                     (if (gx#stx-null?
                                                          _%tl172344172374%_)
                                                         ((lambda (_%g172337172377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g172338172379%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g172338172379%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g172338172379%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g172337172377%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K172298%_ (cons _%E172290%_ '())))))
                  _%hd172343172371%_
                  _%hd172340172361%_)
                 (_%g172335172350%_ _%g172336172354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g172335172350%_
                                                  _%g172336172354%_))))
                                         (_%g172335172350%_
                                          _%g172336172354%_)))))
                             (_%g172334172403%_
                              (list _%tgt172297%_ _%hd172295%_)))
                           (let* ((_%g172409172424%_
                                   (lambda (_%g172410172420%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172410172420%_)))
                                  (_%g172408172469%_
                                   (lambda (_%g172410172428%_)
                                     (if (gx#stx-pair? _%g172410172428%_)
                                         (let ((_%e172413172431%_
                                                (gx#syntax-e
                                                 _%g172410172428%_)))
                                           (let ((_%hd172414172435%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172413172431%_)))
                                                 (_%tl172415172438%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172413172431%_))))
                                             (if (gx#stx-pair?
                                                  _%tl172415172438%_)
                                                 (let ((_%e172416172441%_
                                                        (gx#syntax-e
                                                         _%tl172415172438%_)))
                                                   (let ((_%hd172417172445%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e172416172441%_)))
                                                         (_%tl172418172448%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e172416172441%_))))
                                                     (if (gx#stx-null?
                                                          _%tl172418172448%_)
                                                         ((lambda (_%g172411172451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g172412172453%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g172411172451%_
                                            (cons _%g172412172453%_ '()))
                                      '())
                                (cons _%K172298%_ '()))))
                  _%hd172417172445%_
                  _%hd172414172435%_)
                 (_%g172409172424%_ _%g172410172428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g172409172424%_
                                                  _%g172410172428%_))))
                                         (_%g172409172424%_
                                          _%g172410172428%_)))))
                             (_%g172408172469%_
                              (list _%tgt172297%_ _%hd172295%_)))))
                   (if (gx#stx-null? _%hd172295%_)
                       (let* ((_%g172475172483%_
                               (lambda (_%g172476172479%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g172476172479%_)))
                              (_%g172474172502%_
                               (lambda (_%g172476172487%_)
                                 ((lambda (_%g172477172490%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g172477172490%_
                                                            '()))
                                                (cons _%K172298%_
                                                      (cons _%E172290%_
                                                            '())))))
                                  _%g172476172487%_))))
                         (_%g172474172502%_ _%tgt172297%_))
                       (if (gx#stx-datum? _%hd172295%_)
                           (let* ((_%g172508172527%_
                                   (lambda (_%g172509172523%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172509172523%_)))
                                  (_%g172507172586%_
                                   (lambda (_%g172509172531%_)
                                     (if (gx#stx-pair? _%g172509172531%_)
                                         (let ((_%e172513172534%_
                                                (gx#syntax-e
                                                 _%g172509172531%_)))
                                           (let ((_%hd172514172538%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172513172534%_)))
                                                 (_%tl172515172541%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172513172534%_))))
                                             (if (gx#stx-pair?
                                                  _%tl172515172541%_)
                                                 (let ((_%e172516172544%_
                                                        (gx#syntax-e
                                                         _%tl172515172541%_)))
                                                   (let ((_%hd172517172548%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e172516172544%_)))
                                                         (_%tl172518172551%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e172516172544%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl172518172551%_)
                                                         (let ((_%e172519172554%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl172518172551%_)))
                   (let ((_%hd172520172558%_
                          (let ()
                            (declare (not safe))
                            (##car _%e172519172554%_)))
                         (_%tl172521172561%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e172519172554%_))))
                     (if (gx#stx-null? _%tl172521172561%_)
                         ((lambda (_%g172510172564%_
                                   _%g172511172566%_
                                   _%g172512172567%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g172510172564%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g172512172567%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g172511172566%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K172298%_
                                              (cons _%E172290%_ '())))))
                          _%hd172520172558%_
                          _%hd172517172548%_
                          _%hd172514172538%_)
                         (_%g172508172527%_ _%g172509172531%_))))
                 (_%g172508172527%_ _%g172509172531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g172508172527%_
                                                  _%g172509172531%_))))
                                         (_%g172508172527%_
                                          _%g172509172531%_)))))
                             (_%g172507172586%_
                              (list _%tgt172297%_
                                    _%hd172295%_
                                    (let ((_%e172590%_
                                           (gx#stx-e _%hd172295%_)))
                                      (if (or (keyword? _%e172590%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e172590%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e172590%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx171742%_
                            _%where172285%_
                            _%hd172295%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx173030173031%_)
                                                    (let ((_%e172305172612%_
                                                           (gx#syntax-e
                                                            _%__stx173030173031%_)))
                                                      (let ((_%tl172307172619%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172305172612%_)))
                    (_%hd172306172616%_
                     (let () (declare (not safe)) (##car _%e172305172612%_))))
                (_%__kont173033173034%_
                 _%tl172307172619%_
                 _%hd172306172616%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont173035173036%_)))))))
                                  (_%recur172292%_
                                   _%hd172287%_
                                   _%tgt171894%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender172288%_
                                               (cons _%body172289%_
                                                     (cons _%E172290%_
                                                           '()))))))))
                             (_%generate-clauses171902%_
                              (lambda (_%clauses172023%_)
                                (let _%lp172026%_ ((_%rest172029%_
                                                    _%clauses172023%_)
                                                   (_%E172031%_
                                                    (gx#genident 'E))
                                                   (_%r172032%_ '()))
                                  (let* ((_%__stx173066173067%_ _%rest172029%_)
                                         (_%g172035172047%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx173066173067%_))))
                                    (let ((_%__kont173069173070%_
                                           (lambda (_%g172037172112%_
                                                    _%g172038172114%_)
                                             (let* ((_%__stx173046173047%_
                                                     _%g172038172114%_)
                                                    (_%g172126172137%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx173046173047%_))))
                                               (let ((_%__kont173049173050%_
                                                      (lambda (_%g172128172266%_)
                                                        (if (gx#stx-null?
                                                             _%g172037172112%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g172128172266%_)
                             (not (gx#stx-null? _%g172128172266%_)))
                        (cons (cons _%E172031%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g172128172266%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g172038172114%_))
                                          '()))
                              _%r172032%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx171742%_
                         _%g172038172114%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx171742%_
                     _%g172038172114%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont173051173052%_
                                                      (lambda ()
                                                        (let* ((_%g172148172156%_
                                                                (lambda (_%g172149172152%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g172149172152%_)))
                       (_%g172147172245%_
                        (lambda (_%g172149172160%_)
                          ((lambda (_%g172150172163%_)
                             (let* ((_%g172179172187%_
                                     (lambda (_%g172180172183%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g172180172183%_)))
                                    (_%g172178172241%_
                                     (lambda (_%g172180172191%_)
                                       ((lambda (_%g172181172194%_)
                                          (let* ((_%g172207172215%_
                                                  (lambda (_%g172208172211%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g172208172211%_)))
                                                 (_%g172206172237%_
                                                  (lambda (_%g172208172219%_)
                                                    ((lambda (_%g172209172222%_)
                                                       (_%lp172026%_
                                                        _%g172037172112%_
                                                        _%g172150172163%_
                                                        (cons (cons _%E172031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g172209172222%_ '()))
                      _%r172032%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g172208172219%_))))
                                            (_%g172206172237%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g172181172194%_
                                                                '())))
                                              (gx#stx-source
                                               _%g172038172114%_)))))
                                        _%g172180172191%_))))
                               (_%g172178172241%_
                                (_%generate-clause171899%_
                                 _%g172038172114%_
                                 (cons _%g172150172163%_ '())))))
                           _%g172149172160%_))))
                  (_%g172147172245%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx173046173047%_)
                                                     (let ((_%e172129172256%_
                                                            (gx#syntax-e
                                                             _%__stx173046173047%_)))
                                                       (let ((_%tl172131172263%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e172129172256%_)))
                     (_%hd172130172260%_
                      (let () (declare (not safe)) (##car _%e172129172256%_))))
                 (if (gx#identifier? _%hd172130172260%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g173103_|
                          _%hd172130172260%_)
                         (_%__kont173049173050%_ _%tl172131172263%_)
                         (_%__kont173051173052%_))
                     (_%__kont173051173052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont173051173052%_))))))
                                          (_%__kont173071173072%_
                                           (lambda ()
                                             (let* ((_%g172058172066%_
                                                     (lambda (_%g172059172062%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g172059172062%_)))
                                                    (_%g172057172091%_
                                                     (lambda (_%g172059172070%_)
                                                       ((lambda (_%g172060172073%_)
                                                          (cons (cons _%E172031%_
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
                                 (cons _%g172060172073%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx171742%_))
                                    '()))
                        _%r172032%_))
                _%g172059172070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172057172091%_
                                                _%tgt171894%_)))))
                                      (if (gx#stx-pair? _%__stx173066173067%_)
                                          (let ((_%e172039172102%_
                                                 (gx#syntax-e
                                                  _%__stx173066173067%_)))
                                            (let ((_%tl172041172109%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172039172102%_)))
                                                  (_%hd172040172106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172039172102%_))))
                                              (_%__kont173069173070%_
                                               _%tl172041172109%_
                                               _%hd172040172106%_)))
                                          (_%__kont173071173072%_))))))))
                      (let* ((_%bind171904%_
                              (_%generate-clauses171902%_ _%clauses171897%_))
                             (_%g171907171924%_
                              (lambda (_%g171908171920%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g171908171920%_)))
                             (_%g171906172019%_
                              (lambda (_%g171908171928%_)
                                (if (gx#stx-pair/null? _%g171908171928%_)
                                    (let ((_g173104_
                                           (gx#syntax-split-splice
                                            _%g171908171928%_
                                            '0)))
                                      (begin
                                        (let ((_g173105_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g173104_)
                                                     (##values-length
                                                      _g173104_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g173105_ 2)))
                                              (error "Context expects 2 values"
                                                     _g173105_)))
                                        (let ((_%target171910171931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g173104_ 0)))
                                              (_%tl171912171934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g173104_ 1))))
                                          (if (gx#stx-null? _%tl171912171934%_)
                                              (letrec ((_%loop171913171937%_
                                                        (lambda (_%hd171911171941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try171917171944%_)
                  (if (gx#stx-pair? _%hd171911171941%_)
                      (let ((_%e171914171946%_
                             (gx#syntax-e _%hd171911171941%_)))
                        (let ((_%lp-hd171915171950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171914171946%_)))
                              (_%lp-tl171916171953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171914171946%_))))
                          (_%loop171913171937%_
                           _%lp-tl171916171953%_
                           (cons _%lp-hd171915171950%_
                                 _%bind-try171917171944%_))))
                      (let ((_%bind-try171918171956%_
                             (reverse _%bind-try171917171944%_)))
                        ((lambda (_%g171909171959%_)
                           (let* ((_%g171977171985%_
                                   (lambda (_%g171978171981%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171978171981%_)))
                                  (_%g171976172015%_
                                   (lambda (_%g171978171989%_)
                                     ((lambda (_%g171979171992%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp173106
                                                           (lambda (_%g172006172009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172007172012%_)
                     (cons _%g172006172009%_ _%g172007172012%_))))
              (declare (not safe))
              (foldr__0 __tmp173106 '() _%g171909171959%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g171979171992%_
                                                                '())
                                                          '()))))
                                      _%g171978171989%_))))
                             (_%g171976172015%_ (car (last _%bind171904%_)))))
                         _%bind-try171918171956%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop171913171937%_
                                                 _%target171910171931%_
                                                 '()))
                                              (_%g171907171924%_
                                               _%g171908171928%_)))))
                                    (_%g171907171924%_ _%g171908171928%_)))))
                        (_%g171906172019%_ _%bind171904%_))))))
          (let* ((_%g171748171767%_
                  (lambda (_%g171749171763%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171749171763%_)))
                 (_%g171747171890%_
                  (lambda (_%g171749171771%_)
                    (if (gx#stx-pair? _%g171749171771%_)
                        (let ((_%e171753171774%_
                               (gx#syntax-e _%g171749171771%_)))
                          (let ((_%hd171754171778%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171753171774%_)))
                                (_%tl171755171781%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171753171774%_))))
                            (if (gx#stx-pair? _%tl171755171781%_)
                                (let ((_%e171756171784%_
                                       (gx#syntax-e _%tl171755171781%_)))
                                  (let ((_%hd171757171788%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171756171784%_)))
                                        (_%tl171758171791%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171756171784%_))))
                                    (if (gx#stx-pair? _%tl171758171791%_)
                                        (let ((_%e171759171794%_
                                               (gx#syntax-e
                                                _%tl171758171791%_)))
                                          (let ((_%hd171760171798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171759171794%_)))
                                                (_%tl171761171801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171759171794%_))))
                                            ((lambda (_%g171750171804%_
                                                      _%g171751171806%_
                                                      _%g171752171807%_)
                                               (if (and (gx#identifier-list?
                                                         _%g171751171806%_)
                                                        (gx#stx-list?
                                                         _%g171750171804%_))
                                                   (let* ((_%g171825171833%_
                                                           (lambda (_%g171826171829%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g171826171829%_)))
                                                          (_%g171824171886%_
                                                           (lambda (_%g171826171837%_)
                                                             ((lambda (_%g171827171840%_)
                                                                (let* ((_%g171852171860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g171853171856%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171853171856%_)))
                               (_%g171851171882%_
                                (lambda (_%g171853171864%_)
                                  ((lambda (_%g171854171867%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g171827171840%_
                                                             (cons _%g171752171807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g171854171867%_
                                                       '()))))
                                   _%g171853171864%_))))
                          (_%g171851171882%_
                           (_%generate171745%_
                            _%g171827171840%_
                            (gx#syntax->list _%g171751171806%_)
                            _%g171750171804%_))))
                      _%g171826171837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g171824171886%_
                                                      (gx#genident 'e)))
                                                   (_%g171748171767%_
                                                    _%g171749171771%_)))
                                             _%tl171761171801%_
                                             _%hd171760171798%_
                                             _%hd171757171788%_)))
                                        (_%g171748171767%_
                                         _%g171749171771%_))))
                                (_%g171748171767%_ _%g171749171771%_))))
                        (_%g171748171767%_ _%g171749171771%_)))))
            (_%g171747171890%_ _%stx171742%_)))))))
