(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g87651_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87654_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87659_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87664_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87667_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87668_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87669_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87670_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87673_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87676_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87679_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87682_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87689_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87692_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87695_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87698_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g87705_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx45152%_)
        (let* ((_%$%g4516145370%_
                (lambda (_%$%g4516245366%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4516245366%_)))
               (_%$%g4516045452%_
                (lambda (_%$%g4516245374%_)
                  (if (gx#stx-pair? _%$%g4516245374%_)
                      (let ((_%$%e4535045377%_
                             (gx#syntax-e _%$%g4516245374%_)))
                        (let ((_%$%hd4535145381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4535045377%_)))
                              (_%$%tl4535245384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4535045377%_))))
                          (if (gx#stx-pair? _%$%tl4535245384%_)
                              (let ((_%$%e4535345387%_
                                     (gx#syntax-e _%$%tl4535245384%_)))
                                (let ((_%$%hd4535445391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4535345387%_)))
                                      (_%$%tl4535545394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4535345387%_))))
                                  (if (gx#stx-null? _%$%hd4535445391%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl4535545394%_)
                                          (let ((_g87647_
                                                 (gx#syntax-split-splice
                                                  _%$%tl4535545394%_
                                                  '0)))
                                            (begin
                                              (let ((_g87648_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g87647_)
                                                           (##values-length
                                                            _g87647_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g87648_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g87648_)))
                                              (let ((_%$%target4535645397%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g87647_
                                                        0)))
                                                    (_%$%tl4535845400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g87647_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl4535845400%_)
                                                    (letrec ((_%$%loop4535945403%_
                                                              (lambda (_%$%hd4535745407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body4536345410%_)
                        (if (gx#stx-pair? _%$%hd4535745407%_)
                            (let ((_%$%e4536045412%_
                                   (gx#syntax-e _%$%hd4535745407%_)))
                              (let ((_%$%lp-hd4536145416%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4536045412%_)))
                                    (_%$%lp-tl4536245419%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4536045412%_))))
                                (_%$%loop4535945403%_
                                 _%$%lp-tl4536245419%_
                                 (cons _%$%lp-hd4536145416%_
                                       _%$%body4536345410%_))))
                            (let ((_%$%body4536445422%_
                                   (reverse _%$%body4536345410%_)))
                              ((lambda (_%$%g4534945425%_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons '()
                                             (foldr (lambda (_%$%g4544345446%_
                                                             _%$%g4544445449%_)
                                                      (cons _%$%g4544345446%_
                                                            _%$%g4544445449%_))
                                                    '()
                                                    _%$%g4534945425%_))))
                               _%$%body4536445422%_))))))
              (_%$%loop4535945403%_ _%$%target4535645397%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4516145370%_
                                                     _%$%g4516245374%_)))))
                                          (_%$%g4516145370%_
                                           _%$%g4516245374%_))
                                      (_%$%g4516145370%_ _%$%g4516245374%_))))
                              (_%$%g4516145370%_ _%$%g4516245374%_))))
                      (_%$%g4516145370%_ _%$%g4516245374%_))))
               (_%$%g4515945562%_
                (lambda (_%$%g4516245456%_)
                  (if (gx#stx-pair? _%$%g4516245456%_)
                      (let ((_%$%e4532845459%_
                             (gx#syntax-e _%$%g4516245456%_)))
                        (let ((_%$%hd4532945463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4532845459%_)))
                              (_%$%tl4533045466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4532845459%_))))
                          (if (gx#stx-pair? _%$%tl4533045466%_)
                              (let ((_%$%e4533145469%_
                                     (gx#syntax-e _%$%tl4533045466%_)))
                                (let ((_%$%hd4533245473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4533145469%_)))
                                      (_%$%tl4533345476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4533145469%_))))
                                  (if (gx#stx-pair? _%$%hd4533245473%_)
                                      (let ((_%$%e4533445479%_
                                             (gx#syntax-e _%$%hd4533245473%_)))
                                        (let ((_%$%hd4533545483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4533445479%_)))
                                              (_%$%tl4533645486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4533445479%_))))
                                          (if (gx#stx-pair? _%$%hd4533545483%_)
                                              (let ((_%$%e4533745489%_
                                                     (gx#syntax-e
                                                      _%$%hd4533545483%_)))
                                                (let ((_%$%hd4533845493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4533745489%_)))
                                                      (_%$%tl4533945496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4533745489%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl4533345476%_)
                                                      (let ((_g87649_
                                                             (gx#syntax-split-splice
                                                              _%$%tl4533345476%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g87650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g87649_)
                               (##values-length _g87649_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g87650_ 2)))
                        (error "Context expects 2 values" _g87650_)))
                  (let ((_%$%target4534045499%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g87649_ 0)))
                        (_%$%tl4534245502%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g87649_ 1))))
                    (if (gx#stx-null? _%$%tl4534245502%_)
                        (letrec ((_%$%loop4534345505%_
                                  (lambda (_%$%hd4534145509%_
                                           _%$%body4534745512%_)
                                    (if (gx#stx-pair? _%$%hd4534145509%_)
                                        (let ((_%$%e4534445514%_
                                               (gx#syntax-e
                                                _%$%hd4534145509%_)))
                                          (let ((_%$%lp-hd4534545518%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4534445514%_)))
                                                (_%$%lp-tl4534645521%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4534445514%_))))
                                            (_%$%loop4534345505%_
                                             _%$%lp-tl4534645521%_
                                             (cons _%$%lp-hd4534545518%_
                                                   _%$%body4534745512%_))))
                                        (let ((_%$%body4534845524%_
                                               (reverse _%$%body4534745512%_)))
                                          ((lambda (_%$%g4532445527%_
                                                    _%$%g4532545529%_
                                                    _%$%g4532645530%_
                                                    _%$%g4532745531%_)
                                             (if (gx#identifier?
                                                  _%$%g4532745531%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'using)
                                                       (cons (cons _%$%g4532745531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g4532645530%_)
                     (cons (cons (gx#datum->syntax '#f 'using)
                                 (cons _%$%g4532545529%_
                                       (foldr (lambda (_%$%g4555345556%_
                                                       _%$%g4555445559%_)
                                                (cons _%$%g4555345556%_
                                                      _%$%g4555445559%_))
                                              '()
                                              _%$%g4532445527%_)))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4516045452%_
                                                  _%$%g4516245456%_)))
                                           _%$%body4534845524%_
                                           _%$%tl4533645486%_
                                           _%$%tl4533945496%_
                                           _%$%hd4533845493%_))))))
                          (_%$%loop4534345505%_ _%$%target4534045499%_ '()))
                        (_%$%g4516045452%_ _%$%g4516245456%_)))))
              (_%$%g4516045452%_ _%$%g4516245456%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4516045452%_
                                               _%$%g4516245456%_))))
                                      (_%$%g4516045452%_ _%$%g4516245456%_))))
                              (_%$%g4516045452%_ _%$%g4516245456%_))))
                      (_%$%g4516045452%_ _%$%g4516245456%_))))
               (_%$%g4515845722%_
                (lambda (_%$%g4516245566%_)
                  (if (gx#stx-pair? _%$%g4516245566%_)
                      (let ((_%$%e4529445569%_
                             (gx#syntax-e _%$%g4516245566%_)))
                        (let ((_%$%hd4529545573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4529445569%_)))
                              (_%$%tl4529645576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4529445569%_))))
                          (if (gx#stx-pair? _%$%tl4529645576%_)
                              (let ((_%$%e4529745579%_
                                     (gx#syntax-e _%$%tl4529645576%_)))
                                (let ((_%$%hd4529845583%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4529745579%_)))
                                      (_%$%tl4529945586%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4529745579%_))))
                                  (if (gx#stx-pair? _%$%hd4529845583%_)
                                      (let ((_%$%e4530045589%_
                                             (gx#syntax-e _%$%hd4529845583%_)))
                                        (let ((_%$%hd4530145593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4530045589%_)))
                                              (_%$%tl4530245596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4530045589%_))))
                                          (if (gx#stx-pair? _%$%tl4530245596%_)
                                              (let ((_%$%e4530345599%_
                                                     (gx#syntax-e
                                                      _%$%tl4530245596%_)))
                                                (let ((_%$%hd4530445603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4530345599%_)))
                                                      (_%$%tl4530545606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4530345599%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd4530445603%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g87651_|
                                                           _%$%hd4530445603%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl4530545606%_)
                                                              (let ((_%$%e4530645609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl4530545606%_)))
                        (let ((_%$%hd4530745613%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4530645609%_)))
                              (_%$%tl4530845616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4530645609%_))))
                          (if (gx#stx-pair? _%$%tl4530845616%_)
                              (let ((_%$%e4530945619%_
                                     (gx#syntax-e _%$%tl4530845616%_)))
                                (let ((_%$%hd4531045623%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4530945619%_)))
                                      (_%$%tl4531145626%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4530945619%_))))
                                  (if (gx#stx-pair? _%$%tl4531145626%_)
                                      (let ((_%$%e4531245629%_
                                             (gx#syntax-e _%$%tl4531145626%_)))
                                        (let ((_%$%hd4531345633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4531245629%_)))
                                              (_%$%tl4531445636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4531245629%_))))
                                          (if (gx#stx-null? _%$%tl4531445636%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4529945586%_)
                                                  (let ((_g87652_
                                                         (gx#syntax-split-splice
                                                          _%$%tl4529945586%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g87653_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g87652_)
                           (##values-length _g87652_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g87653_ 2)))
                    (error "Context expects 2 values" _g87653_)))
              (let ((_%$%target4531545639%_
                     (let () (declare (not safe)) (##values-ref _g87652_ 0)))
                    (_%$%tl4531745642%_
                     (let () (declare (not safe)) (##values-ref _g87652_ 1))))
                (if (gx#stx-null? _%$%tl4531745642%_)
                    (letrec ((_%$%loop4531845645%_
                              (lambda (_%$%hd4531645649%_ _%$%body4532245652%_)
                                (if (gx#stx-pair? _%$%hd4531645649%_)
                                    (let ((_%$%e4531945654%_
                                           (gx#syntax-e _%$%hd4531645649%_)))
                                      (let ((_%$%lp-hd4532045658%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4531945654%_)))
                                            (_%$%lp-tl4532145661%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4531945654%_))))
                                        (_%$%loop4531845645%_
                                         _%$%lp-tl4532145661%_
                                         (cons _%$%lp-hd4532045658%_
                                               _%$%body4532245652%_))))
                                    (let ((_%$%body4532345664%_
                                           (reverse _%$%body4532245652%_)))
                                      ((lambda (_%$%g4528945667%_
                                                _%$%g4529045669%_
                                                _%$%g4529145670%_
                                                _%$%g4529245671%_
                                                _%$%g4529345672%_)
                                         (if (and (gx#identifier?
                                                   _%$%g4529345672%_)
                                                  (gx#identifier?
                                                   _%$%g4529045669%_)
                                                  (gx#identifier?
                                                   _%$%g4529145670%_)
                                                  (or (gx#free-identifier=?
                                                       _%$%g4529145670%_
                                                       (gx#datum->syntax
                                                        '#f
                                                        ':))
                                                      (gx#free-identifier=?
                                                       _%$%g4529145670%_
                                                       (gx#datum->syntax
                                                        '#f
                                                        ':-))
                                                      (gx#free-identifier=?
                                                       _%$%g4529145670%_
                                                       (gx#datum->syntax
                                                        '#f
                                                        '::-))
                                                      (gx#free-identifier=?
                                                       _%$%g4529145670%_
                                                       (gx#datum->syntax
                                                        '#f
                                                        ':?))))
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'using)
                                                   (cons (cons _%$%g4529345672%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              ':~)
                             (cons _%$%g4529245671%_ '())))
                 (cons (cons (gx#datum->syntax '#f 'using)
                             (cons (cons _%$%g4529345672%_
                                         (cons _%$%g4529145670%_
                                               (cons _%$%g4529045669%_ '())))
                                   (foldr (lambda (_%$%g4571345716%_
                                                   _%$%g4571445719%_)
                                            (cons _%$%g4571345716%_
                                                  _%$%g4571445719%_))
                                          '()
                                          _%$%g4528945667%_)))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g4515945562%_
                                              _%$%g4516245566%_)))
                                       _%$%body4532345664%_
                                       _%$%hd4531345633%_
                                       _%$%hd4531045623%_
                                       _%$%hd4530745613%_
                                       _%$%hd4530145593%_))))))
                      (_%$%loop4531845645%_ _%$%target4531545639%_ '()))
                    (_%$%g4515945562%_ _%$%g4516245566%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4515945562%_
                                                   _%$%g4516245566%_))
                                              (_%$%g4515945562%_
                                               _%$%g4516245566%_))))
                                      (_%$%g4515945562%_ _%$%g4516245566%_))))
                              (_%$%g4515945562%_ _%$%g4516245566%_))))
                      (_%$%g4515945562%_ _%$%g4516245566%_))
                  (_%$%g4515945562%_ _%$%g4516245566%_))
              (_%$%g4515945562%_ _%$%g4516245566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4515945562%_
                                               _%$%g4516245566%_))))
                                      (_%$%g4515945562%_ _%$%g4516245566%_))))
                              (_%$%g4515945562%_ _%$%g4516245566%_))))
                      (_%$%g4515945562%_ _%$%g4516245566%_))))
               (_%$%g4515745842%_
                (lambda (_%$%g4516245726%_)
                  (if (gx#stx-pair? _%$%g4516245726%_)
                      (let ((_%$%e4526545729%_
                             (gx#syntax-e _%$%g4516245726%_)))
                        (let ((_%$%hd4526645733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4526545729%_)))
                              (_%$%tl4526745736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4526545729%_))))
                          (if (gx#stx-pair? _%$%tl4526745736%_)
                              (let ((_%$%e4526845739%_
                                     (gx#syntax-e _%$%tl4526745736%_)))
                                (let ((_%$%hd4526945743%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4526845739%_)))
                                      (_%$%tl4527045746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4526845739%_))))
                                  (if (gx#stx-pair? _%$%hd4526945743%_)
                                      (let ((_%$%e4527145749%_
                                             (gx#syntax-e _%$%hd4526945743%_)))
                                        (let ((_%$%hd4527245753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4527145749%_)))
                                              (_%$%tl4527345756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4527145749%_))))
                                          (if (gx#stx-pair? _%$%tl4527345756%_)
                                              (let ((_%$%e4527445759%_
                                                     (gx#syntax-e
                                                      _%$%tl4527345756%_)))
                                                (let ((_%$%hd4527545763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4527445759%_)))
                                                      (_%$%tl4527645766%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4527445759%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd4527545763%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g87654_|
                                                           _%$%hd4527545763%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl4527645766%_)
                                                              (let ((_%$%e4527745769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl4527645766%_)))
                        (let ((_%$%hd4527845773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4527745769%_)))
                              (_%$%tl4527945776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4527745769%_))))
                          (if (gx#stx-null? _%$%tl4527945776%_)
                              (if (gx#stx-pair/null? _%$%tl4527045746%_)
                                  (let ((_g87655_
                                         (gx#syntax-split-splice
                                          _%$%tl4527045746%_
                                          '0)))
                                    (begin
                                      (let ((_g87656_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g87655_)
                                                   (##values-length _g87655_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g87656_ 2)))
                                            (error "Context expects 2 values"
                                                   _g87656_)))
                                      (let ((_%$%target4528045779%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g87655_ 0)))
                                            (_%$%tl4528245782%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g87655_ 1))))
                                        (if (gx#stx-null? _%$%tl4528245782%_)
                                            (letrec ((_%$%loop4528345785%_
                                                      (lambda (_%$%hd4528145789%_
                                                               _%$%body4528745792%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd4528145789%_)
                                                            (let ((_%$%e4528445794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd4528145789%_)))
                      (let ((_%$%lp-hd4528545798%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e4528445794%_)))
                            (_%$%lp-tl4528645801%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e4528445794%_))))
                        (_%$%loop4528345785%_
                         _%$%lp-tl4528645801%_
                         (cons _%$%lp-hd4528545798%_ _%$%body4528745792%_))))
                    (let ((_%$%body4528845804%_
                           (reverse _%$%body4528745792%_)))
                      ((lambda (_%$%g4526245807%_
                                _%$%g4526345809%_
                                _%$%g4526445810%_)
                         (if (gx#identifier? _%$%g4526445810%_)
                             (cons (gx#datum->syntax '#f 'with-contract)
                                   (cons (cons _%$%g4526445810%_
                                               (cons (gx#datum->syntax '#f ':~)
                                                     (cons _%$%g4526345809%_
                                                           '())))
                                         (foldr (lambda (_%$%g4583345836%_
                                                         _%$%g4583445839%_)
                                                  (cons _%$%g4583345836%_
                                                        _%$%g4583445839%_))
                                                '()
                                                _%$%g4526245807%_)))
                             (_%$%g4515845722%_ _%$%g4516245726%_)))
                       _%$%body4528845804%_
                       _%$%hd4527845773%_
                       _%$%hd4527245753%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop4528345785%_
                                               _%$%target4528045779%_
                                               '()))
                                            (_%$%g4515845722%_
                                             _%$%g4516245726%_)))))
                                  (_%$%g4515845722%_ _%$%g4516245726%_))
                              (_%$%g4515845722%_ _%$%g4516245726%_))))
                      (_%$%g4515845722%_ _%$%g4516245726%_))
                  (_%$%g4515845722%_ _%$%g4516245726%_))
              (_%$%g4515845722%_ _%$%g4516245726%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4515845722%_
                                               _%$%g4516245726%_))))
                                      (_%$%g4515845722%_ _%$%g4516245726%_))))
                              (_%$%g4515845722%_ _%$%g4516245726%_))))
                      (_%$%g4515845722%_ _%$%g4516245726%_))))
               (_%$%g4515645993%_
                (lambda (_%$%g4516245846%_)
                  (if (gx#stx-pair? _%$%g4516245846%_)
                      (let ((_%$%e4523845849%_
                             (gx#syntax-e _%$%g4516245846%_)))
                        (let ((_%$%hd4523945853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4523845849%_)))
                              (_%$%tl4524045856%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4523845849%_))))
                          (if (gx#stx-pair? _%$%tl4524045856%_)
                              (let ((_%$%e4524145859%_
                                     (gx#syntax-e _%$%tl4524045856%_)))
                                (let ((_%$%hd4524245863%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4524145859%_)))
                                      (_%$%tl4524345866%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4524145859%_))))
                                  (if (gx#stx-pair? _%$%hd4524245863%_)
                                      (let ((_%$%e4524445869%_
                                             (gx#syntax-e _%$%hd4524245863%_)))
                                        (let ((_%$%hd4524545873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4524445869%_)))
                                              (_%$%tl4524645876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4524445869%_))))
                                          (if (gx#stx-pair? _%$%tl4524645876%_)
                                              (let ((_%$%e4524745879%_
                                                     (gx#syntax-e
                                                      _%$%tl4524645876%_)))
                                                (let ((_%$%hd4524845883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4524745879%_)))
                                                      (_%$%tl4524945886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4524745879%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl4524945886%_)
                                                      (let ((_%$%e4525045889%_
                                                             (gx#syntax-e
                                                              _%$%tl4524945886%_)))
                                                        (let ((_%$%hd4525145893%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e4525045889%_)))
                      (_%$%tl4525245896%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e4525045889%_))))
                  (if (gx#stx-null? _%$%tl4525245896%_)
                      (if (gx#stx-pair/null? _%$%tl4524345866%_)
                          (let ((_g87657_
                                 (gx#syntax-split-splice
                                  _%$%tl4524345866%_
                                  '0)))
                            (begin
                              (let ((_g87658_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g87657_)
                                           (##values-length _g87657_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g87658_ 2)))
                                    (error "Context expects 2 values"
                                           _g87658_)))
                              (let ((_%$%target4525345899%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g87657_ 0)))
                                    (_%$%tl4525545902%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g87657_ 1))))
                                (if (gx#stx-null? _%$%tl4525545902%_)
                                    (letrec ((_%$%loop4525645905%_
                                              (lambda (_%$%hd4525445909%_
                                                       _%$%body4526045912%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd4525445909%_)
                                                    (let ((_%$%e4525745914%_
                                                           (gx#syntax-e
                                                            _%$%hd4525445909%_)))
                                                      (let ((_%$%lp-hd4525845918%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e4525745914%_)))
                    (_%$%lp-tl4525945921%_
                     (let () (declare (not safe)) (##cdr _%$%e4525745914%_))))
                (_%$%loop4525645905%_
                 _%$%lp-tl4525945921%_
                 (cons _%$%lp-hd4525845918%_ _%$%body4526045912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%body4526145924%_
                                                           (reverse _%$%body4526045912%_)))
                                                      ((lambda (_%$%g4523445927%_
                                                                _%$%g4523545929%_
                                                                _%$%g4523645930%_
                                                                _%$%g4523745931%_)
                                                         (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g4523745931%_)
                          (gx#identifier? _%$%g4523545929%_)
                          (gx#identifier? _%$%g4523645930%_)
                          (or (gx#free-identifier=?
                               _%$%g4523645930%_
                               (gx#datum->syntax '#f ':))
                              (gx#free-identifier=?
                               _%$%g4523645930%_
                               (gx#datum->syntax '#f ':-))
                              (gx#free-identifier=?
                               _%$%g4523645930%_
                               (gx#datum->syntax '#f '::-))
                              (gx#free-identifier=?
                               _%$%g4523645930%_
                               (gx#datum->syntax '#f ':?))))
                     (let ((_%meta45968%_
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx45152%_
                             _%$%g4523545929%_)))
                       (if (gerbil/core/contract~InterfaceInfo#interface-info?
                            _%meta45968%_)
                           (cons (gx#datum->syntax '#f 'with-interface)
                                 (cons (cons _%$%g4523745931%_
                                             (cons _%$%g4523645930%_
                                                   (cons _%$%g4523545929%_
                                                         '())))
                                       (foldr (lambda (_%$%g4597245975%_
                                                       _%$%g4597345978%_)
                                                (cons _%$%g4597245975%_
                                                      _%$%g4597345978%_))
                                              '()
                                              _%$%g4523445927%_)))
                           (if (gerbil/core/mop~MOP-2#class-type-info?
                                _%meta45968%_)
                               (cons (gx#datum->syntax '#f 'with-class)
                                     (cons (cons _%$%g4523745931%_
                                                 (cons _%$%g4523645930%_
                                                       (cons _%$%g4523545929%_
                                                             '())))
                                           (foldr (lambda (_%$%g4598245985%_
                                                           _%$%g4598345988%_)
                                                    (cons _%$%g4598245985%_
                                                          _%$%g4598345988%_))
                                                  '()
                                                  _%$%g4523445927%_)))
                               (gx#raise-syntax-error
                                '#f
                                '"unexpected type; must be a class type or interface"
                                _%stx45152%_
                                _%$%g4523545929%_
                                _%meta45968%_))))
                     (_%$%g4515745842%_ _%$%g4516245846%_)))
               _%$%body4526145924%_
               _%$%hd4525145893%_
               _%$%hd4524845883%_
               _%$%hd4524545873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop4525645905%_
                                       _%$%target4525345899%_
                                       '()))
                                    (_%$%g4515745842%_ _%$%g4516245846%_)))))
                          (_%$%g4515745842%_ _%$%g4516245846%_))
                      (_%$%g4515745842%_ _%$%g4516245846%_))))
              (_%$%g4515745842%_ _%$%g4516245846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4515745842%_
                                               _%$%g4516245846%_))))
                                      (_%$%g4515745842%_ _%$%g4516245846%_))))
                              (_%$%g4515745842%_ _%$%g4516245846%_))))
                      (_%$%g4515745842%_ _%$%g4516245846%_))))
               (_%$%g4515546167%_
                (lambda (_%$%g4516245997%_)
                  (if (gx#stx-pair? _%$%g4516245997%_)
                      (let ((_%$%e4520146000%_
                             (gx#syntax-e _%$%g4516245997%_)))
                        (let ((_%$%hd4520246004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4520146000%_)))
                              (_%$%tl4520346007%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4520146000%_))))
                          (if (gx#stx-pair? _%$%tl4520346007%_)
                              (let ((_%$%e4520446010%_
                                     (gx#syntax-e _%$%tl4520346007%_)))
                                (let ((_%$%hd4520546014%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4520446010%_)))
                                      (_%$%tl4520646017%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4520446010%_))))
                                  (if (gx#stx-pair? _%$%hd4520546014%_)
                                      (let ((_%$%e4520746020%_
                                             (gx#syntax-e _%$%hd4520546014%_)))
                                        (let ((_%$%hd4520846024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4520746020%_)))
                                              (_%$%tl4520946027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4520746020%_))))
                                          (if (gx#stx-pair? _%$%tl4520946027%_)
                                              (let ((_%$%e4521046030%_
                                                     (gx#syntax-e
                                                      _%$%tl4520946027%_)))
                                                (let ((_%$%hd4521146034%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4521046030%_)))
                                                      (_%$%tl4521246037%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4521046030%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl4521246037%_)
                                                      (let ((_%$%e4521346040%_
                                                             (gx#syntax-e
                                                              _%$%tl4521246037%_)))
                                                        (let ((_%$%hd4521446044%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e4521346040%_)))
                      (_%$%tl4521546047%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e4521346040%_))))
                  (if (gx#identifier? _%$%hd4521446044%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/contract~Using[1]#_g87659_|
                           _%$%hd4521446044%_)
                          (if (gx#stx-pair? _%$%tl4521546047%_)
                              (let ((_%$%e4521646050%_
                                     (gx#syntax-e _%$%tl4521546047%_)))
                                (let ((_%$%hd4521746054%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4521646050%_)))
                                      (_%$%tl4521846057%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4521646050%_))))
                                  (if (gx#stx-pair? _%$%tl4521846057%_)
                                      (let ((_%$%e4521946060%_
                                             (gx#syntax-e _%$%tl4521846057%_)))
                                        (let ((_%$%hd4522046064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4521946060%_)))
                                              (_%$%tl4522146067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4521946060%_))))
                                          (if (gx#stx-pair? _%$%tl4522146067%_)
                                              (let ((_%$%e4522246070%_
                                                     (gx#syntax-e
                                                      _%$%tl4522146067%_)))
                                                (let ((_%$%hd4522346074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4522246070%_)))
                                                      (_%$%tl4522446077%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4522246070%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl4522446077%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl4520646017%_)
                                                          (let ((_g87660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%$%tl4520646017%_ '0)))
                    (begin
                      (let ((_g87661_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g87660_)
                                   (##values-length _g87660_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g87661_ 2)))
                            (error "Context expects 2 values" _g87661_)))
                      (let ((_%$%target4522546080%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g87660_ 0)))
                            (_%$%tl4522746083%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g87660_ 1))))
                        (if (gx#stx-null? _%$%tl4522746083%_)
                            (letrec ((_%$%loop4522846086%_
                                      (lambda (_%$%hd4522646090%_
                                               _%$%body4523246093%_)
                                        (if (gx#stx-pair? _%$%hd4522646090%_)
                                            (let ((_%$%e4522946095%_
                                                   (gx#syntax-e
                                                    _%$%hd4522646090%_)))
                                              (let ((_%$%lp-hd4523046099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4522946095%_)))
                                                    (_%$%lp-tl4523146102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4522946095%_))))
                                                (_%$%loop4522846086%_
                                                 _%$%lp-tl4523146102%_
                                                 (cons _%$%lp-hd4523046099%_
                                                       _%$%body4523246093%_))))
                                            (let ((_%$%body4523346105%_
                                                   (reverse _%$%body4523246093%_)))
                                              ((lambda (_%$%g4519546108%_
                                                        _%$%g4519646110%_
                                                        _%$%g4519746111%_
                                                        _%$%g4519846112%_
                                                        _%$%g4519946113%_
                                                        _%$%g4520046114%_)
                                                 (if (and (gx#identifier?
                                                           _%$%g4520046114%_)
                                                          (gx#identifier?
                                                           _%$%g4519646110%_)
                                                          (gx#identifier?
                                                           _%$%g4519746111%_)
                                                          (or (gx#free-identifier=?
                                                               _%$%g4519746111%_
                                                               (gx#datum->syntax
                                                                '#f
                                                                ':))
                                                              (gx#free-identifier=?
                                                               _%$%g4519746111%_
                                                               (gx#datum->syntax
                                                                '#f
                                                                ':-))
                                                              (gx#free-identifier=?
                                                               _%$%g4519746111%_
                                                               (gx#datum->syntax
                                                                '#f
                                                                '::-))
                                                              (gx#free-identifier=?
                                                               _%$%g4519746111%_
                                                               (gx#datum->syntax
                                                                '#f
                                                                ':?))))
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons _%$%g4520046114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%$%g4519946113%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'using)
                                     (cons (cons _%$%g4520046114%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        ':~)
                                                       (cons _%$%g4519846112%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'using)
                                                       (cons (cons _%$%g4520046114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g4519746111%_
                                 (cons _%$%g4519646110%_ '())))
                     (foldr (lambda (_%$%g4615846161%_ _%$%g4615946164%_)
                              (cons _%$%g4615846161%_ _%$%g4615946164%_))
                            '()
                            _%$%g4519546108%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4515645993%_
                                                      _%$%g4516245997%_)))
                                               _%$%body4523346105%_
                                               _%$%hd4522346074%_
                                               _%$%hd4522046064%_
                                               _%$%hd4521746054%_
                                               _%$%hd4521146034%_
                                               _%$%hd4520846024%_))))))
                              (_%$%loop4522846086%_
                               _%$%target4522546080%_
                               '()))
                            (_%$%g4515645993%_ _%$%g4516245997%_)))))
                  (_%$%g4515645993%_ _%$%g4516245997%_))
              (_%$%g4515645993%_ _%$%g4516245997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4515645993%_
                                               _%$%g4516245997%_))))
                                      (_%$%g4515645993%_ _%$%g4516245997%_))))
                              (_%$%g4515645993%_ _%$%g4516245997%_))
                          (_%$%g4515645993%_ _%$%g4516245997%_))
                      (_%$%g4515645993%_ _%$%g4516245997%_))))
              (_%$%g4515645993%_ _%$%g4516245997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4515645993%_
                                               _%$%g4516245997%_))))
                                      (_%$%g4515645993%_ _%$%g4516245997%_))))
                              (_%$%g4515645993%_ _%$%g4516245997%_))))
                      (_%$%g4515645993%_ _%$%g4516245997%_))))
               (_%$%g4515446319%_
                (lambda (_%$%g4516246171%_)
                  (if (gx#stx-pair? _%$%g4516246171%_)
                      (let ((_%$%e4516846174%_
                             (gx#syntax-e _%$%g4516246171%_)))
                        (let ((_%$%hd4516946178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4516846174%_)))
                              (_%$%tl4517046181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4516846174%_))))
                          (if (gx#stx-pair? _%$%tl4517046181%_)
                              (let ((_%$%e4517146184%_
                                     (gx#syntax-e _%$%tl4517046181%_)))
                                (let ((_%$%hd4517246188%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4517146184%_)))
                                      (_%$%tl4517346191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4517146184%_))))
                                  (if (gx#stx-pair? _%$%hd4517246188%_)
                                      (let ((_%$%e4517446194%_
                                             (gx#syntax-e _%$%hd4517246188%_)))
                                        (let ((_%$%hd4517546198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4517446194%_)))
                                              (_%$%tl4517646201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4517446194%_))))
                                          (if (gx#stx-pair? _%$%tl4517646201%_)
                                              (let ((_%$%e4517746204%_
                                                     (gx#syntax-e
                                                      _%$%tl4517646201%_)))
                                                (let ((_%$%hd4517846208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4517746204%_)))
                                                      (_%$%tl4517946211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4517746204%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl4517946211%_)
                                                      (let ((_%$%e4518046214%_
                                                             (gx#syntax-e
                                                              _%$%tl4517946211%_)))
                                                        (let ((_%$%hd4518146218%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e4518046214%_)))
                      (_%$%tl4518246221%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e4518046214%_))))
                  (if (gx#stx-pair? _%$%tl4518246221%_)
                      (let ((_%$%e4518346224%_
                             (gx#syntax-e _%$%tl4518246221%_)))
                        (let ((_%$%hd4518446228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4518346224%_)))
                              (_%$%tl4518546231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4518346224%_))))
                          (if (gx#stx-null? _%$%tl4518546231%_)
                              (if (gx#stx-pair/null? _%$%tl4517346191%_)
                                  (let ((_g87662_
                                         (gx#syntax-split-splice
                                          _%$%tl4517346191%_
                                          '0)))
                                    (begin
                                      (let ((_g87663_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g87662_)
                                                   (##values-length _g87662_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g87663_ 2)))
                                            (error "Context expects 2 values"
                                                   _g87663_)))
                                      (let ((_%$%target4518646234%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g87662_ 0)))
                                            (_%$%tl4518846237%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g87662_ 1))))
                                        (if (gx#stx-null? _%$%tl4518846237%_)
                                            (letrec ((_%$%loop4518946240%_
                                                      (lambda (_%$%hd4518746244%_
                                                               _%$%body4519346247%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd4518746244%_)
                                                            (let ((_%$%e4519046249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd4518746244%_)))
                      (let ((_%$%lp-hd4519146253%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e4519046249%_)))
                            (_%$%lp-tl4519246256%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e4519046249%_))))
                        (_%$%loop4518946240%_
                         _%$%lp-tl4519246256%_
                         (cons _%$%lp-hd4519146253%_ _%$%body4519346247%_))))
                    (let ((_%$%body4519446259%_
                           (reverse _%$%body4519346247%_)))
                      ((lambda (_%$%g4516346262%_
                                _%$%g4516446264%_
                                _%$%g4516546265%_
                                _%$%g4516646266%_
                                _%$%g4516746267%_)
                         (if (and (gx#identifier? _%$%g4516746267%_)
                                  (gx#identifier? _%$%g4516546265%_)
                                  (or (gx#free-identifier=?
                                       _%$%g4516546265%_
                                       (gx#datum->syntax '#f ':))
                                      (gx#free-identifier=?
                                       _%$%g4516546265%_
                                       (gx#datum->syntax '#f ':-))
                                      (gx#free-identifier=?
                                       _%$%g4516546265%_
                                       (gx#datum->syntax '#f '::-))
                                      (gx#free-identifier=?
                                       _%$%g4516546265%_
                                       (gx#datum->syntax '#f ':~))
                                      (gx#free-identifier=?
                                       _%$%g4516546265%_
                                       (gx#datum->syntax '#f ':?))))
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%$%g4516746267%_
                                               (cons _%$%g4516646266%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'using)
                                                     (cons (cons _%$%g4516746267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g4516546265%_ (cons _%$%g4516446264%_ '())))
                   (foldr (lambda (_%$%g4631046313%_ _%$%g4631146316%_)
                            (cons _%$%g4631046313%_ _%$%g4631146316%_))
                          '()
                          _%$%g4516346262%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (_%$%g4515546167%_ _%$%g4516246171%_)))
                       _%$%body4519446259%_
                       _%$%hd4518446228%_
                       _%$%hd4518146218%_
                       _%$%hd4517846208%_
                       _%$%hd4517546198%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop4518946240%_
                                               _%$%target4518646234%_
                                               '()))
                                            (_%$%g4515546167%_
                                             _%$%g4516246171%_)))))
                                  (_%$%g4515546167%_ _%$%g4516246171%_))
                              (_%$%g4515546167%_ _%$%g4516246171%_))))
                      (_%$%g4515546167%_ _%$%g4516246171%_))))
              (_%$%g4515546167%_ _%$%g4516246171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4515546167%_
                                               _%$%g4516246171%_))))
                                      (_%$%g4515546167%_ _%$%g4516246171%_))))
                              (_%$%g4515546167%_ _%$%g4516246171%_))))
                      (_%$%g4515546167%_ _%$%g4516246171%_)))))
          (_%$%g4515446319%_ _%stx45152%_))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx46330%_)
        (let* ((_%$%g4633446368%_
                (lambda (_%$%g4633546364%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4633546364%_)))
               (_%$%g4633346489%_
                (lambda (_%$%g4633546372%_)
                  (if (gx#stx-pair? _%$%g4633546372%_)
                      (let ((_%$%e4633946375%_
                             (gx#syntax-e _%$%g4633546372%_)))
                        (let ((_%$%hd4634046379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4633946375%_)))
                              (_%$%tl4634146382%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4633946375%_))))
                          (if (gx#stx-pair? _%$%tl4634146382%_)
                              (let ((_%$%e4634246385%_
                                     (gx#syntax-e _%$%tl4634146382%_)))
                                (let ((_%$%hd4634346389%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4634246385%_)))
                                      (_%$%tl4634446392%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4634246385%_))))
                                  (if (gx#stx-pair? _%$%hd4634346389%_)
                                      (let ((_%$%e4634546395%_
                                             (gx#syntax-e _%$%hd4634346389%_)))
                                        (let ((_%$%hd4634646399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4634546395%_)))
                                              (_%$%tl4634746402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4634546395%_))))
                                          (if (gx#stx-pair? _%$%tl4634746402%_)
                                              (let ((_%$%e4634846405%_
                                                     (gx#syntax-e
                                                      _%$%tl4634746402%_)))
                                                (let ((_%$%hd4634946409%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4634846405%_)))
                                                      (_%$%tl4635046412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4634846405%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd4634946409%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g87664_|
                                                           _%$%hd4634946409%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl4635046412%_)
                                                              (let ((_%$%e4635146415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl4635046412%_)))
                        (let ((_%$%hd4635246419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4635146415%_)))
                              (_%$%tl4635346422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4635146415%_))))
                          (if (gx#stx-null? _%$%tl4635346422%_)
                              (if (gx#stx-pair/null? _%$%tl4634446392%_)
                                  (let ((_g87665_
                                         (gx#syntax-split-splice
                                          _%$%tl4634446392%_
                                          '0)))
                                    (begin
                                      (let ((_g87666_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g87665_)
                                                   (##values-length _g87665_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g87666_ 2)))
                                            (error "Context expects 2 values"
                                                   _g87666_)))
                                      (let ((_%$%target4635446425%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g87665_ 0)))
                                            (_%$%tl4635646428%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g87665_ 1))))
                                        (if (gx#stx-null? _%$%tl4635646428%_)
                                            (letrec ((_%$%loop4635746431%_
                                                      (lambda (_%$%hd4635546435%_
                                                               _%$%body4636146438%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd4635546435%_)
                                                            (let ((_%$%e4635846440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd4635546435%_)))
                      (let ((_%$%lp-hd4635946444%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e4635846440%_)))
                            (_%$%lp-tl4636046447%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e4635846440%_))))
                        (_%$%loop4635746431%_
                         _%$%lp-tl4636046447%_
                         (cons _%$%lp-hd4635946444%_ _%$%body4636146438%_))))
                    (let ((_%$%body4636246450%_
                           (reverse _%$%body4636146438%_)))
                      ((lambda (_%$%g4633646453%_
                                _%$%g4633746455%_
                                _%$%g4633846456%_)
                         (if (gx#identifier? _%$%g4633846456%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%$%g4633746455%_
                                               (cons _%$%g4633846456%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%$%g4648046483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%$%g4648146486%_)
                            (cons _%$%g4648046483%_ _%$%g4648146486%_))
                          '()
                          _%$%g4633646453%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%$%g4633846456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g4633746455%_
                               (cons _%$%g4633846456%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%$%g4633446368%_ _%$%g4633546372%_)))
                       _%$%body4636246450%_
                       _%$%hd4635246419%_
                       _%$%hd4634646399%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop4635746431%_
                                               _%$%target4635446425%_
                                               '()))
                                            (_%$%g4633446368%_
                                             _%$%g4633546372%_)))))
                                  (_%$%g4633446368%_ _%$%g4633546372%_))
                              (_%$%g4633446368%_ _%$%g4633546372%_))))
                      (_%$%g4633446368%_ _%$%g4633546372%_))
                  (_%$%g4633446368%_ _%$%g4633546372%_))
              (_%$%g4633446368%_ _%$%g4633546372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4633446368%_
                                               _%$%g4633546372%_))))
                                      (_%$%g4633446368%_ _%$%g4633546372%_))))
                              (_%$%g4633446368%_ _%$%g4633546372%_))))
                      (_%$%g4633446368%_ _%$%g4633546372%_)))))
          (_%$%g4633346489%_ _%$stx46330%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass47247%_ _%slot47249%_)
        (let ((_%$e47251%_
               (gerbil/core/mop~MOP-2#!class-type-slot-types _%klass47247%_)))
          (if _%$e47251%_
              ((lambda (_%slot-types47255%_)
                 (agetq _%slot47249%_ _%slot-types47255%_))
               _%$e47251%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass47228%_ _%slot47230%_)
        (let ((_%$e47232%_
               (gerbil/core/mop~MOP-2#!class-type-slot-defaults
                _%klass47228%_)))
          (if _%$e47232%_
              ((lambda (_%slot-defaults47236%_)
                 (let ((_%$e47239%_
                        (agetq _%slot47230%_ _%slot-defaults47236%_)))
                   (if _%$e47239%_
                       (gx#syntax-local-introduce _%$e47239%_)
                       '#f)))
               _%$e47232%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass47209%_ _%slot47211%_)
        (let ((_%$e47213%_
               (gerbil/core/mop~MOP-2#!class-type-slot-defaults
                _%klass47209%_)))
          (if _%$e47213%_
              ((lambda (_%slot-defaults47217%_)
                 (let ((_%$e47220%_
                        (agetq _%slot47211%_ _%slot-defaults47217%_)))
                   (if _%$e47220%_
                       (gx#syntax-local-introduce _%$e47220%_)
                       '#f)))
               _%$e47213%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass46978%_ _%slot46980%_)
        (let ((_%$%contract4698146983%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass46978%_
                _%slot46980%_)))
          (if _%$%contract4698146983%_
              (let* ((_%contract46986%_ _%$%contract4698146983%_)
                     (_%$%g4699147028%_
                      (lambda (_%$%g4699247024%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g4699247024%_)))
                     (_%$%g4699047071%_
                      (lambda (_%$%g4699247032%_)
                        (if (gx#stx-pair? _%$%g4699247032%_)
                            (let ((_%$%e4701747035%_
                                   (gx#syntax-e _%$%g4699247032%_)))
                              (let ((_%$%hd4701847039%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4701747035%_)))
                                    (_%$%tl4701947042%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4701747035%_))))
                                (if (gx#identifier? _%$%hd4701847039%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g87667_|
                                         _%$%hd4701847039%_)
                                        (if (gx#stx-pair? _%$%tl4701947042%_)
                                            (let ((_%$%e4702047045%_
                                                   (gx#syntax-e
                                                    _%$%tl4701947042%_)))
                                              (let ((_%$%hd4702147049%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4702047045%_)))
                                                    (_%$%tl4702247052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4702047045%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4702247052%_)
                                                    ((lambda (_%$%g4701647055%_)
                                                       '#f)
                                                     _%$%hd4702147049%_)
                                                    (_%$%g4699147028%_
                                                     _%$%g4699247032%_))))
                                            (_%$%g4699147028%_
                                             _%$%g4699247032%_))
                                        (_%$%g4699147028%_ _%$%g4699247032%_))
                                    (_%$%g4699147028%_ _%$%g4699247032%_))))
                            (_%$%g4699147028%_ _%$%g4699247032%_))))
                     (_%$%g4698947151%_
                      (lambda (_%$%g4699247075%_)
                        (if (gx#stx-pair? _%$%g4699247075%_)
                            (let ((_%$%e4700447078%_
                                   (gx#syntax-e _%$%g4699247075%_)))
                              (let ((_%$%hd4700547082%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4700447078%_)))
                                    (_%$%tl4700647085%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4700447078%_))))
                                (if (gx#identifier? _%$%hd4700547082%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g87668_|
                                         _%$%hd4700547082%_)
                                        (if (gx#stx-pair? _%$%tl4700647085%_)
                                            (let ((_%$%e4700747088%_
                                                   (gx#syntax-e
                                                    _%$%tl4700647085%_)))
                                              (let ((_%$%hd4700847092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4700747088%_)))
                                                    (_%$%tl4700947095%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4700747088%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl4700947095%_)
                                                    (let ((_%$%e4701047098%_
                                                           (gx#syntax-e
                                                            _%$%tl4700947095%_)))
                                                      (let ((_%$%hd4701147102%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e4701047098%_)))
                    (_%$%tl4701247105%_
                     (let () (declare (not safe)) (##cdr _%$%e4701047098%_))))
                (if (gx#stx-pair? _%$%tl4701247105%_)
                    (let ((_%$%e4701347108%_ (gx#syntax-e _%$%tl4701247105%_)))
                      (let ((_%$%hd4701447112%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e4701347108%_)))
                            (_%$%tl4701547115%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e4701347108%_))))
                        (if (gx#stx-null? _%$%tl4701547115%_)
                            ((lambda (_%$%g4700147118%_
                                      _%$%g4700247120%_
                                      _%$%g4700347121%_)
                               (if (and (gx#identifier? _%$%g4700247120%_)
                                        (or (gx#free-identifier=?
                                             _%$%g4700247120%_
                                             (gx#datum->syntax '#f ':))
                                            (gx#free-identifier=?
                                             _%$%g4700247120%_
                                             (gx#datum->syntax '#f ':-))
                                            (gx#free-identifier=?
                                             _%$%g4700247120%_
                                             (gx#datum->syntax '#f '::-))
                                            (gx#free-identifier=?
                                             _%$%g4700247120%_
                                             (gx#datum->syntax '#f ':?))))
                                   (not (gx#free-identifier=?
                                         _%$%g4700247120%_
                                         (gx#datum->syntax '#f ':-)))
                                   (_%$%g4699047071%_ _%$%g4699247075%_)))
                             _%$%hd4701447112%_
                             _%$%hd4701147102%_
                             _%$%hd4700847092%_)
                            (_%$%g4699047071%_ _%$%g4699247075%_))))
                    (_%$%g4699047071%_ _%$%g4699247075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4699047071%_
                                                     _%$%g4699247075%_))))
                                            (_%$%g4699047071%_
                                             _%$%g4699247075%_))
                                        (_%$%g4699047071%_ _%$%g4699247075%_))
                                    (_%$%g4699047071%_ _%$%g4699247075%_))))
                            (_%$%g4699047071%_ _%$%g4699247075%_))))
                     (_%$%g4698847205%_
                      (lambda (_%$%g4699247155%_)
                        (if (gx#stx-pair? _%$%g4699247155%_)
                            (let ((_%$%e4699547158%_
                                   (gx#syntax-e _%$%g4699247155%_)))
                              (let ((_%$%hd4699647162%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4699547158%_)))
                                    (_%$%tl4699747165%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4699547158%_))))
                                (if (gx#stx-pair? _%$%tl4699747165%_)
                                    (let ((_%$%e4699847168%_
                                           (gx#syntax-e _%$%tl4699747165%_)))
                                      (let ((_%$%hd4699947172%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4699847168%_)))
                                            (_%$%tl4700047175%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4699847168%_))))
                                        (if (gx#stx-null? _%$%tl4700047175%_)
                                            ((lambda (_%$%g4699347178%_
                                                      _%$%g4699447180%_)
                                               (if (and (gx#identifier?
                                                         _%$%g4699447180%_)
                                                        (or (gx#free-identifier=?
                                                             _%$%g4699447180%_
                                                             (gx#datum->syntax
                                                              '#f
                                                              ':))
                                                            (gx#free-identifier=?
                                                             _%$%g4699447180%_
                                                             (gx#datum->syntax
                                                              '#f
                                                              ':-))
                                                            (gx#free-identifier=?
                                                             _%$%g4699447180%_
                                                             (gx#datum->syntax
                                                              '#f
                                                              '::-))
                                                            (gx#free-identifier=?
                                                             _%$%g4699447180%_
                                                             (gx#datum->syntax
                                                              '#f
                                                              ':?))))
                                                   (not (gx#free-identifier=?
                                                         _%$%g4699447180%_
                                                         (gx#datum->syntax
                                                          '#f
                                                          ':-)))
                                                   (_%$%g4698947151%_
                                                    _%$%g4699247155%_)))
                                             _%$%hd4699947172%_
                                             _%$%hd4699647162%_)
                                            (_%$%g4698947151%_
                                             _%$%g4699247155%_))))
                                    (_%$%g4698947151%_ _%$%g4699247155%_))))
                            (_%$%g4698947151%_ _%$%g4699247155%_)))))
                (_%$%g4698847205%_ _%contract46986%_))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass46747%_ _%slot46749%_)
        (let ((_%$%contract4675046752%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass46747%_
                _%slot46749%_)))
          (if _%$%contract4675046752%_
              (let* ((_%contract46755%_ _%$%contract4675046752%_)
                     (_%$%g4676046797%_
                      (lambda (_%$%g4676146793%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g4676146793%_)))
                     (_%$%g4675946840%_
                      (lambda (_%$%g4676146801%_)
                        (if (gx#stx-pair? _%$%g4676146801%_)
                            (let ((_%$%e4678646804%_
                                   (gx#syntax-e _%$%g4676146801%_)))
                              (let ((_%$%hd4678746808%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4678646804%_)))
                                    (_%$%tl4678846811%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4678646804%_))))
                                (if (gx#identifier? _%$%hd4678746808%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g87669_|
                                         _%$%hd4678746808%_)
                                        (if (gx#stx-pair? _%$%tl4678846811%_)
                                            (let ((_%$%e4678946814%_
                                                   (gx#syntax-e
                                                    _%$%tl4678846811%_)))
                                              (let ((_%$%hd4679046818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4678946814%_)))
                                                    (_%$%tl4679146821%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4678946814%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4679146821%_)
                                                    ((lambda (_%$%g4678546824%_)
                                                       '#t)
                                                     _%$%hd4679046818%_)
                                                    (_%$%g4676046797%_
                                                     _%$%g4676146801%_))))
                                            (_%$%g4676046797%_
                                             _%$%g4676146801%_))
                                        (_%$%g4676046797%_ _%$%g4676146801%_))
                                    (_%$%g4676046797%_ _%$%g4676146801%_))))
                            (_%$%g4676046797%_ _%$%g4676146801%_))))
                     (_%$%g4675846920%_
                      (lambda (_%$%g4676146844%_)
                        (if (gx#stx-pair? _%$%g4676146844%_)
                            (let ((_%$%e4677346847%_
                                   (gx#syntax-e _%$%g4676146844%_)))
                              (let ((_%$%hd4677446851%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4677346847%_)))
                                    (_%$%tl4677546854%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4677346847%_))))
                                (if (gx#identifier? _%$%hd4677446851%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g87670_|
                                         _%$%hd4677446851%_)
                                        (if (gx#stx-pair? _%$%tl4677546854%_)
                                            (let ((_%$%e4677646857%_
                                                   (gx#syntax-e
                                                    _%$%tl4677546854%_)))
                                              (let ((_%$%hd4677746861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4677646857%_)))
                                                    (_%$%tl4677846864%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4677646857%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl4677846864%_)
                                                    (let ((_%$%e4677946867%_
                                                           (gx#syntax-e
                                                            _%$%tl4677846864%_)))
                                                      (let ((_%$%hd4678046871%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e4677946867%_)))
                    (_%$%tl4678146874%_
                     (let () (declare (not safe)) (##cdr _%$%e4677946867%_))))
                (if (gx#stx-pair? _%$%tl4678146874%_)
                    (let ((_%$%e4678246877%_ (gx#syntax-e _%$%tl4678146874%_)))
                      (let ((_%$%hd4678346881%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e4678246877%_)))
                            (_%$%tl4678446884%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e4678246877%_))))
                        (if (gx#stx-null? _%$%tl4678446884%_)
                            ((lambda (_%$%g4677046887%_
                                      _%$%g4677146889%_
                                      _%$%g4677246890%_)
                               (if (and (gx#identifier? _%$%g4677146889%_)
                                        (or (gx#free-identifier=?
                                             _%$%g4677146889%_
                                             (gx#datum->syntax '#f ':))
                                            (gx#free-identifier=?
                                             _%$%g4677146889%_
                                             (gx#datum->syntax '#f ':-))
                                            (gx#free-identifier=?
                                             _%$%g4677146889%_
                                             (gx#datum->syntax '#f '::-))
                                            (gx#free-identifier=?
                                             _%$%g4677146889%_
                                             (gx#datum->syntax '#f ':?))))
                                   '#t
                                   (_%$%g4675946840%_ _%$%g4676146844%_)))
                             _%$%hd4678346881%_
                             _%$%hd4678046871%_
                             _%$%hd4677746861%_)
                            (_%$%g4675946840%_ _%$%g4676146844%_))))
                    (_%$%g4675946840%_ _%$%g4676146844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4675946840%_
                                                     _%$%g4676146844%_))))
                                            (_%$%g4675946840%_
                                             _%$%g4676146844%_))
                                        (_%$%g4675946840%_ _%$%g4676146844%_))
                                    (_%$%g4675946840%_ _%$%g4676146844%_))))
                            (_%$%g4675946840%_ _%$%g4676146844%_))))
                     (_%$%g4675746974%_
                      (lambda (_%$%g4676146924%_)
                        (if (gx#stx-pair? _%$%g4676146924%_)
                            (let ((_%$%e4676446927%_
                                   (gx#syntax-e _%$%g4676146924%_)))
                              (let ((_%$%hd4676546931%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4676446927%_)))
                                    (_%$%tl4676646934%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4676446927%_))))
                                (if (gx#stx-pair? _%$%tl4676646934%_)
                                    (let ((_%$%e4676746937%_
                                           (gx#syntax-e _%$%tl4676646934%_)))
                                      (let ((_%$%hd4676846941%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4676746937%_)))
                                            (_%$%tl4676946944%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4676746937%_))))
                                        (if (gx#stx-null? _%$%tl4676946944%_)
                                            ((lambda (_%$%g4676246947%_
                                                      _%$%g4676346949%_)
                                               (if (and (gx#identifier?
                                                         _%$%g4676346949%_)
                                                        (or (gx#free-identifier=?
                                                             _%$%g4676346949%_
                                                             (gx#datum->syntax
                                                              '#f
                                                              ':))
                                                            (gx#free-identifier=?
                                                             _%$%g4676346949%_
                                                             (gx#datum->syntax
                                                              '#f
                                                              ':-))
                                                            (gx#free-identifier=?
                                                             _%$%g4676346949%_
                                                             (gx#datum->syntax
                                                              '#f
                                                              '::-))
                                                            (gx#free-identifier=?
                                                             _%$%g4676346949%_
                                                             (gx#datum->syntax
                                                              '#f
                                                              ':?))))
                                                   (not (gx#free-identifier=?
                                                         _%$%g4676346949%_
                                                         (gx#datum->syntax
                                                          '#f
                                                          ':-)))
                                                   (_%$%g4675846920%_
                                                    _%$%g4676146924%_)))
                                             _%$%hd4676846941%_
                                             _%$%hd4676546931%_)
                                            (_%$%g4675846920%_
                                             _%$%g4676146924%_))))
                                    (_%$%g4675846920%_ _%$%g4676146924%_))))
                            (_%$%g4675846920%_ _%$%g4676146924%_)))))
                (_%$%g4675746974%_ _%contract46755%_))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id46734%_)
        (if (gx#identifier? _%id46734%_)
            (let* ((_%str46737%_ (symbol->string (gx#stx-e _%id46734%_)))
                   (_%$%index4673946741%_ (string-index _%str46737%_ '#\.)))
              (if _%$%index4673946741%_
                  (let ((_%index46744%_ _%$%index4673946741%_))
                    (if (fx> _%index46744%_ '0)
                        (not (ormap string-empty?
                                    (string-split _%str46737%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx46727%_ _%id46729%_)
        (let ((_%parts46731%_
               (string-split (symbol->string (gx#stx-e _%id46729%_)) '#\.)))
          (if (find string-empty? _%parts46731%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx46727%_
               _%id46729%_)
              (cons (gx#stx-identifier _%id46729%_ (car _%parts46731%_))
                    (map string->symbol (cdr _%parts46731%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx46613%_ _%klass-or-id46615%_ _%slot46616%_)
        (let* ((_%klass46618%_
                (if (gx#identifier? _%klass-or-id46615%_)
                    (|gerbil/core/contract~TypeReference[1]#resolve-type|
                     _%stx46613%_
                     _%klass-or-id46615%_)
                    _%klass-or-id46615%_))
               (_%$e46623%_
                (agetq _%slot46616%_
                       (gerbil/core/mop~MOP-2#!class-type-unchecked-accessors
                        _%klass46618%_))))
          (if _%$e46623%_
              _%$e46623%_
              (let ((_%$e46631%_
                     (agetq _%slot46616%_
                            (let ((_%$e46627%_
                                   (gerbil/core/mop~MOP-2#!class-type-slot-offsets
                                    _%klass46618%_)))
                              (if _%$e46627%_ _%$e46627%_ '())))))
                (if _%$e46631%_
                    ((lambda (_%offset46635%_)
                       (let* ((_%$%g4663846657%_
                               (lambda (_%$%g4663946653%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g4663946653%_)))
                              (_%$%g4663746721%_
                               (lambda (_%$%g4663946661%_)
                                 (if (gx#stx-pair? _%$%g4663946661%_)
                                     (let ((_%$%e4664346664%_
                                            (gx#syntax-e _%$%g4663946661%_)))
                                       (let ((_%$%hd4664446668%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4664346664%_)))
                                             (_%$%tl4664546671%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4664346664%_))))
                                         (if (gx#stx-pair? _%$%tl4664546671%_)
                                             (let ((_%$%e4664646674%_
                                                    (gx#syntax-e
                                                     _%$%tl4664546671%_)))
                                               (let ((_%$%hd4664746678%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4664646674%_)))
                                                     (_%$%tl4664846681%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4664646674%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%tl4664846681%_)
                                                     (let ((_%$%e4664946684%_
                                                            (gx#syntax-e
                                                             _%$%tl4664846681%_)))
                                                       (let ((_%$%hd4665046688%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e4664946684%_)))
                     (_%$%tl4665146691%_
                      (let () (declare (not safe)) (##cdr _%$%e4664946684%_))))
                 (if (gx#stx-null? _%$%tl4665146691%_)
                     ((lambda (_%$%g4664046694%_
                               _%$%g4664146696%_
                               _%$%g4664246697%_)
                        (gx#stx-wrap-source
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##unchecked-structure-ref)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       (cons _%$%g4664046694%_
                                                             (cons _%$%g4664246697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%g4664146696%_ '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (gx#stx-source _%stx46613%_)))
                      _%$%hd4665046688%_
                      _%$%hd4664746678%_
                      _%$%hd4664446668%_)
                     (_%$%g4663846657%_ _%$%g4663946661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4663846657%_
                                                      _%$%g4663946661%_))))
                                             (_%$%g4663846657%_
                                              _%$%g4663946661%_))))
                                     (_%$%g4663846657%_ _%$%g4663946661%_)))))
                         (_%$%g4663746721%_
                          (list (gerbil/core/mop~MOP-2#!runtime-type-descriptor
                                 _%klass46618%_)
                                _%slot46616%_
                                _%offset46635%_))))
                     _%$e46631%_)
                    (gx#raise-syntax-error
                     '#f
                     '"no accessor for slot"
                     _%stx46613%_
                     _%klass46618%_
                     _%slot46616%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx46494%_
               _%klass-or-id46496%_
               _%slot46497%_
               _%checked?46498%_)
        (let* ((_%klass46500%_
                (if (gx#identifier? _%klass-or-id46496%_)
                    (|gerbil/core/contract~TypeReference[1]#resolve-type|
                     _%stx46494%_
                     _%klass-or-id46496%_)
                    _%klass-or-id46496%_))
               (_%mutators46503%_
                (if _%checked?46498%_
                    (gerbil/core/mop~MOP-2#!class-type-mutators _%klass46500%_)
                    (gerbil/core/mop~MOP-2#!class-type-unchecked-mutators
                     _%klass46500%_)))
               (_%$e46508%_ (agetq _%slot46497%_ _%mutators46503%_)))
          (if _%$e46508%_
              _%$e46508%_
              (let ((_%$e46516%_
                     (agetq _%slot46497%_
                            (let ((_%$e46512%_
                                   (gerbil/core/mop~MOP-2#!class-type-slot-offsets
                                    _%klass46500%_)))
                              (if _%$e46512%_ _%$e46512%_ '())))))
                (if _%$e46516%_
                    ((lambda (_%offset46520%_)
                       (let* ((_%$%g4652346542%_
                               (lambda (_%$%g4652446538%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g4652446538%_)))
                              (_%$%g4652246607%_
                               (lambda (_%$%g4652446546%_)
                                 (if (gx#stx-pair? _%$%g4652446546%_)
                                     (let ((_%$%e4652846549%_
                                            (gx#syntax-e _%$%g4652446546%_)))
                                       (let ((_%$%hd4652946553%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4652846549%_)))
                                             (_%$%tl4653046556%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4652846549%_))))
                                         (if (gx#stx-pair? _%$%tl4653046556%_)
                                             (let ((_%$%e4653146559%_
                                                    (gx#syntax-e
                                                     _%$%tl4653046556%_)))
                                               (let ((_%$%hd4653246563%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4653146559%_)))
                                                     (_%$%tl4653346566%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4653146559%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%tl4653346566%_)
                                                     (let ((_%$%e4653446569%_
                                                            (gx#syntax-e
                                                             _%$%tl4653346566%_)))
                                                       (let ((_%$%hd4653546573%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e4653446569%_)))
                     (_%$%tl4653646576%_
                      (let () (declare (not safe)) (##cdr _%$%e4653446569%_))))
                 (if (gx#stx-null? _%$%tl4653646576%_)
                     ((lambda (_%$%g4652546579%_
                               _%$%g4652646581%_
                               _%$%g4652746582%_)
                        (gx#stx-wrap-source
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj)
                                           (cons (gx#datum->syntax '#f '$val)
                                                 '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##unchecked-structure-set!)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons _%$%g4652546579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g4652746582%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%$%g4652646581%_ '()))
                                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (gx#stx-source _%stx46494%_)))
                      _%$%hd4653546573%_
                      _%$%hd4653246563%_
                      _%$%hd4652946553%_)
                     (_%$%g4652346542%_ _%$%g4652446546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4652346542%_
                                                      _%$%g4652446546%_))))
                                             (_%$%g4652346542%_
                                              _%$%g4652446546%_))))
                                     (_%$%g4652346542%_ _%$%g4652446546%_)))))
                         (_%$%g4652246607%_
                          (list (gerbil/core/mop~MOP-2#!runtime-type-descriptor
                                 _%klass46500%_)
                                _%slot46497%_
                                _%offset46520%_))))
                     _%$e46516%_)
                    (gx#raise-syntax-error
                     '#f
                     '"no mutator for slot"
                     _%stx46494%_
                     _%klass46500%_
                     _%slot46497%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx47260%_)
        (letrec ((_%expand-body47263%_
                  (lambda (_%klass48161%_
                           _%var48163%_
                           _%Type48164%_
                           _%body48165%_
                           _%checked?48166%_)
                    (let* ((_%$%g4816848212%_
                            (lambda (_%$%g4816948208%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4816948208%_)))
                           (_%$%g4816748367%_
                            (lambda (_%$%g4816948216%_)
                              (if (gx#stx-pair? _%$%g4816948216%_)
                                  (let ((_%$%e4817748219%_
                                         (gx#syntax-e _%$%g4816948216%_)))
                                    (let ((_%$%hd4817848223%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4817748219%_)))
                                          (_%$%tl4817948226%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4817748219%_))))
                                      (if (gx#stx-pair? _%$%tl4817948226%_)
                                          (let ((_%$%e4818048229%_
                                                 (gx#syntax-e
                                                  _%$%tl4817948226%_)))
                                            (let ((_%$%hd4818148233%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4818048229%_)))
                                                  (_%$%tl4818248236%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4818048229%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl4818248236%_)
                                                  (let ((_%$%e4818348239%_
                                                         (gx#syntax-e
                                                          _%$%tl4818248236%_)))
                                                    (let ((_%$%hd4818448243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4818348239%_)))
                                                          (_%$%tl4818548246%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4818348239%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl4818548246%_)
                                                          (let ((_%$%e4818648249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl4818548246%_)))
                    (let ((_%$%hd4818748253%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4818648249%_)))
                          (_%$%tl4818848256%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4818648249%_))))
                      (if (gx#stx-pair? _%$%tl4818848256%_)
                          (let ((_%$%e4818948259%_
                                 (gx#syntax-e _%$%tl4818848256%_)))
                            (let ((_%$%hd4819048263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4818948259%_)))
                                  (_%$%tl4819148266%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4818948259%_))))
                              (if (gx#stx-pair? _%$%tl4819148266%_)
                                  (let ((_%$%e4819248269%_
                                         (gx#syntax-e _%$%tl4819148266%_)))
                                    (let ((_%$%hd4819348273%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4819248269%_)))
                                          (_%$%tl4819448276%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4819248269%_))))
                                      (if (gx#stx-pair? _%$%tl4819448276%_)
                                          (let ((_%$%e4819548279%_
                                                 (gx#syntax-e
                                                  _%$%tl4819448276%_)))
                                            (let ((_%$%hd4819648283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4819548279%_)))
                                                  (_%$%tl4819748286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4819548279%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd4819648283%_)
                                                  (let ((_g87671_
                                                         (gx#syntax-split-splice
                                                          _%$%hd4819648283%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g87672_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g87671_)
                           (##values-length _g87671_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g87672_ 2)))
                    (error "Context expects 2 values" _g87672_)))
              (let ((_%$%target4819848289%_
                     (let () (declare (not safe)) (##values-ref _g87671_ 0)))
                    (_%$%tl4820048292%_
                     (let () (declare (not safe)) (##values-ref _g87671_ 1))))
                (if (gx#stx-null? _%$%tl4820048292%_)
                    (letrec ((_%$%loop4820148295%_
                              (lambda (_%$%hd4819948299%_ _%$%body4820548302%_)
                                (if (gx#stx-pair? _%$%hd4819948299%_)
                                    (let ((_%$%e4820248304%_
                                           (gx#syntax-e _%$%hd4819948299%_)))
                                      (let ((_%$%lp-hd4820348308%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4820248304%_)))
                                            (_%$%lp-tl4820448311%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4820248304%_))))
                                        (_%$%loop4820148295%_
                                         _%$%lp-tl4820448311%_
                                         (cons _%$%lp-hd4820348308%_
                                               _%$%body4820548302%_))))
                                    (let ((_%$%body4820648314%_
                                           (reverse _%$%body4820548302%_)))
                                      (if (gx#stx-null? _%$%tl4819748286%_)
                                          ((lambda (_%$%g4817048317%_
                                                    _%$%g4817148319%_
                                                    _%$%g4817248320%_
                                                    _%$%g4817348321%_
                                                    _%$%g4817448322%_
                                                    _%$%g4817548323%_
                                                    _%$%g4817648324%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%$%g4817448322%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%$%g4817548323%_ '()))
                                         (cons _%$%g4817448322%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%$%g4817648324%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%$%g4817448322%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%$%g4817348321%_ '()))
                               (cons _%$%g4817248320%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%$%g4817148319%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%$%g4835848361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g4835948364%_)
                      (cons _%$%g4835848361%_ _%$%g4835948364%_))
                    '()
                    _%$%g4817048317%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%body4820648314%_
                                           _%$%hd4819348273%_
                                           _%$%hd4819048263%_
                                           _%$%hd4818748253%_
                                           _%$%hd4818448243%_
                                           _%$%hd4818148233%_
                                           _%$%hd4817848223%_)
                                          (_%$%g4816848212%_
                                           _%$%g4816948216%_)))))))
                      (_%$%loop4820148295%_ _%$%target4819848289%_ '()))
                    (_%$%g4816848212%_ _%$%g4816948216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4816848212%_
                                                   _%$%g4816948216%_))))
                                          (_%$%g4816848212%_
                                           _%$%g4816948216%_))))
                                  (_%$%g4816848212%_ _%$%g4816948216%_))))
                          (_%$%g4816848212%_ _%$%g4816948216%_))))
                  (_%$%g4816848212%_ _%$%g4816948216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4816848212%_
                                                   _%$%g4816948216%_))))
                                          (_%$%g4816848212%_
                                           _%$%g4816948216%_))))
                                  (_%$%g4816848212%_ _%$%g4816948216%_)))))
                      (_%$%g4816748367%_
                       (list (gx#syntax-local-introduce '@@type)
                             (gerbil/core/mop~MOP-2#!class-type-descriptor
                              _%klass48161%_)
                             _%var48163%_
                             _%klass48161%_
                             _%checked?48166%_
                             (gerbil/core/contract~TypeEnv#current-type-env)
                             _%body48165%_)))))
                 (_%expand47265%_
                  (lambda (_%var48053%_
                           _%Type48055%_
                           _%body48056%_
                           _%checked?48057%_
                           _%checked-mutators?48058%_
                           _%maybe?48059%_)
                    (let* ((_%klass48061%_
                            (gx#syntax-local-value _%Type48055%_ false))
                           (_%expr-body48068%_
                            (_%expand-body47263%_
                             _%klass48061%_
                             _%var48053%_
                             _%Type48055%_
                             _%body48056%_
                             (let ((_%$e48064%_ _%checked?48057%_))
                               (if _%$e48064%_
                                   _%$e48064%_
                                   _%checked-mutators?48058%_)))))
                      (if _%checked?48057%_
                          (let* ((_%$%g4807348092%_
                                  (lambda (_%$%g4807448088%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g4807448088%_)))
                                 (_%$%g4807248154%_
                                  (lambda (_%$%g4807448096%_)
                                    (if (gx#stx-pair? _%$%g4807448096%_)
                                        (let ((_%$%e4807848099%_
                                               (gx#syntax-e
                                                _%$%g4807448096%_)))
                                          (let ((_%$%hd4807948103%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4807848099%_)))
                                                (_%$%tl4808048106%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4807848099%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4808048106%_)
                                                (let ((_%$%e4808148109%_
                                                       (gx#syntax-e
                                                        _%$%tl4808048106%_)))
                                                  (let ((_%$%hd4808248113%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4808148109%_)))
                                                        (_%$%tl4808348116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4808148109%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4808348116%_)
                                                        (let ((_%$%e4808448119%_
                                                               (gx#syntax-e
                                                                _%$%tl4808348116%_)))
                                                          (let ((_%$%hd4808548123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4808448119%_)))
                        (_%$%tl4808648126%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4808448119%_))))
                    (if (gx#stx-null? _%$%tl4808648126%_)
                        ((lambda (_%$%g4807548129%_
                                  _%$%g4807648131%_
                                  _%$%g4807748132%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%$%g4807648131%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%$%g4807748132%_
                                                         '())))
                                       (cons _%$%g4807548129%_ '()))))
                         _%$%hd4808548123%_
                         _%$%hd4808248113%_
                         _%$%hd4807948103%_)
                        (_%$%g4807348092%_ _%$%g4807448096%_))))
                (_%$%g4807348092%_ _%$%g4807448096%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4807348092%_
                                                 _%$%g4807448096%_))))
                                        (_%$%g4807348092%_
                                         _%$%g4807448096%_)))))
                            (_%$%g4807248154%_
                             (list (let ((_%instance?48158%_
                                          (gerbil/core/mop~MOP-2#!class-type-predicate
                                           _%klass48061%_)))
                                     (if _%maybe?48059%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?48158%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?48158%_))
                                   _%var48053%_
                                   _%expr-body48068%_)))
                          _%expr-body48068%_)))))
          (let* ((_%$%g4727147414%_
                  (lambda (_%$%g4727247410%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g4727247410%_)))
                 (_%$%g4727047536%_
                  (lambda (_%$%g4727247418%_)
                    (if (gx#stx-pair? _%$%g4727247418%_)
                        (let ((_%$%e4738547421%_
                               (gx#syntax-e _%$%g4727247418%_)))
                          (let ((_%$%hd4738647425%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4738547421%_)))
                                (_%$%tl4738747428%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4738547421%_))))
                            (if (gx#stx-pair? _%$%tl4738747428%_)
                                (let ((_%$%e4738847431%_
                                       (gx#syntax-e _%$%tl4738747428%_)))
                                  (let ((_%$%hd4738947435%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4738847431%_)))
                                        (_%$%tl4739047438%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4738847431%_))))
                                    (if (gx#stx-pair? _%$%hd4738947435%_)
                                        (let ((_%$%e4739147441%_
                                               (gx#syntax-e
                                                _%$%hd4738947435%_)))
                                          (let ((_%$%hd4739247445%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4739147441%_)))
                                                (_%$%tl4739347448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4739147441%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4739347448%_)
                                                (let ((_%$%e4739447451%_
                                                       (gx#syntax-e
                                                        _%$%tl4739347448%_)))
                                                  (let ((_%$%hd4739547455%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4739447451%_)))
                                                        (_%$%tl4739647458%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4739447451%_))))
                                                    (if (gx#identifier?
                                                         _%$%hd4739547455%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/contract~Using[1]#_g87673_|
                                                             _%$%hd4739547455%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4739647458%_)
                        (let ((_%$%e4739747461%_
                               (gx#syntax-e _%$%tl4739647458%_)))
                          (let ((_%$%hd4739847465%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4739747461%_)))
                                (_%$%tl4739947468%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4739747461%_))))
                            (if (gx#stx-null? _%$%tl4739947468%_)
                                (if (gx#stx-pair/null? _%$%tl4739047438%_)
                                    (let ((_g87674_
                                           (gx#syntax-split-splice
                                            _%$%tl4739047438%_
                                            '0)))
                                      (begin
                                        (let ((_g87675_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g87674_)
                                                     (##values-length _g87674_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g87675_ 2)))
                                              (error "Context expects 2 values"
                                                     _g87675_)))
                                        (let ((_%$%target4740047471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87674_ 0)))
                                              (_%$%tl4740247474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87674_ 1))))
                                          (if (gx#stx-null? _%$%tl4740247474%_)
                                              (letrec ((_%$%loop4740347477%_
                                                        (lambda (_%$%hd4740147481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%body4740747484%_)
                  (if (gx#stx-pair? _%$%hd4740147481%_)
                      (let ((_%$%e4740447486%_
                             (gx#syntax-e _%$%hd4740147481%_)))
                        (let ((_%$%lp-hd4740547490%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4740447486%_)))
                              (_%$%lp-tl4740647493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4740447486%_))))
                          (_%$%loop4740347477%_
                           _%$%lp-tl4740647493%_
                           (cons _%$%lp-hd4740547490%_ _%$%body4740747484%_))))
                      (let ((_%$%body4740847496%_
                             (reverse _%$%body4740747484%_)))
                        ((lambda (_%$%g4738247499%_
                                  _%$%g4738347501%_
                                  _%$%g4738447502%_)
                           (if (gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                _%$%g4738347501%_)
                               (_%expand47265%_
                                _%$%g4738447502%_
                                _%$%g4738347501%_
                                (foldr (lambda (_%$%g4752747530%_
                                                _%$%g4752847533%_)
                                         (cons _%$%g4752747530%_
                                               _%$%g4752847533%_))
                                       '()
                                       _%$%g4738247499%_)
                                '#f
                                '#t
                                '#f)
                               (_%$%g4727147414%_ _%$%g4727247418%_)))
                         _%$%body4740847496%_
                         _%$%hd4739847465%_
                         _%$%hd4739247445%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop4740347477%_
                                                 _%$%target4740047471%_
                                                 '()))
                                              (_%$%g4727147414%_
                                               _%$%g4727247418%_)))))
                                    (_%$%g4727147414%_ _%$%g4727247418%_))
                                (_%$%g4727147414%_ _%$%g4727247418%_))))
                        (_%$%g4727147414%_ _%$%g4727247418%_))
                    (_%$%g4727147414%_ _%$%g4727247418%_))
                (_%$%g4727147414%_ _%$%g4727247418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4727147414%_
                                                 _%$%g4727247418%_))))
                                        (_%$%g4727147414%_
                                         _%$%g4727247418%_))))
                                (_%$%g4727147414%_ _%$%g4727247418%_))))
                        (_%$%g4727147414%_ _%$%g4727247418%_))))
                 (_%$%g4726947656%_
                  (lambda (_%$%g4727247540%_)
                    (if (gx#stx-pair? _%$%g4727247540%_)
                        (let ((_%$%e4735847543%_
                               (gx#syntax-e _%$%g4727247540%_)))
                          (let ((_%$%hd4735947547%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4735847543%_)))
                                (_%$%tl4736047550%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4735847543%_))))
                            (if (gx#stx-pair? _%$%tl4736047550%_)
                                (let ((_%$%e4736147553%_
                                       (gx#syntax-e _%$%tl4736047550%_)))
                                  (let ((_%$%hd4736247557%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4736147553%_)))
                                        (_%$%tl4736347560%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4736147553%_))))
                                    (if (gx#stx-pair? _%$%hd4736247557%_)
                                        (let ((_%$%e4736447563%_
                                               (gx#syntax-e
                                                _%$%hd4736247557%_)))
                                          (let ((_%$%hd4736547567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4736447563%_)))
                                                (_%$%tl4736647570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4736447563%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4736647570%_)
                                                (let ((_%$%e4736747573%_
                                                       (gx#syntax-e
                                                        _%$%tl4736647570%_)))
                                                  (let ((_%$%hd4736847577%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4736747573%_)))
                                                        (_%$%tl4736947580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4736747573%_))))
                                                    (if (gx#identifier?
                                                         _%$%hd4736847577%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/contract~Using[1]#_g87676_|
                                                             _%$%hd4736847577%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4736947580%_)
                        (let ((_%$%e4737047583%_
                               (gx#syntax-e _%$%tl4736947580%_)))
                          (let ((_%$%hd4737147587%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4737047583%_)))
                                (_%$%tl4737247590%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4737047583%_))))
                            (if (gx#stx-null? _%$%tl4737247590%_)
                                (if (gx#stx-pair/null? _%$%tl4736347560%_)
                                    (let ((_g87677_
                                           (gx#syntax-split-splice
                                            _%$%tl4736347560%_
                                            '0)))
                                      (begin
                                        (let ((_g87678_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g87677_)
                                                     (##values-length _g87677_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g87678_ 2)))
                                              (error "Context expects 2 values"
                                                     _g87678_)))
                                        (let ((_%$%target4737347593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87677_ 0)))
                                              (_%$%tl4737547596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87677_ 1))))
                                          (if (gx#stx-null? _%$%tl4737547596%_)
                                              (letrec ((_%$%loop4737647599%_
                                                        (lambda (_%$%hd4737447603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%body4738047606%_)
                  (if (gx#stx-pair? _%$%hd4737447603%_)
                      (let ((_%$%e4737747608%_
                             (gx#syntax-e _%$%hd4737447603%_)))
                        (let ((_%$%lp-hd4737847612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4737747608%_)))
                              (_%$%lp-tl4737947615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4737747608%_))))
                          (_%$%loop4737647599%_
                           _%$%lp-tl4737947615%_
                           (cons _%$%lp-hd4737847612%_ _%$%body4738047606%_))))
                      (let ((_%$%body4738147618%_
                             (reverse _%$%body4738047606%_)))
                        ((lambda (_%$%g4735547621%_
                                  _%$%g4735647623%_
                                  _%$%g4735747624%_)
                           (if (gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                _%$%g4735647623%_)
                               (_%expand47265%_
                                _%$%g4735747624%_
                                _%$%g4735647623%_
                                (foldr (lambda (_%$%g4764747650%_
                                                _%$%g4764847653%_)
                                         (cons _%$%g4764747650%_
                                               _%$%g4764847653%_))
                                       '()
                                       _%$%g4735547621%_)
                                '#f
                                '#f
                                '#f)
                               (_%$%g4727047536%_ _%$%g4727247540%_)))
                         _%$%body4738147618%_
                         _%$%hd4737147587%_
                         _%$%hd4736547567%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop4737647599%_
                                                 _%$%target4737347593%_
                                                 '()))
                                              (_%$%g4727047536%_
                                               _%$%g4727247540%_)))))
                                    (_%$%g4727047536%_ _%$%g4727247540%_))
                                (_%$%g4727047536%_ _%$%g4727247540%_))))
                        (_%$%g4727047536%_ _%$%g4727247540%_))
                    (_%$%g4727047536%_ _%$%g4727247540%_))
                (_%$%g4727047536%_ _%$%g4727247540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4727047536%_
                                                 _%$%g4727247540%_))))
                                        (_%$%g4727047536%_
                                         _%$%g4727247540%_))))
                                (_%$%g4727047536%_ _%$%g4727247540%_))))
                        (_%$%g4727047536%_ _%$%g4727247540%_))))
                 (_%$%g4726847776%_
                  (lambda (_%$%g4727247660%_)
                    (if (gx#stx-pair? _%$%g4727247660%_)
                        (let ((_%$%e4733147663%_
                               (gx#syntax-e _%$%g4727247660%_)))
                          (let ((_%$%hd4733247667%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4733147663%_)))
                                (_%$%tl4733347670%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4733147663%_))))
                            (if (gx#stx-pair? _%$%tl4733347670%_)
                                (let ((_%$%e4733447673%_
                                       (gx#syntax-e _%$%tl4733347670%_)))
                                  (let ((_%$%hd4733547677%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4733447673%_)))
                                        (_%$%tl4733647680%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4733447673%_))))
                                    (if (gx#stx-pair? _%$%hd4733547677%_)
                                        (let ((_%$%e4733747683%_
                                               (gx#syntax-e
                                                _%$%hd4733547677%_)))
                                          (let ((_%$%hd4733847687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4733747683%_)))
                                                (_%$%tl4733947690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4733747683%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4733947690%_)
                                                (let ((_%$%e4734047693%_
                                                       (gx#syntax-e
                                                        _%$%tl4733947690%_)))
                                                  (let ((_%$%hd4734147697%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4734047693%_)))
                                                        (_%$%tl4734247700%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4734047693%_))))
                                                    (if (gx#identifier?
                                                         _%$%hd4734147697%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/contract~Using[1]#_g87679_|
                                                             _%$%hd4734147697%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4734247700%_)
                        (let ((_%$%e4734347703%_
                               (gx#syntax-e _%$%tl4734247700%_)))
                          (let ((_%$%hd4734447707%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4734347703%_)))
                                (_%$%tl4734547710%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4734347703%_))))
                            (if (gx#stx-null? _%$%tl4734547710%_)
                                (if (gx#stx-pair/null? _%$%tl4733647680%_)
                                    (let ((_g87680_
                                           (gx#syntax-split-splice
                                            _%$%tl4733647680%_
                                            '0)))
                                      (begin
                                        (let ((_g87681_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g87680_)
                                                     (##values-length _g87680_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g87681_ 2)))
                                              (error "Context expects 2 values"
                                                     _g87681_)))
                                        (let ((_%$%target4734647713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87680_ 0)))
                                              (_%$%tl4734847716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87680_ 1))))
                                          (if (gx#stx-null? _%$%tl4734847716%_)
                                              (letrec ((_%$%loop4734947719%_
                                                        (lambda (_%$%hd4734747723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%body4735347726%_)
                  (if (gx#stx-pair? _%$%hd4734747723%_)
                      (let ((_%$%e4735047728%_
                             (gx#syntax-e _%$%hd4734747723%_)))
                        (let ((_%$%lp-hd4735147732%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4735047728%_)))
                              (_%$%lp-tl4735247735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4735047728%_))))
                          (_%$%loop4734947719%_
                           _%$%lp-tl4735247735%_
                           (cons _%$%lp-hd4735147732%_ _%$%body4735347726%_))))
                      (let ((_%$%body4735447738%_
                             (reverse _%$%body4735347726%_)))
                        ((lambda (_%$%g4732847741%_
                                  _%$%g4732947743%_
                                  _%$%g4733047744%_)
                           (if (gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                _%$%g4732947743%_)
                               (_%expand47265%_
                                _%$%g4733047744%_
                                _%$%g4732947743%_
                                (foldr (lambda (_%$%g4776747770%_
                                                _%$%g4776847773%_)
                                         (cons _%$%g4776747770%_
                                               _%$%g4776847773%_))
                                       '()
                                       _%$%g4732847741%_)
                                '#t
                                '#t
                                '#t)
                               (_%$%g4726947656%_ _%$%g4727247660%_)))
                         _%$%body4735447738%_
                         _%$%hd4734447707%_
                         _%$%hd4733847687%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop4734947719%_
                                                 _%$%target4734647713%_
                                                 '()))
                                              (_%$%g4726947656%_
                                               _%$%g4727247660%_)))))
                                    (_%$%g4726947656%_ _%$%g4727247660%_))
                                (_%$%g4726947656%_ _%$%g4727247660%_))))
                        (_%$%g4726947656%_ _%$%g4727247660%_))
                    (_%$%g4726947656%_ _%$%g4727247660%_))
                (_%$%g4726947656%_ _%$%g4727247660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4726947656%_
                                                 _%$%g4727247660%_))))
                                        (_%$%g4726947656%_
                                         _%$%g4727247660%_))))
                                (_%$%g4726947656%_ _%$%g4727247660%_))))
                        (_%$%g4726947656%_ _%$%g4727247660%_))))
                 (_%$%g4726747896%_
                  (lambda (_%$%g4727247780%_)
                    (if (gx#stx-pair? _%$%g4727247780%_)
                        (let ((_%$%e4730447783%_
                               (gx#syntax-e _%$%g4727247780%_)))
                          (let ((_%$%hd4730547787%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4730447783%_)))
                                (_%$%tl4730647790%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4730447783%_))))
                            (if (gx#stx-pair? _%$%tl4730647790%_)
                                (let ((_%$%e4730747793%_
                                       (gx#syntax-e _%$%tl4730647790%_)))
                                  (let ((_%$%hd4730847797%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4730747793%_)))
                                        (_%$%tl4730947800%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4730747793%_))))
                                    (if (gx#stx-pair? _%$%hd4730847797%_)
                                        (let ((_%$%e4731047803%_
                                               (gx#syntax-e
                                                _%$%hd4730847797%_)))
                                          (let ((_%$%hd4731147807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4731047803%_)))
                                                (_%$%tl4731247810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4731047803%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4731247810%_)
                                                (let ((_%$%e4731347813%_
                                                       (gx#syntax-e
                                                        _%$%tl4731247810%_)))
                                                  (let ((_%$%hd4731447817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4731347813%_)))
                                                        (_%$%tl4731547820%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4731347813%_))))
                                                    (if (gx#identifier?
                                                         _%$%hd4731447817%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/contract~Using[1]#_g87682_|
                                                             _%$%hd4731447817%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4731547820%_)
                        (let ((_%$%e4731647823%_
                               (gx#syntax-e _%$%tl4731547820%_)))
                          (let ((_%$%hd4731747827%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4731647823%_)))
                                (_%$%tl4731847830%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4731647823%_))))
                            (if (gx#stx-null? _%$%tl4731847830%_)
                                (if (gx#stx-pair/null? _%$%tl4730947800%_)
                                    (let ((_g87683_
                                           (gx#syntax-split-splice
                                            _%$%tl4730947800%_
                                            '0)))
                                      (begin
                                        (let ((_g87684_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g87683_)
                                                     (##values-length _g87683_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g87684_ 2)))
                                              (error "Context expects 2 values"
                                                     _g87684_)))
                                        (let ((_%$%target4731947833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87683_ 0)))
                                              (_%$%tl4732147836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87683_ 1))))
                                          (if (gx#stx-null? _%$%tl4732147836%_)
                                              (letrec ((_%$%loop4732247839%_
                                                        (lambda (_%$%hd4732047843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%body4732647846%_)
                  (if (gx#stx-pair? _%$%hd4732047843%_)
                      (let ((_%$%e4732347848%_
                             (gx#syntax-e _%$%hd4732047843%_)))
                        (let ((_%$%lp-hd4732447852%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4732347848%_)))
                              (_%$%lp-tl4732547855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4732347848%_))))
                          (_%$%loop4732247839%_
                           _%$%lp-tl4732547855%_
                           (cons _%$%lp-hd4732447852%_ _%$%body4732647846%_))))
                      (let ((_%$%body4732747858%_
                             (reverse _%$%body4732647846%_)))
                        ((lambda (_%$%g4730147861%_
                                  _%$%g4730247863%_
                                  _%$%g4730347864%_)
                           (if (gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                _%$%g4730247863%_)
                               (_%expand47265%_
                                _%$%g4730347864%_
                                _%$%g4730247863%_
                                (foldr (lambda (_%$%g4788747890%_
                                                _%$%g4788847893%_)
                                         (cons _%$%g4788747890%_
                                               _%$%g4788847893%_))
                                       '()
                                       _%$%g4730147861%_)
                                '#t
                                '#t
                                '#f)
                               (_%$%g4726847776%_ _%$%g4727247780%_)))
                         _%$%body4732747858%_
                         _%$%hd4731747827%_
                         _%$%hd4731147807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop4732247839%_
                                                 _%$%target4731947833%_
                                                 '()))
                                              (_%$%g4726847776%_
                                               _%$%g4727247780%_)))))
                                    (_%$%g4726847776%_ _%$%g4727247780%_))
                                (_%$%g4726847776%_ _%$%g4727247780%_))))
                        (_%$%g4726847776%_ _%$%g4727247780%_))
                    (_%$%g4726847776%_ _%$%g4727247780%_))
                (_%$%g4726847776%_ _%$%g4727247780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4726847776%_
                                                 _%$%g4727247780%_))))
                                        (_%$%g4726847776%_
                                         _%$%g4727247780%_))))
                                (_%$%g4726847776%_ _%$%g4727247780%_))))
                        (_%$%g4726847776%_ _%$%g4727247780%_))))
                 (_%$%g4726648049%_
                  (lambda (_%$%g4727247900%_)
                    (if (gx#stx-pair? _%$%g4727247900%_)
                        (let ((_%$%e4727747903%_
                               (gx#syntax-e _%$%g4727247900%_)))
                          (let ((_%$%hd4727847907%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4727747903%_)))
                                (_%$%tl4727947910%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4727747903%_))))
                            (if (gx#stx-pair? _%$%tl4727947910%_)
                                (let ((_%$%e4728047913%_
                                       (gx#syntax-e _%$%tl4727947910%_)))
                                  (let ((_%$%hd4728147917%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4728047913%_)))
                                        (_%$%tl4728247920%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4728047913%_))))
                                    (if (gx#stx-pair? _%$%hd4728147917%_)
                                        (let ((_%$%e4728347923%_
                                               (gx#syntax-e
                                                _%$%hd4728147917%_)))
                                          (let ((_%$%hd4728447927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4728347923%_)))
                                                (_%$%tl4728547930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4728347923%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4728547930%_)
                                                (let ((_%$%e4728647933%_
                                                       (gx#syntax-e
                                                        _%$%tl4728547930%_)))
                                                  (let ((_%$%hd4728747937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4728647933%_)))
                                                        (_%$%tl4728847940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4728647933%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4728847940%_)
                                                        (let ((_%$%e4728947943%_
                                                               (gx#syntax-e
                                                                _%$%tl4728847940%_)))
                                                          (let ((_%$%hd4729047947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4728947943%_)))
                        (_%$%tl4729147950%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4728947943%_))))
                    (if (gx#stx-null? _%$%tl4729147950%_)
                        (if (gx#stx-pair/null? _%$%tl4728247920%_)
                            (let ((_g87685_
                                   (gx#syntax-split-splice
                                    _%$%tl4728247920%_
                                    '0)))
                              (begin
                                (let ((_g87686_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g87685_)
                                             (##values-length _g87685_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g87686_ 2)))
                                      (error "Context expects 2 values"
                                             _g87686_)))
                                (let ((_%$%target4729247953%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g87685_ 0)))
                                      (_%$%tl4729447956%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g87685_ 1))))
                                  (if (gx#stx-null? _%$%tl4729447956%_)
                                      (letrec ((_%$%loop4729547959%_
                                                (lambda (_%$%hd4729347963%_
                                                         _%$%body4729947966%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd4729347963%_)
                                                      (let ((_%$%e4729647968%_
                                                             (gx#syntax-e
                                                              _%$%hd4729347963%_)))
                                                        (let ((_%$%lp-hd4729747972%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e4729647968%_)))
                      (_%$%lp-tl4729847975%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e4729647968%_))))
                  (_%$%loop4729547959%_
                   _%$%lp-tl4729847975%_
                   (cons _%$%lp-hd4729747972%_ _%$%body4729947966%_))))
              (let ((_%$%body4730047978%_ (reverse _%$%body4729947966%_)))
                ((lambda (_%$%g4727347981%_
                          _%$%g4727447983%_
                          _%$%g4727547984%_
                          _%$%g4727647985%_)
                   (if (|gerbil/core/contract~TypeReference[1]#type-reference?|
                        (gx#syntax-local-value _%$%g4727447983%_ false))
                       (let* ((_%$%g4801048018%_
                               (lambda (_%$%g4801148014%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g4801148014%_)))
                              (_%$%g4800948045%_
                               (lambda (_%$%g4801148022%_)
                                 ((lambda (_%$%g4801248025%_)
                                    (cons (gx#datum->syntax '#f 'with-class)
                                          (cons (cons _%$%g4727647985%_
                                                      (cons _%$%g4727547984%_
                                                            (cons _%$%g4801248025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (foldr (lambda (_%$%g4803648039%_
                                                                _%$%g4803748042%_)
                                                         (cons _%$%g4803648039%_
                                                               _%$%g4803748042%_))
                                                       '()
                                                       _%$%g4727347981%_))))
                                  _%$%g4801148022%_))))
                         (_%$%g4800948045%_
                          (|gerbil/core/contract~TypeReference[1]#type-reference-identifier|
                           (gx#syntax-local-value _%$%g4727447983%_))))
                       (_%$%g4726747896%_ _%$%g4727247900%_)))
                 _%$%body4730047978%_
                 _%$%hd4729047947%_
                 _%$%hd4728747937%_
                 _%$%hd4728447927%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%loop4729547959%_
                                         _%$%target4729247953%_
                                         '()))
                                      (_%$%g4726747896%_ _%$%g4727247900%_)))))
                            (_%$%g4726747896%_ _%$%g4727247900%_))
                        (_%$%g4726747896%_ _%$%g4727247900%_))))
                (_%$%g4726747896%_ _%$%g4727247900%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4726747896%_
                                                 _%$%g4727247900%_))))
                                        (_%$%g4726747896%_
                                         _%$%g4727247900%_))))
                                (_%$%g4726747896%_ _%$%g4727247900%_))))
                        (_%$%g4726747896%_ _%$%g4727247900%_)))))
            (_%$%g4726648049%_ _%stx47260%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx48377%_)
        (letrec ((_%expand-body48380%_
                  (lambda (_%var49371%_
                           _%Interface49373%_
                           _%body49374%_
                           _%checked?49375%_)
                    (let* ((_%type49377%_
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx48377%_
                             _%Interface49373%_))
                           (_%$%g4938049424%_
                            (lambda (_%$%g4938149420%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4938149420%_)))
                           (_%$%g4937949580%_
                            (lambda (_%$%g4938149428%_)
                              (if (gx#stx-pair? _%$%g4938149428%_)
                                  (let ((_%$%e4938949431%_
                                         (gx#syntax-e _%$%g4938149428%_)))
                                    (let ((_%$%hd4939049435%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4938949431%_)))
                                          (_%$%tl4939149438%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4938949431%_))))
                                      (if (gx#stx-pair? _%$%tl4939149438%_)
                                          (let ((_%$%e4939249441%_
                                                 (gx#syntax-e
                                                  _%$%tl4939149438%_)))
                                            (let ((_%$%hd4939349445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4939249441%_)))
                                                  (_%$%tl4939449448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4939249441%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl4939449448%_)
                                                  (let ((_%$%e4939549451%_
                                                         (gx#syntax-e
                                                          _%$%tl4939449448%_)))
                                                    (let ((_%$%hd4939649455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4939549451%_)))
                                                          (_%$%tl4939749458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4939549451%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl4939749458%_)
                                                          (let ((_%$%e4939849461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl4939749458%_)))
                    (let ((_%$%hd4939949465%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4939849461%_)))
                          (_%$%tl4940049468%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4939849461%_))))
                      (if (gx#stx-pair? _%$%tl4940049468%_)
                          (let ((_%$%e4940149471%_
                                 (gx#syntax-e _%$%tl4940049468%_)))
                            (let ((_%$%hd4940249475%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4940149471%_)))
                                  (_%$%tl4940349478%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4940149471%_))))
                              (if (gx#stx-pair? _%$%tl4940349478%_)
                                  (let ((_%$%e4940449481%_
                                         (gx#syntax-e _%$%tl4940349478%_)))
                                    (let ((_%$%hd4940549485%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4940449481%_)))
                                          (_%$%tl4940649488%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4940449481%_))))
                                      (if (gx#stx-pair? _%$%tl4940649488%_)
                                          (let ((_%$%e4940749491%_
                                                 (gx#syntax-e
                                                  _%$%tl4940649488%_)))
                                            (let ((_%$%hd4940849495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4940749491%_)))
                                                  (_%$%tl4940949498%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4940749491%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd4940849495%_)
                                                  (let ((_g87687_
                                                         (gx#syntax-split-splice
                                                          _%$%hd4940849495%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g87688_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g87687_)
                           (##values-length _g87687_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g87688_ 2)))
                    (error "Context expects 2 values" _g87688_)))
              (let ((_%$%target4941049501%_
                     (let () (declare (not safe)) (##values-ref _g87687_ 0)))
                    (_%$%tl4941249504%_
                     (let () (declare (not safe)) (##values-ref _g87687_ 1))))
                (if (gx#stx-null? _%$%tl4941249504%_)
                    (letrec ((_%$%loop4941349507%_
                              (lambda (_%$%hd4941149511%_ _%$%body4941749514%_)
                                (if (gx#stx-pair? _%$%hd4941149511%_)
                                    (let ((_%$%e4941449516%_
                                           (gx#syntax-e _%$%hd4941149511%_)))
                                      (let ((_%$%lp-hd4941549520%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4941449516%_)))
                                            (_%$%lp-tl4941649523%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4941449516%_))))
                                        (_%$%loop4941349507%_
                                         _%$%lp-tl4941649523%_
                                         (cons _%$%lp-hd4941549520%_
                                               _%$%body4941749514%_))))
                                    (let ((_%$%body4941849526%_
                                           (reverse _%$%body4941749514%_)))
                                      (if (gx#stx-null? _%$%tl4940949498%_)
                                          ((lambda (_%$%g4938249529%_
                                                    _%$%g4938349531%_
                                                    _%$%g4938449532%_
                                                    _%$%g4938549533%_
                                                    _%$%g4938649534%_
                                                    _%$%g4938749535%_
                                                    _%$%g4938849536%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%$%g4938549533%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%$%g4938649534%_ '()))
                                         (cons _%$%g4938549533%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%$%g4938849536%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%$%g4938549533%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%$%g4938749535%_ '()))
                               (cons _%$%g4938449532%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%$%g4938349531%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%$%g4957149574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g4957249577%_)
                      (cons _%$%g4957149574%_ _%$%g4957249577%_))
                    '()
                    _%$%g4938249529%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%body4941849526%_
                                           _%$%hd4940549485%_
                                           _%$%hd4940249475%_
                                           _%$%hd4939949465%_
                                           _%$%hd4939649455%_
                                           _%$%hd4939349445%_
                                           _%$%hd4939049435%_)
                                          (_%$%g4938049424%_
                                           _%$%g4938149428%_)))))))
                      (_%$%loop4941349507%_ _%$%target4941049501%_ '()))
                    (_%$%g4938049424%_ _%$%g4938149428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4938049424%_
                                                   _%$%g4938149428%_))))
                                          (_%$%g4938049424%_
                                           _%$%g4938149428%_))))
                                  (_%$%g4938049424%_ _%$%g4938149428%_))))
                          (_%$%g4938049424%_ _%$%g4938149428%_))))
                  (_%$%g4938049424%_ _%$%g4938149428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4938049424%_
                                                   _%$%g4938149428%_))))
                                          (_%$%g4938049424%_
                                           _%$%g4938149428%_))))
                                  (_%$%g4938049424%_ _%$%g4938149428%_)))))
                      (_%$%g4937949580%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type49377%_
                             (gerbil/core/mop~MOP-2#!runtime-type-descriptor
                              _%type49377%_)
                             _%var49371%_
                             _%checked?49375%_
                             (gerbil/core/contract~TypeEnv#current-type-env)
                             _%body49374%_)))))
                 (_%expand48382%_
                  (lambda (_%var49170%_
                           _%Interface49172%_
                           _%body49173%_
                           _%checked?49174%_
                           _%checked-methods?49175%_
                           _%maybe?49176%_)
                    (let* ((_%$%g4917849186%_
                            (lambda (_%$%g4917949182%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4917949182%_)))
                           (_%$%g4917749363%_
                            (lambda (_%$%g4917949190%_)
                              ((lambda (_%$%g4918049193%_)
                                 (if _%checked?49174%_
                                     (if _%maybe?49176%_
                                         (let* ((_%$%g4920549220%_
                                                 (lambda (_%$%g4920649216%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g4920649216%_)))
                                                (_%$%g4920449266%_
                                                 (lambda (_%$%g4920649224%_)
                                                   (if (gx#stx-pair?
                                                        _%$%g4920649224%_)
                                                       (let ((_%$%e4920949227%_
                                                              (gx#syntax-e
                                                               _%$%g4920649224%_)))
                                                         (let ((_%$%hd4921049231%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e4920949227%_)))
                       (_%$%tl4921149234%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e4920949227%_))))
                   (if (gx#stx-pair? _%$%tl4921149234%_)
                       (let ((_%$%e4921249237%_
                              (gx#syntax-e _%$%tl4921149234%_)))
                         (let ((_%$%hd4921349241%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4921249237%_)))
                               (_%$%tl4921449244%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4921249237%_))))
                           (if (gx#stx-null? _%$%tl4921449244%_)
                               ((lambda (_%$%g4920749247%_ _%$%g4920849249%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%$%g4920849249%_
                                                    (cons (cons _%$%g4920749247%_
                                                                (cons _%$%g4920849249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%$%g4920849249%_
                                                                (cons _%$%g4918049193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%$%g4920849249%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%$%hd4921349241%_
                                _%$%hd4921049231%_)
                               (_%$%g4920549220%_ _%$%g4920649224%_))))
                       (_%$%g4920549220%_ _%$%g4920649224%_))))
               (_%$%g4920549220%_ _%$%g4920649224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g4920449266%_
                                            (list _%var49170%_
                                                  _%Interface49172%_)))
                                         (let* ((_%$%g4927049285%_
                                                 (lambda (_%$%g4927149281%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g4927149281%_)))
                                                (_%$%g4926949329%_
                                                 (lambda (_%$%g4927149289%_)
                                                   (if (gx#stx-pair?
                                                        _%$%g4927149289%_)
                                                       (let ((_%$%e4927449292%_
                                                              (gx#syntax-e
                                                               _%$%g4927149289%_)))
                                                         (let ((_%$%hd4927549296%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e4927449292%_)))
                       (_%$%tl4927649299%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e4927449292%_))))
                   (if (gx#stx-pair? _%$%tl4927649299%_)
                       (let ((_%$%e4927749302%_
                              (gx#syntax-e _%$%tl4927649299%_)))
                         (let ((_%$%hd4927849306%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4927749302%_)))
                               (_%$%tl4927949309%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4927749302%_))))
                           (if (gx#stx-null? _%$%tl4927949309%_)
                               ((lambda (_%$%g4927249312%_ _%$%g4927349314%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%$%g4927349314%_
                                                    (cons (cons _%$%g4927249312%_
                                                                (cons _%$%g4927349314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%$%g4918049193%_ '()))))
                                _%$%hd4927849306%_
                                _%$%hd4927549296%_)
                               (_%$%g4927049285%_ _%$%g4927149289%_))))
                       (_%$%g4927049285%_ _%$%g4927149289%_))))
               (_%$%g4927049285%_ _%$%g4927149289%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g4926949329%_
                                            (list _%var49170%_
                                                  _%Interface49172%_))))
                                     (if _%maybe?49176%_
                                         (let* ((_%$%g4933349341%_
                                                 (lambda (_%$%g4933449337%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g4933449337%_)))
                                                (_%$%g4933249359%_
                                                 (lambda (_%$%g4933449345%_)
                                                   ((lambda (_%$%g4933549348%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%$%g4933549348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%g4918049193%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%$%g4933549348%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%g4933449345%_))))
                                           (_%$%g4933249359%_ _%var49170%_))
                                         _%$%g4918049193%_)))
                               _%$%g4917949190%_))))
                      (_%$%g4917749363%_
                       (_%expand-body48380%_
                        _%var49170%_
                        _%Interface49172%_
                        _%body49173%_
                        (let ((_%$e49367%_ _%checked?49174%_))
                          (if _%$e49367%_
                              _%$e49367%_
                              _%checked-methods?49175%_))))))))
          (let* ((_%$%g4838848531%_
                  (lambda (_%$%g4838948527%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g4838948527%_)))
                 (_%$%g4838748653%_
                  (lambda (_%$%g4838948535%_)
                    (if (gx#stx-pair? _%$%g4838948535%_)
                        (let ((_%$%e4850248538%_
                               (gx#syntax-e _%$%g4838948535%_)))
                          (let ((_%$%hd4850348542%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4850248538%_)))
                                (_%$%tl4850448545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4850248538%_))))
                            (if (gx#stx-pair? _%$%tl4850448545%_)
                                (let ((_%$%e4850548548%_
                                       (gx#syntax-e _%$%tl4850448545%_)))
                                  (let ((_%$%hd4850648552%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4850548548%_)))
                                        (_%$%tl4850748555%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4850548548%_))))
                                    (if (gx#stx-pair? _%$%hd4850648552%_)
                                        (let ((_%$%e4850848558%_
                                               (gx#syntax-e
                                                _%$%hd4850648552%_)))
                                          (let ((_%$%hd4850948562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4850848558%_)))
                                                (_%$%tl4851048565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4850848558%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4851048565%_)
                                                (let ((_%$%e4851148568%_
                                                       (gx#syntax-e
                                                        _%$%tl4851048565%_)))
                                                  (let ((_%$%hd4851248572%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4851148568%_)))
                                                        (_%$%tl4851348575%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4851148568%_))))
                                                    (if (gx#identifier?
                                                         _%$%hd4851248572%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/contract~Using[1]#_g87689_|
                                                             _%$%hd4851248572%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4851348575%_)
                        (let ((_%$%e4851448578%_
                               (gx#syntax-e _%$%tl4851348575%_)))
                          (let ((_%$%hd4851548582%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4851448578%_)))
                                (_%$%tl4851648585%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4851448578%_))))
                            (if (gx#stx-null? _%$%tl4851648585%_)
                                (if (gx#stx-pair/null? _%$%tl4850748555%_)
                                    (let ((_g87690_
                                           (gx#syntax-split-splice
                                            _%$%tl4850748555%_
                                            '0)))
                                      (begin
                                        (let ((_g87691_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g87690_)
                                                     (##values-length _g87690_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g87691_ 2)))
                                              (error "Context expects 2 values"
                                                     _g87691_)))
                                        (let ((_%$%target4851748588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87690_ 0)))
                                              (_%$%tl4851948591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87690_ 1))))
                                          (if (gx#stx-null? _%$%tl4851948591%_)
                                              (letrec ((_%$%loop4852048594%_
                                                        (lambda (_%$%hd4851848598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%body4852448601%_)
                  (if (gx#stx-pair? _%$%hd4851848598%_)
                      (let ((_%$%e4852148603%_
                             (gx#syntax-e _%$%hd4851848598%_)))
                        (let ((_%$%lp-hd4852248607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4852148603%_)))
                              (_%$%lp-tl4852348610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4852148603%_))))
                          (_%$%loop4852048594%_
                           _%$%lp-tl4852348610%_
                           (cons _%$%lp-hd4852248607%_ _%$%body4852448601%_))))
                      (let ((_%$%body4852548613%_
                             (reverse _%$%body4852448601%_)))
                        ((lambda (_%$%g4849948616%_
                                  _%$%g4850048618%_
                                  _%$%g4850148619%_)
                           (if (and (gx#identifier? _%$%g4850148619%_)
                                    (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                                     _%$%g4850048618%_))
                               (_%expand48382%_
                                _%$%g4850148619%_
                                _%$%g4850048618%_
                                (foldr (lambda (_%$%g4864448647%_
                                                _%$%g4864548650%_)
                                         (cons _%$%g4864448647%_
                                               _%$%g4864548650%_))
                                       '()
                                       _%$%g4849948616%_)
                                '#f
                                '#t
                                '#f)
                               (_%$%g4838848531%_ _%$%g4838948535%_)))
                         _%$%body4852548613%_
                         _%$%hd4851548582%_
                         _%$%hd4850948562%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop4852048594%_
                                                 _%$%target4851748588%_
                                                 '()))
                                              (_%$%g4838848531%_
                                               _%$%g4838948535%_)))))
                                    (_%$%g4838848531%_ _%$%g4838948535%_))
                                (_%$%g4838848531%_ _%$%g4838948535%_))))
                        (_%$%g4838848531%_ _%$%g4838948535%_))
                    (_%$%g4838848531%_ _%$%g4838948535%_))
                (_%$%g4838848531%_ _%$%g4838948535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4838848531%_
                                                 _%$%g4838948535%_))))
                                        (_%$%g4838848531%_
                                         _%$%g4838948535%_))))
                                (_%$%g4838848531%_ _%$%g4838948535%_))))
                        (_%$%g4838848531%_ _%$%g4838948535%_))))
                 (_%$%g4838648773%_
                  (lambda (_%$%g4838948657%_)
                    (if (gx#stx-pair? _%$%g4838948657%_)
                        (let ((_%$%e4847548660%_
                               (gx#syntax-e _%$%g4838948657%_)))
                          (let ((_%$%hd4847648664%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4847548660%_)))
                                (_%$%tl4847748667%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4847548660%_))))
                            (if (gx#stx-pair? _%$%tl4847748667%_)
                                (let ((_%$%e4847848670%_
                                       (gx#syntax-e _%$%tl4847748667%_)))
                                  (let ((_%$%hd4847948674%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4847848670%_)))
                                        (_%$%tl4848048677%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4847848670%_))))
                                    (if (gx#stx-pair? _%$%hd4847948674%_)
                                        (let ((_%$%e4848148680%_
                                               (gx#syntax-e
                                                _%$%hd4847948674%_)))
                                          (let ((_%$%hd4848248684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4848148680%_)))
                                                (_%$%tl4848348687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4848148680%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4848348687%_)
                                                (let ((_%$%e4848448690%_
                                                       (gx#syntax-e
                                                        _%$%tl4848348687%_)))
                                                  (let ((_%$%hd4848548694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4848448690%_)))
                                                        (_%$%tl4848648697%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4848448690%_))))
                                                    (if (gx#identifier?
                                                         _%$%hd4848548694%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/contract~Using[1]#_g87692_|
                                                             _%$%hd4848548694%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4848648697%_)
                        (let ((_%$%e4848748700%_
                               (gx#syntax-e _%$%tl4848648697%_)))
                          (let ((_%$%hd4848848704%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4848748700%_)))
                                (_%$%tl4848948707%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4848748700%_))))
                            (if (gx#stx-null? _%$%tl4848948707%_)
                                (if (gx#stx-pair/null? _%$%tl4848048677%_)
                                    (let ((_g87693_
                                           (gx#syntax-split-splice
                                            _%$%tl4848048677%_
                                            '0)))
                                      (begin
                                        (let ((_g87694_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g87693_)
                                                     (##values-length _g87693_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g87694_ 2)))
                                              (error "Context expects 2 values"
                                                     _g87694_)))
                                        (let ((_%$%target4849048710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87693_ 0)))
                                              (_%$%tl4849248713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87693_ 1))))
                                          (if (gx#stx-null? _%$%tl4849248713%_)
                                              (letrec ((_%$%loop4849348716%_
                                                        (lambda (_%$%hd4849148720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%body4849748723%_)
                  (if (gx#stx-pair? _%$%hd4849148720%_)
                      (let ((_%$%e4849448725%_
                             (gx#syntax-e _%$%hd4849148720%_)))
                        (let ((_%$%lp-hd4849548729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4849448725%_)))
                              (_%$%lp-tl4849648732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4849448725%_))))
                          (_%$%loop4849348716%_
                           _%$%lp-tl4849648732%_
                           (cons _%$%lp-hd4849548729%_ _%$%body4849748723%_))))
                      (let ((_%$%body4849848735%_
                             (reverse _%$%body4849748723%_)))
                        ((lambda (_%$%g4847248738%_
                                  _%$%g4847348740%_
                                  _%$%g4847448741%_)
                           (if (and (gx#identifier? _%$%g4847448741%_)
                                    (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                                     _%$%g4847348740%_))
                               (_%expand48382%_
                                _%$%g4847448741%_
                                _%$%g4847348740%_
                                (foldr (lambda (_%$%g4876448767%_
                                                _%$%g4876548770%_)
                                         (cons _%$%g4876448767%_
                                               _%$%g4876548770%_))
                                       '()
                                       _%$%g4847248738%_)
                                '#f
                                '#f
                                '#f)
                               (_%$%g4838748653%_ _%$%g4838948657%_)))
                         _%$%body4849848735%_
                         _%$%hd4848848704%_
                         _%$%hd4848248684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop4849348716%_
                                                 _%$%target4849048710%_
                                                 '()))
                                              (_%$%g4838748653%_
                                               _%$%g4838948657%_)))))
                                    (_%$%g4838748653%_ _%$%g4838948657%_))
                                (_%$%g4838748653%_ _%$%g4838948657%_))))
                        (_%$%g4838748653%_ _%$%g4838948657%_))
                    (_%$%g4838748653%_ _%$%g4838948657%_))
                (_%$%g4838748653%_ _%$%g4838948657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4838748653%_
                                                 _%$%g4838948657%_))))
                                        (_%$%g4838748653%_
                                         _%$%g4838948657%_))))
                                (_%$%g4838748653%_ _%$%g4838948657%_))))
                        (_%$%g4838748653%_ _%$%g4838948657%_))))
                 (_%$%g4838548893%_
                  (lambda (_%$%g4838948777%_)
                    (if (gx#stx-pair? _%$%g4838948777%_)
                        (let ((_%$%e4844848780%_
                               (gx#syntax-e _%$%g4838948777%_)))
                          (let ((_%$%hd4844948784%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4844848780%_)))
                                (_%$%tl4845048787%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4844848780%_))))
                            (if (gx#stx-pair? _%$%tl4845048787%_)
                                (let ((_%$%e4845148790%_
                                       (gx#syntax-e _%$%tl4845048787%_)))
                                  (let ((_%$%hd4845248794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4845148790%_)))
                                        (_%$%tl4845348797%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4845148790%_))))
                                    (if (gx#stx-pair? _%$%hd4845248794%_)
                                        (let ((_%$%e4845448800%_
                                               (gx#syntax-e
                                                _%$%hd4845248794%_)))
                                          (let ((_%$%hd4845548804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4845448800%_)))
                                                (_%$%tl4845648807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4845448800%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4845648807%_)
                                                (let ((_%$%e4845748810%_
                                                       (gx#syntax-e
                                                        _%$%tl4845648807%_)))
                                                  (let ((_%$%hd4845848814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4845748810%_)))
                                                        (_%$%tl4845948817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4845748810%_))))
                                                    (if (gx#identifier?
                                                         _%$%hd4845848814%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/contract~Using[1]#_g87695_|
                                                             _%$%hd4845848814%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4845948817%_)
                        (let ((_%$%e4846048820%_
                               (gx#syntax-e _%$%tl4845948817%_)))
                          (let ((_%$%hd4846148824%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4846048820%_)))
                                (_%$%tl4846248827%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4846048820%_))))
                            (if (gx#stx-null? _%$%tl4846248827%_)
                                (if (gx#stx-pair/null? _%$%tl4845348797%_)
                                    (let ((_g87696_
                                           (gx#syntax-split-splice
                                            _%$%tl4845348797%_
                                            '0)))
                                      (begin
                                        (let ((_g87697_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g87696_)
                                                     (##values-length _g87696_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g87697_ 2)))
                                              (error "Context expects 2 values"
                                                     _g87697_)))
                                        (let ((_%$%target4846348830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87696_ 0)))
                                              (_%$%tl4846548833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87696_ 1))))
                                          (if (gx#stx-null? _%$%tl4846548833%_)
                                              (letrec ((_%$%loop4846648836%_
                                                        (lambda (_%$%hd4846448840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%body4847048843%_)
                  (if (gx#stx-pair? _%$%hd4846448840%_)
                      (let ((_%$%e4846748845%_
                             (gx#syntax-e _%$%hd4846448840%_)))
                        (let ((_%$%lp-hd4846848849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4846748845%_)))
                              (_%$%lp-tl4846948852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4846748845%_))))
                          (_%$%loop4846648836%_
                           _%$%lp-tl4846948852%_
                           (cons _%$%lp-hd4846848849%_ _%$%body4847048843%_))))
                      (let ((_%$%body4847148855%_
                             (reverse _%$%body4847048843%_)))
                        ((lambda (_%$%g4844548858%_
                                  _%$%g4844648860%_
                                  _%$%g4844748861%_)
                           (if (and (gx#identifier? _%$%g4844748861%_)
                                    (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                                     _%$%g4844648860%_))
                               (_%expand48382%_
                                _%$%g4844748861%_
                                _%$%g4844648860%_
                                (foldr (lambda (_%$%g4888448887%_
                                                _%$%g4888548890%_)
                                         (cons _%$%g4888448887%_
                                               _%$%g4888548890%_))
                                       '()
                                       _%$%g4844548858%_)
                                '#t
                                '#t
                                '#t)
                               (_%$%g4838648773%_ _%$%g4838948777%_)))
                         _%$%body4847148855%_
                         _%$%hd4846148824%_
                         _%$%hd4845548804%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop4846648836%_
                                                 _%$%target4846348830%_
                                                 '()))
                                              (_%$%g4838648773%_
                                               _%$%g4838948777%_)))))
                                    (_%$%g4838648773%_ _%$%g4838948777%_))
                                (_%$%g4838648773%_ _%$%g4838948777%_))))
                        (_%$%g4838648773%_ _%$%g4838948777%_))
                    (_%$%g4838648773%_ _%$%g4838948777%_))
                (_%$%g4838648773%_ _%$%g4838948777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4838648773%_
                                                 _%$%g4838948777%_))))
                                        (_%$%g4838648773%_
                                         _%$%g4838948777%_))))
                                (_%$%g4838648773%_ _%$%g4838948777%_))))
                        (_%$%g4838648773%_ _%$%g4838948777%_))))
                 (_%$%g4838449013%_
                  (lambda (_%$%g4838948897%_)
                    (if (gx#stx-pair? _%$%g4838948897%_)
                        (let ((_%$%e4842148900%_
                               (gx#syntax-e _%$%g4838948897%_)))
                          (let ((_%$%hd4842248904%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4842148900%_)))
                                (_%$%tl4842348907%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4842148900%_))))
                            (if (gx#stx-pair? _%$%tl4842348907%_)
                                (let ((_%$%e4842448910%_
                                       (gx#syntax-e _%$%tl4842348907%_)))
                                  (let ((_%$%hd4842548914%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4842448910%_)))
                                        (_%$%tl4842648917%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4842448910%_))))
                                    (if (gx#stx-pair? _%$%hd4842548914%_)
                                        (let ((_%$%e4842748920%_
                                               (gx#syntax-e
                                                _%$%hd4842548914%_)))
                                          (let ((_%$%hd4842848924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4842748920%_)))
                                                (_%$%tl4842948927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4842748920%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4842948927%_)
                                                (let ((_%$%e4843048930%_
                                                       (gx#syntax-e
                                                        _%$%tl4842948927%_)))
                                                  (let ((_%$%hd4843148934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4843048930%_)))
                                                        (_%$%tl4843248937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4843048930%_))))
                                                    (if (gx#identifier?
                                                         _%$%hd4843148934%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/contract~Using[1]#_g87698_|
                                                             _%$%hd4843148934%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4843248937%_)
                        (let ((_%$%e4843348940%_
                               (gx#syntax-e _%$%tl4843248937%_)))
                          (let ((_%$%hd4843448944%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4843348940%_)))
                                (_%$%tl4843548947%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4843348940%_))))
                            (if (gx#stx-null? _%$%tl4843548947%_)
                                (if (gx#stx-pair/null? _%$%tl4842648917%_)
                                    (let ((_g87699_
                                           (gx#syntax-split-splice
                                            _%$%tl4842648917%_
                                            '0)))
                                      (begin
                                        (let ((_g87700_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g87699_)
                                                     (##values-length _g87699_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g87700_ 2)))
                                              (error "Context expects 2 values"
                                                     _g87700_)))
                                        (let ((_%$%target4843648950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87699_ 0)))
                                              (_%$%tl4843848953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g87699_ 1))))
                                          (if (gx#stx-null? _%$%tl4843848953%_)
                                              (letrec ((_%$%loop4843948956%_
                                                        (lambda (_%$%hd4843748960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%body4844348963%_)
                  (if (gx#stx-pair? _%$%hd4843748960%_)
                      (let ((_%$%e4844048965%_
                             (gx#syntax-e _%$%hd4843748960%_)))
                        (let ((_%$%lp-hd4844148969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4844048965%_)))
                              (_%$%lp-tl4844248972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4844048965%_))))
                          (_%$%loop4843948956%_
                           _%$%lp-tl4844248972%_
                           (cons _%$%lp-hd4844148969%_ _%$%body4844348963%_))))
                      (let ((_%$%body4844448975%_
                             (reverse _%$%body4844348963%_)))
                        ((lambda (_%$%g4841848978%_
                                  _%$%g4841948980%_
                                  _%$%g4842048981%_)
                           (if (and (gx#identifier? _%$%g4842048981%_)
                                    (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                                     _%$%g4841948980%_))
                               (_%expand48382%_
                                _%$%g4842048981%_
                                _%$%g4841948980%_
                                (foldr (lambda (_%$%g4900449007%_
                                                _%$%g4900549010%_)
                                         (cons _%$%g4900449007%_
                                               _%$%g4900549010%_))
                                       '()
                                       _%$%g4841848978%_)
                                '#t
                                '#t
                                '#f)
                               (_%$%g4838548893%_ _%$%g4838948897%_)))
                         _%$%body4844448975%_
                         _%$%hd4843448944%_
                         _%$%hd4842848924%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop4843948956%_
                                                 _%$%target4843648950%_
                                                 '()))
                                              (_%$%g4838548893%_
                                               _%$%g4838948897%_)))))
                                    (_%$%g4838548893%_ _%$%g4838948897%_))
                                (_%$%g4838548893%_ _%$%g4838948897%_))))
                        (_%$%g4838548893%_ _%$%g4838948897%_))
                    (_%$%g4838548893%_ _%$%g4838948897%_))
                (_%$%g4838548893%_ _%$%g4838948897%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4838548893%_
                                                 _%$%g4838948897%_))))
                                        (_%$%g4838548893%_
                                         _%$%g4838948897%_))))
                                (_%$%g4838548893%_ _%$%g4838948897%_))))
                        (_%$%g4838548893%_ _%$%g4838948897%_))))
                 (_%$%g4838349166%_
                  (lambda (_%$%g4838949017%_)
                    (if (gx#stx-pair? _%$%g4838949017%_)
                        (let ((_%$%e4839449020%_
                               (gx#syntax-e _%$%g4838949017%_)))
                          (let ((_%$%hd4839549024%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4839449020%_)))
                                (_%$%tl4839649027%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4839449020%_))))
                            (if (gx#stx-pair? _%$%tl4839649027%_)
                                (let ((_%$%e4839749030%_
                                       (gx#syntax-e _%$%tl4839649027%_)))
                                  (let ((_%$%hd4839849034%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4839749030%_)))
                                        (_%$%tl4839949037%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4839749030%_))))
                                    (if (gx#stx-pair? _%$%hd4839849034%_)
                                        (let ((_%$%e4840049040%_
                                               (gx#syntax-e
                                                _%$%hd4839849034%_)))
                                          (let ((_%$%hd4840149044%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4840049040%_)))
                                                (_%$%tl4840249047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4840049040%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4840249047%_)
                                                (let ((_%$%e4840349050%_
                                                       (gx#syntax-e
                                                        _%$%tl4840249047%_)))
                                                  (let ((_%$%hd4840449054%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4840349050%_)))
                                                        (_%$%tl4840549057%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4840349050%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4840549057%_)
                                                        (let ((_%$%e4840649060%_
                                                               (gx#syntax-e
                                                                _%$%tl4840549057%_)))
                                                          (let ((_%$%hd4840749064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4840649060%_)))
                        (_%$%tl4840849067%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4840649060%_))))
                    (if (gx#stx-null? _%$%tl4840849067%_)
                        (if (gx#stx-pair/null? _%$%tl4839949037%_)
                            (let ((_g87701_
                                   (gx#syntax-split-splice
                                    _%$%tl4839949037%_
                                    '0)))
                              (begin
                                (let ((_g87702_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g87701_)
                                             (##values-length _g87701_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g87702_ 2)))
                                      (error "Context expects 2 values"
                                             _g87702_)))
                                (let ((_%$%target4840949070%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g87701_ 0)))
                                      (_%$%tl4841149073%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g87701_ 1))))
                                  (if (gx#stx-null? _%$%tl4841149073%_)
                                      (letrec ((_%$%loop4841249076%_
                                                (lambda (_%$%hd4841049080%_
                                                         _%$%body4841649083%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd4841049080%_)
                                                      (let ((_%$%e4841349085%_
                                                             (gx#syntax-e
                                                              _%$%hd4841049080%_)))
                                                        (let ((_%$%lp-hd4841449089%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e4841349085%_)))
                      (_%$%lp-tl4841549092%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e4841349085%_))))
                  (_%$%loop4841249076%_
                   _%$%lp-tl4841549092%_
                   (cons _%$%lp-hd4841449089%_ _%$%body4841649083%_))))
              (let ((_%$%body4841749095%_ (reverse _%$%body4841649083%_)))
                ((lambda (_%$%g4839049098%_
                          _%$%g4839149100%_
                          _%$%g4839249101%_
                          _%$%g4839349102%_)
                   (if (|gerbil/core/contract~TypeReference[1]#type-reference?|
                        (gx#syntax-local-value _%$%g4839149100%_ false))
                       (let* ((_%$%g4912749135%_
                               (lambda (_%$%g4912849131%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g4912849131%_)))
                              (_%$%g4912649162%_
                               (lambda (_%$%g4912849139%_)
                                 ((lambda (_%$%g4912949142%_)
                                    (cons (gx#datum->syntax
                                           '#f
                                           'with-interface)
                                          (cons (cons _%$%g4839349102%_
                                                      (cons _%$%g4839249101%_
                                                            (cons _%$%g4912949142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (foldr (lambda (_%$%g4915349156%_
                                                                _%$%g4915449159%_)
                                                         (cons _%$%g4915349156%_
                                                               _%$%g4915449159%_))
                                                       '()
                                                       _%$%g4839049098%_))))
                                  _%$%g4912849139%_))))
                         (_%$%g4912649162%_
                          (|gerbil/core/contract~TypeReference[1]#type-reference-identifier|
                           (gx#syntax-local-value _%$%g4839149100%_))))
                       (_%$%g4838449013%_ _%$%g4838949017%_)))
                 _%$%body4841749095%_
                 _%$%hd4840749064%_
                 _%$%hd4840449054%_
                 _%$%hd4840149044%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%loop4841249076%_
                                         _%$%target4840949070%_
                                         '()))
                                      (_%$%g4838449013%_ _%$%g4838949017%_)))))
                            (_%$%g4838449013%_ _%$%g4838949017%_))
                        (_%$%g4838449013%_ _%$%g4838949017%_))))
                (_%$%g4838449013%_ _%$%g4838949017%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4838449013%_
                                                 _%$%g4838949017%_))))
                                        (_%$%g4838449013%_
                                         _%$%g4838949017%_))))
                                (_%$%g4838449013%_ _%$%g4838949017%_))))
                        (_%$%g4838449013%_ _%$%g4838949017%_)))))
            (_%$%g4838349166%_ _%stx48377%_)))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx49590%_)
        (let* ((_%$%g4959549655%_
                (lambda (_%$%g4959649651%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4959649651%_)))
               (_%$%g4959449724%_
                (lambda (_%$%g4959649659%_)
                  (if (gx#stx-pair? _%$%g4959649659%_)
                      (let ((_%$%e4963849662%_
                             (gx#syntax-e _%$%g4959649659%_)))
                        (let ((_%$%hd4963949666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4963849662%_)))
                              (_%$%tl4964049669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4963849662%_))))
                          (if (gx#stx-pair/null? _%$%tl4964049669%_)
                              (let ((_g87703_
                                     (gx#syntax-split-splice
                                      _%$%tl4964049669%_
                                      '0)))
                                (begin
                                  (let ((_g87704_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g87703_)
                                               (##values-length _g87703_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g87704_ 2)))
                                        (error "Context expects 2 values"
                                               _g87704_)))
                                  (let ((_%$%target4964149672%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g87703_ 0)))
                                        (_%$%tl4964349675%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g87703_ 1))))
                                    (if (gx#stx-null? _%$%tl4964349675%_)
                                        (letrec ((_%$%loop4964449678%_
                                                  (lambda (_%$%hd4964249682%_
                                                           _%$%arg4964849685%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4964249682%_)
                                                        (let ((_%$%e4964549687%_
                                                               (gx#syntax-e
                                                                _%$%hd4964249682%_)))
                                                          (let ((_%$%lp-hd4964649691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4964549687%_)))
                        (_%$%lp-tl4964749694%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4964549687%_))))
                    (_%$%loop4964449678%_
                     _%$%lp-tl4964749694%_
                     (cons _%$%lp-hd4964649691%_ _%$%arg4964849685%_))))
                (let ((_%$%arg4964949697%_ (reverse _%$%arg4964849685%_)))
                  ((lambda (_%$%g4963749700%_)
                     (cons (gx#datum->syntax '#f '%%app)
                           (foldr (lambda (_%$%g4971549718%_ _%$%g4971649721%_)
                                    (cons _%$%g4971549718%_ _%$%g4971649721%_))
                                  '()
                                  _%$%g4963749700%_)))
                   _%$%arg4964949697%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4964449678%_
                                           _%$%target4964149672%_
                                           '()))
                                        (_%$%g4959549655%_
                                         _%$%g4959649659%_)))))
                              (_%$%g4959549655%_ _%$%g4959649659%_))))
                      (_%$%g4959549655%_ _%$%g4959649659%_))))
               (_%$%g4959350156%_
                (lambda (_%$%g4959649728%_)
                  (if (gx#stx-pair? _%$%g4959649728%_)
                      (let ((_%$%e4961649731%_
                             (gx#syntax-e _%$%g4959649728%_)))
                        (let ((_%$%hd4961749735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4961649731%_)))
                              (_%$%tl4961849738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4961649731%_))))
                          (if (gx#stx-pair? _%$%tl4961849738%_)
                              (let ((_%$%e4961949741%_
                                     (gx#syntax-e _%$%tl4961849738%_)))
                                (let ((_%$%hd4962049745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4961949741%_)))
                                      (_%$%tl4962149748%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4961949741%_))))
                                  (if (gx#stx-pair? _%$%hd4962049745%_)
                                      (let ((_%$%e4962249751%_
                                             (gx#syntax-e _%$%hd4962049745%_)))
                                        (let ((_%$%hd4962349755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4962249751%_)))
                                              (_%$%tl4962449758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4962249751%_))))
                                          (if (gx#identifier?
                                               _%$%hd4962349755%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g87705_|
                                                   _%$%hd4962349755%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl4962449758%_)
                                                      (let ((_%$%e4962549761%_
                                                             (gx#syntax-e
                                                              _%$%tl4962449758%_)))
                                                        (let ((_%$%hd4962649765%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e4962549761%_)))
                      (_%$%tl4962749768%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e4962549761%_))))
                  (if (gx#stx-null? _%$%tl4962749768%_)
                      (if (gx#stx-pair/null? _%$%tl4962149748%_)
                          (let ((_g87706_
                                 (gx#syntax-split-splice
                                  _%$%tl4962149748%_
                                  '0)))
                            (begin
                              (let ((_g87707_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g87706_)
                                           (##values-length _g87706_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g87707_ 2)))
                                    (error "Context expects 2 values"
                                           _g87707_)))
                              (let ((_%$%target4962849771%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g87706_ 0)))
                                    (_%$%tl4963049774%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g87706_ 1))))
                                (if (gx#stx-null? _%$%tl4963049774%_)
                                    (letrec ((_%$%loop4963149777%_
                                              (lambda (_%$%hd4962949781%_
                                                       _%$%rand4963549784%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd4962949781%_)
                                                    (let ((_%$%e4963249786%_
                                                           (gx#syntax-e
                                                            _%$%hd4962949781%_)))
                                                      (let ((_%$%lp-hd4963349790%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e4963249786%_)))
                    (_%$%lp-tl4963449793%_
                     (let () (declare (not safe)) (##cdr _%$%e4963249786%_))))
                (_%$%loop4963149777%_
                 _%$%lp-tl4963449793%_
                 (cons _%$%lp-hd4963349790%_ _%$%rand4963549784%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%rand4963649796%_
                                                           (reverse _%$%rand4963549784%_)))
                                                      ((lambda (_%$%g4961449799%_
                                                                _%$%g4961549801%_)
                                                         (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                                                              _%$%g4961549801%_)
                                                             (let* ((_%$%g4982149828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx49590%_
                              _%$%g4961549801%_))
                            (_%$%E4982349834%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g4982149828%_
                                      '([var . parts]))
                               (void)))
                            (_%$%K4982450132%_
                             (lambda (_%parts49838%_ _%var49840%_)
                               (let ((_%$e49842%_
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var49840%_)))
                                 (if _%$e49842%_
                                     ((lambda (_%te49846%_)
                                        (let _%loop49849%_ ((_%parts49852%_
                                                             _%parts49838%_)
                                                            (_%type49854%_
                                                             (gerbil/core/contract~TypeEnv#type-env-type
                                                              _%te49846%_))
                                                            (_%object49855%_
                                                             _%var49840%_)
                                                            (_%checked-method?49856%_
                                                             (gerbil/core/contract~TypeEnv#type-env-checked?
                                                              _%te49846%_))
                                                            (_%nil-check?49857%_
                                                             '#f))
                                          (let* ((_%$%parts4985849866%_
                                                  _%parts49852%_)
                                                 (_%$%E4986149872%_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _%$%parts4985849866%_
                                                           '([part . rest])
                                                           'else)
                                                    (void)))
                                                 (_%$%else4986049927%_
                                                  (lambda ()
                                                    (let* ((_%$%g4987849886%_
                                                            (lambda (_%$%g4987949882%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g4987949882%_)))
                                                           (_%$%g4987749923%_
                                                            (lambda (_%$%g4987949890%_)
                                                              ((lambda (_%$%g4988049893%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '%%app)
                               (cons _%$%g4988049893%_
                                     (foldr (lambda (_%$%g4991449917%_
                                                     _%$%g4991549920%_)
                                              (cons _%$%g4991449917%_
                                                    _%$%g4991549920%_))
                                            '()
                                            _%$%g4961449799%_))))
                       _%$%g4987949890%_))))
              (_%$%g4987749923%_ _%object49855%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K4986250106%_
                                                  (lambda (_%rest49931%_
                                                           _%part49933%_)
                                                    (if (and (not _%nil-check?49857%_)
                                                             (string-prefix?
                                                              '"?"
                                                              (symbol->string
                                                               _%part49933%_)))
                                                        (let ((_%str49937%_
                                                               (symbol->string
                                                                _%part49933%_)))
                                                          (_%loop49849%_
                                                           (cons (string->symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (substring
                           _%str49937%_
                           '1
                           (string-length _%str49937%_)))
                         _%rest49931%_)
                   _%type49854%_
                   _%object49855%_
                   _%checked-method?49856%_
                   '#t))
                (if (gerbil/core/mop~MOP-2#class-type-info? _%type49854%_)
                    (let* ((_%$%g4994249957%_
                            (lambda (_%$%g4994349953%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4994349953%_)))
                           (_%$%g4994150026%_
                            (lambda (_%$%g4994349961%_)
                              (if (gx#stx-pair? _%$%g4994349961%_)
                                  (let ((_%$%e4994649964%_
                                         (gx#syntax-e _%$%g4994349961%_)))
                                    (let ((_%$%hd4994749968%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4994649964%_)))
                                          (_%$%tl4994849971%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4994649964%_))))
                                      (if (gx#stx-pair? _%$%tl4994849971%_)
                                          (let ((_%$%e4994949974%_
                                                 (gx#syntax-e
                                                  _%$%tl4994849971%_)))
                                            (let ((_%$%hd4995049978%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4994949974%_)))
                                                  (_%$%tl4995149981%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4994949974%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl4995149981%_)
                                                  ((lambda (_%$%g4994449984%_
                                                            _%$%g4994549986%_)
                                                     (if (null? _%rest49931%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '%%app)
                                                               (cons (cons _%$%g4994449984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%$%g4994549986%_ '()))
                             (foldr (lambda (_%$%g5000550008%_
                                             _%$%g5000650011%_)
                                      (cons _%$%g5000550008%_
                                            _%$%g5000650011%_))
                                    '()
                                    _%$%g4961449799%_)))
                 (let ((_%$e50014%_
                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                         _%type49854%_
                         _%part49933%_)))
                   (if _%$e50014%_
                       ((lambda (_%slot-type50018%_)
                          (let ((_%slot-type50021%_
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx49590%_
                                  _%slot-type50018%_)))
                            (_%loop49849%_
                             _%rest49931%_
                             _%slot-type50021%_
                             (cons _%$%g4994449984%_
                                   (cons _%$%g4994549986%_ '()))
                             (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                              _%type49854%_
                              _%part49933%_)
                             '#f)))
                        _%$e50014%_)
                       (gx#raise-syntax-error
                        '#f
                        '"unresolved dotted reference; unknown type for slot"
                        _%stx49590%_
                        _%$%g4961549801%_
                        _%part49933%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%hd4995049978%_
                                                   _%$%hd4994749968%_)
                                                  (_%$%g4994249957%_
                                                   _%$%g4994349961%_))))
                                          (_%$%g4994249957%_
                                           _%$%g4994349961%_))))
                                  (_%$%g4994249957%_ _%$%g4994349961%_)))))
                      (_%$%g4994150026%_
                       (list (if _%nil-check?49857%_
                                 (cons 'check-nil! (cons _%object49855%_ '()))
                                 _%object49855%_)
                             (|gerbil/core/contract~Using[1]#get-slot-accessor|
                              _%stx49590%_
                              _%type49854%_
                              _%part49933%_))))
                    (if (gerbil/core/contract~InterfaceInfo#interface-info?
                         _%type49854%_)
                        (if (null? _%rest49931%_)
                            (let* ((_%$%g5003250047%_
                                    (lambda (_%$%g5003350043%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g5003350043%_)))
                                   (_%$%g5003150100%_
                                    (lambda (_%$%g5003350051%_)
                                      (if (gx#stx-pair? _%$%g5003350051%_)
                                          (let ((_%$%e5003650054%_
                                                 (gx#syntax-e
                                                  _%$%g5003350051%_)))
                                            (let ((_%$%hd5003750058%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5003650054%_)))
                                                  (_%$%tl5003850061%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5003650054%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5003850061%_)
                                                  (let ((_%$%e5003950064%_
                                                         (gx#syntax-e
                                                          _%$%tl5003850061%_)))
                                                    (let ((_%$%hd5004050068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5003950064%_)))
                                                          (_%$%tl5004150071%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5003950064%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5004150071%_)
                                                          ((lambda (_%$%g5003450074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g5003550076%_)
                     (cons _%$%g5003450074%_
                           (cons _%$%g5003550076%_
                                 (foldr (lambda (_%$%g5009150094%_
                                                 _%$%g5009250097%_)
                                          (cons _%$%g5009150094%_
                                                _%$%g5009250097%_))
                                        '()
                                        _%$%g4961449799%_))))
                   _%$%hd5004050068%_
                   _%$%hd5003750058%_)
                  (_%$%g5003250047%_ _%$%g5003350051%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5003250047%_
                                                   _%$%g5003350051%_))))
                                          (_%$%g5003250047%_
                                           _%$%g5003350051%_)))))
                              (_%$%g5003150100%_
                               (list (if _%nil-check?49857%_
                                         (cons 'check-nil!
                                               (cons _%object49855%_ '()))
                                         _%object49855%_)
                                     (gx#stx-identifier
                                      _%$%g4961549801%_
                                      (if _%checked-method?49856%_ '"" '"&")
                                      (gerbil/core/contract~InterfaceInfo#interface-info-name
                                       _%type49854%_)
                                      '"-"
                                      _%part49933%_))))
                            (gx#raise-syntax-error
                             '#f
                             '"illegal dotted reference; interface has no slots"
                             _%stx49590%_
                             _%$%g4961549801%_
                             _%part49933%_))
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx49590%_
                         _%type49854%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%parts4985849866%_)
                                                (let ((_%$%hd4986350110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%parts4985849866%_)))
                                                      (_%$%tl4986450113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%parts4985849866%_))))
                                                  (let* ((_%part50116%_
                                                          _%$%hd4986350110%_)
                                                         (_%rest50119%_
                                                          _%$%tl4986450113%_))
                                                    (_%$%K4986250106%_
                                                     _%rest50119%_
                                                     _%part50116%_)))
                                                (_%$%else4986049927%_)))))
                                      _%$e49842%_)
                                     (cons (gx#datum->syntax '#f '%%app)
                                           (cons _%$%g4961549801%_
                                                 (foldr (lambda (_%$%g5012350126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5012450129%_)
                  (cons _%$%g5012350126%_ _%$%g5012450129%_))
                '()
                _%$%g4961449799%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (if (pair? _%$%g4982149828%_)
                           (let ((_%$%hd4982550136%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%g4982149828%_)))
                                 (_%$%tl4982650139%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%g4982149828%_))))
                             (let* ((_%var50142%_ _%$%hd4982550136%_)
                                    (_%parts50145%_ _%$%tl4982650139%_))
                               (_%$%K4982450132%_
                                _%parts50145%_
                                _%var50142%_)))
                           (_%$%E4982349834%_)))
                     (cons (gx#datum->syntax '#f '%%app)
                           (cons _%$%g4961549801%_
                                 (foldr (lambda (_%$%g5014750150%_
                                                 _%$%g5014850153%_)
                                          (cons _%$%g5014750150%_
                                                _%$%g5014850153%_))
                                        '()
                                        _%$%g4961449799%_)))))
               _%$%rand4963649796%_
               _%$%hd4962649765%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop4963149777%_
                                       _%$%target4962849771%_
                                       '()))
                                    (_%$%g4959449724%_ _%$%g4959649728%_)))))
                          (_%$%g4959449724%_ _%$%g4959649728%_))
                      (_%$%g4959449724%_ _%$%g4959649728%_))))
              (_%$%g4959449724%_ _%$%g4959649728%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4959449724%_
                                                   _%$%g4959649728%_))
                                              (_%$%g4959449724%_
                                               _%$%g4959649728%_))))
                                      (_%$%g4959449724%_ _%$%g4959649728%_))))
                              (_%$%g4959449724%_ _%$%g4959649728%_))))
                      (_%$%g4959449724%_ _%$%g4959649728%_))))
               (_%$%g4959250238%_
                (lambda (_%$%g4959650160%_)
                  (if (gx#stx-pair? _%$%g4959650160%_)
                      (let ((_%$%e4959950163%_
                             (gx#syntax-e _%$%g4959650160%_)))
                        (let ((_%$%hd4960050167%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4959950163%_)))
                              (_%$%tl4960150170%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4959950163%_))))
                          (if (gx#stx-pair? _%$%tl4960150170%_)
                              (let ((_%$%e4960250173%_
                                     (gx#syntax-e _%$%tl4960150170%_)))
                                (let ((_%$%hd4960350177%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4960250173%_)))
                                      (_%$%tl4960450180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4960250173%_))))
                                  (if (gx#stx-pair/null? _%$%tl4960450180%_)
                                      (let ((_g87708_
                                             (gx#syntax-split-splice
                                              _%$%tl4960450180%_
                                              '0)))
                                        (begin
                                          (let ((_g87709_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g87708_)
                                                       (##values-length
                                                        _g87708_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g87709_ 2)))
                                                (error "Context expects 2 values"
                                                       _g87709_)))
                                          (let ((_%$%target4960550183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g87708_ 0)))
                                                (_%$%tl4960750186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g87708_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4960750186%_)
                                                (letrec ((_%$%loop4960850189%_
                                                          (lambda (_%$%hd4960650193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%rand4961250196%_)
                    (if (gx#stx-pair? _%$%hd4960650193%_)
                        (let ((_%$%e4960950198%_
                               (gx#syntax-e _%$%hd4960650193%_)))
                          (let ((_%$%lp-hd4961050202%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4960950198%_)))
                                (_%$%lp-tl4961150205%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4960950198%_))))
                            (_%$%loop4960850189%_
                             _%$%lp-tl4961150205%_
                             (cons _%$%lp-hd4961050202%_
                                   _%$%rand4961250196%_))))
                        (let ((_%$%rand4961350208%_
                               (reverse _%$%rand4961250196%_)))
                          ((lambda (_%$%g4959750211%_ _%$%g4959850213%_)
                             (if (gx#identifier? _%$%g4959850213%_)
                                 (cons (gx#datum->syntax '#f '%%app-dotted)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '%%ref-dotted)
                                                   (cons _%$%g4959850213%_
                                                         '()))
                                             (foldr (lambda (_%$%g5022950232%_
                                                             _%$%g5023050235%_)
                                                      (cons _%$%g5022950232%_
                                                            _%$%g5023050235%_))
                                                    '()
                                                    _%$%g4959750211%_)))
                                 (_%$%g4959350156%_ _%$%g4959650160%_)))
                           _%$%rand4961350208%_
                           _%$%hd4960350177%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4960850189%_
                                                   _%$%target4960550183%_
                                                   '()))
                                                (_%$%g4959350156%_
                                                 _%$%g4959650160%_)))))
                                      (_%$%g4959350156%_ _%$%g4959650160%_))))
                              (_%$%g4959350156%_ _%$%g4959650160%_))))
                      (_%$%g4959350156%_ _%$%g4959650160%_)))))
          (_%$%g4959250238%_ _%stx49590%_))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx50245%_)
        (let* ((_%$%g5024950270%_
                (lambda (_%$%g5025050266%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5025050266%_)))
               (_%$%g5024850311%_
                (lambda (_%$%g5025050274%_)
                  (if (gx#stx-pair? _%$%g5025050274%_)
                      (let ((_%$%e5025950277%_
                             (gx#syntax-e _%$%g5025050274%_)))
                        (let ((_%$%hd5026050281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5025950277%_)))
                              (_%$%tl5026150284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5025950277%_))))
                          (if (gx#stx-pair? _%$%tl5026150284%_)
                              (let ((_%$%e5026250287%_
                                     (gx#syntax-e _%$%tl5026150284%_)))
                                (let ((_%$%hd5026350291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5026250287%_)))
                                      (_%$%tl5026450294%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5026250287%_))))
                                  (if (gx#stx-null? _%$%tl5026450294%_)
                                      ((lambda (_%$%g5025850297%_)
                                         (cons (gx#datum->syntax '#f '%%ref)
                                               (cons _%$%g5025850297%_ '())))
                                       _%$%hd5026350291%_)
                                      (_%$%g5024950270%_ _%$%g5025050274%_))))
                              (_%$%g5024950270%_ _%$%g5025050274%_))))
                      (_%$%g5024950270%_ _%$%g5025050274%_))))
               (_%$%g5024750595%_
                (lambda (_%$%g5025050315%_)
                  (if (gx#stx-pair? _%$%g5025050315%_)
                      (let ((_%$%e5025250318%_
                             (gx#syntax-e _%$%g5025050315%_)))
                        (let ((_%$%hd5025350322%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5025250318%_)))
                              (_%$%tl5025450325%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5025250318%_))))
                          (if (gx#stx-pair? _%$%tl5025450325%_)
                              (let ((_%$%e5025550328%_
                                     (gx#syntax-e _%$%tl5025450325%_)))
                                (let ((_%$%hd5025650332%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5025550328%_)))
                                      (_%$%tl5025750335%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5025550328%_))))
                                  (if (gx#stx-null? _%$%tl5025750335%_)
                                      ((lambda (_%$%g5025150338%_)
                                         (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                                              _%$%g5025150338%_)
                                             (let* ((_%$%g5035050357%_
                                                     (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                                      _%stx50245%_
                                                      _%$%g5025150338%_))
                                                    (_%$%E5035250363%_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _%$%g5035050357%_
                                                              '([var . parts]))
                                                       (void)))
                                                    (_%$%K5035350579%_
                                                     (lambda (_%parts50367%_
                                                              _%var50369%_)
                                                       (let ((_%$e50371%_
                                                              (gerbil/core/contract~TypeEnv#type-env-lookup
                                                               _%var50369%_)))
                                                         (if _%$e50371%_
                                                             ((lambda (_%te50375%_)
                                                                (let _%loop50378%_ ((_%parts50381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%parts50367%_)
                                            (_%type50383%_
                                             (gerbil/core/contract~TypeEnv#type-env-type
                                              _%te50375%_))
                                            (_%object50384%_ _%var50369%_)
                                            (_%nil-check?50385%_ '#f))
                          (let* ((_%$%parts5038650394%_ _%parts50381%_)
                                 (_%$%E5038950400%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%parts5038650394%_
                                           '([part . rest])
                                           'else)
                                    (void)))
                                 (_%$%else5038850406%_
                                  (lambda () _%object50384%_))
                                 (_%$%K5039050561%_
                                  (lambda (_%rest50410%_ _%part50412%_)
                                    (if (and (not _%nil-check?50385%_)
                                             (string-prefix?
                                              '"?"
                                              (symbol->string _%part50412%_)))
                                        (let ((_%str50416%_
                                               (symbol->string _%part50412%_)))
                                          (_%loop50378%_
                                           (cons (string->symbol
                                                  (substring
                                                   _%str50416%_
                                                   '1
                                                   (string-length
                                                    _%str50416%_)))
                                                 _%rest50410%_)
                                           _%type50383%_
                                           _%object50384%_
                                           '#t))
                                        (if (gerbil/core/mop~MOP-2#class-type-info?
                                             _%type50383%_)
                                            (let* ((_%$%g5042150436%_
                                                    (lambda (_%$%g5042250432%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g5042250432%_)))
                                                   (_%$%g5042050553%_
                                                    (lambda (_%$%g5042250440%_)
                                                      (if (gx#stx-pair?
                                                           _%$%g5042250440%_)
                                                          (let ((_%$%e5042550443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%g5042250440%_)))
                    (let ((_%$%hd5042650447%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5042550443%_)))
                          (_%$%tl5042750450%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5042550443%_))))
                      (if (gx#stx-pair? _%$%tl5042750450%_)
                          (let ((_%$%e5042850453%_
                                 (gx#syntax-e _%$%tl5042750450%_)))
                            (let ((_%$%hd5042950457%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5042850453%_)))
                                  (_%$%tl5043050460%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5042850453%_))))
                              (if (gx#stx-null? _%$%tl5043050460%_)
                                  ((lambda (_%$%g5042350463%_
                                            _%$%g5042450465%_)
                                     (if (null? _%rest50410%_)
                                         (let ((_%$e50495%_
                                                (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                 _%type50383%_
                                                 _%part50412%_)))
                                           (if _%$e50495%_
                                               ((lambda (_%slot-type50499%_)
                                                  (let* ((_%$%g5050250510%_
                                                          (lambda (_%$%g5050350506%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g5050350506%_)))
                                                         (_%$%g5050150533%_
                                                          (lambda (_%$%g5050350514%_)
                                                            ((lambda (_%$%g5050450517%_)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'begin-annotation)
                             (cons (cons (gx#datum->syntax '#f '@type)
                                         (cons _%$%g5050450517%_ '()))
                                   (cons (cons _%$%g5042350463%_
                                               (cons _%$%g5042450465%_ '()))
                                         '()))))
                     _%$%g5050350514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5050150533%_
                                                     (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                                      _%stx50245%_
                                                      _%slot-type50499%_))))
                                                _%$e50495%_)
                                               (if _%nil-check?50385%_
                                                   (cons _%$%g5042350463%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'check-nil!)
                             (cons _%$%g5042450465%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%g5042350463%_
                                                         (cons _%$%g5042450465%_
                                                               '())))))
                                         (let ((_%$e50541%_
                                                (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                 _%type50383%_
                                                 _%part50412%_)))
                                           (if _%$e50541%_
                                               ((lambda (_%type50545%_)
                                                  (let ((_%type50548%_
                                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                          _%stx50245%_
                                                          _%type50545%_)))
                                                    (if _%nil-check?50385%_
                                                        (_%loop50378%_
                                                         _%rest50410%_
                                                         _%type50548%_
                                                         (cons _%$%g5042350463%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'check-nil!)
                                   (cons _%$%g5042450465%_ '()))
                             '()))
                 '#f)
                (_%loop50378%_
                 _%rest50410%_
                 _%type50548%_
                 (cons _%$%g5042350463%_ (cons _%$%g5042450465%_ '()))
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$e50541%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"unresolved dotted reference; unknown type for slot"
                                                _%stx50245%_
                                                _%$%g5025150338%_
                                                _%part50412%_)))))
                                   _%$%hd5042950457%_
                                   _%$%hd5042650447%_)
                                  (_%$%g5042150436%_ _%$%g5042250440%_))))
                          (_%$%g5042150436%_ _%$%g5042250440%_))))
                  (_%$%g5042150436%_ _%$%g5042250440%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5042050553%_
                                               (list (if _%nil-check?50385%_
                                                         (cons 'check-nil!
                                                               (cons _%object50384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _%object50384%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                                      _%stx50245%_
                                                      _%type50383%_
                                                      _%part50412%_))))
                                            (if (gerbil/core/contract~InterfaceInfo#interface-info?
                                                 _%type50383%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"illegal dotted reference; interface has no slots")
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"unexpected type"
                                                 _%stx50245%_
                                                 _%type50383%_)))))))
                            (if (pair? _%$%parts5038650394%_)
                                (let ((_%$%hd5039150565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%parts5038650394%_)))
                                      (_%$%tl5039250568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%parts5038650394%_))))
                                  (let* ((_%part50571%_ _%$%hd5039150565%_)
                                         (_%rest50574%_ _%$%tl5039250568%_))
                                    (_%$%K5039050561%_
                                     _%rest50574%_
                                     _%part50571%_)))
                                (_%$%else5038850406%_)))))
                      _%$e50371%_)
                     (cons (gx#datum->syntax '#f '%%ref)
                           (cons _%$%g5025150338%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (pair? _%$%g5035050357%_)
                                                   (let ((_%$%hd5035450583%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%g5035050357%_)))
                                                         (_%$%tl5035550586%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%g5035050357%_))))
                                                     (let* ((_%var50589%_
                                                             _%$%hd5035450583%_)
                                                            (_%parts50592%_
                                                             _%$%tl5035550586%_))
                                                       (_%$%K5035350579%_
                                                        _%parts50592%_
                                                        _%var50589%_)))
                                                   (_%$%E5035250363%_)))
                                             (_%$%g5024850311%_
                                              _%$%g5025050315%_)))
                                       _%$%hd5025650332%_)
                                      (_%$%g5024850311%_ _%$%g5025050315%_))))
                              (_%$%g5024850311%_ _%$%g5025050315%_))))
                      (_%$%g5024850311%_ _%$%g5025050315%_)))))
          (_%$%g5024750595%_ _%stx50245%_))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx50599%_)
        (let* ((_%$%g5060350632%_
                (lambda (_%$%g5060450628%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5060450628%_)))
               (_%$%g5060250687%_
                (lambda (_%$%g5060450636%_)
                  (if (gx#stx-pair? _%$%g5060450636%_)
                      (let ((_%$%e5061850639%_
                             (gx#syntax-e _%$%g5060450636%_)))
                        (let ((_%$%hd5061950643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5061850639%_)))
                              (_%$%tl5062050646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5061850639%_))))
                          (if (gx#stx-pair? _%$%tl5062050646%_)
                              (let ((_%$%e5062150649%_
                                     (gx#syntax-e _%$%tl5062050646%_)))
                                (let ((_%$%hd5062250653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5062150649%_)))
                                      (_%$%tl5062350656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5062150649%_))))
                                  (if (gx#stx-pair? _%$%tl5062350656%_)
                                      (let ((_%$%e5062450659%_
                                             (gx#syntax-e _%$%tl5062350656%_)))
                                        (let ((_%$%hd5062550663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5062450659%_)))
                                              (_%$%tl5062650666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5062450659%_))))
                                          (if (gx#stx-null? _%$%tl5062650666%_)
                                              ((lambda (_%$%g5061650669%_
                                                        _%$%g5061750671%_)
                                                 (|gerbil/core/more-sugar[1]#expand-set!|
                                                  _%stx50599%_))
                                               _%$%hd5062550663%_
                                               _%$%hd5062250653%_)
                                              (_%$%g5060350632%_
                                               _%$%g5060450636%_))))
                                      (_%$%g5060350632%_ _%$%g5060450636%_))))
                              (_%$%g5060350632%_ _%$%g5060450636%_))))
                      (_%$%g5060350632%_ _%$%g5060450636%_))))
               (_%$%g5060150999%_
                (lambda (_%$%g5060450691%_)
                  (if (gx#stx-pair? _%$%g5060450691%_)
                      (let ((_%$%e5060750694%_
                             (gx#syntax-e _%$%g5060450691%_)))
                        (let ((_%$%hd5060850698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5060750694%_)))
                              (_%$%tl5060950701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5060750694%_))))
                          (if (gx#stx-pair? _%$%tl5060950701%_)
                              (let ((_%$%e5061050704%_
                                     (gx#syntax-e _%$%tl5060950701%_)))
                                (let ((_%$%hd5061150708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5061050704%_)))
                                      (_%$%tl5061250711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5061050704%_))))
                                  (if (gx#stx-pair? _%$%tl5061250711%_)
                                      (let ((_%$%e5061350714%_
                                             (gx#syntax-e _%$%tl5061250711%_)))
                                        (let ((_%$%hd5061450718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5061350714%_)))
                                              (_%$%tl5061550721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5061350714%_))))
                                          (if (gx#stx-null? _%$%tl5061550721%_)
                                              ((lambda (_%$%g5060550724%_
                                                        _%$%g5060650726%_)
                                                 (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                                                      _%$%g5060650726%_)
                                                     (let* ((_%$%g5074050747%_
                                                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                                              _%stx50599%_
                                                              _%$%g5060650726%_))
                                                            (_%$%E5074250753%_
                                                             (lambda ()
                                                               (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g5074050747%_
                              '([var . parts]))
                       (void)))
                    (_%$%K5074350983%_
                     (lambda (_%parts50757%_ _%var50759%_)
                       (let ((_%$e50761%_
                              (gerbil/core/contract~TypeEnv#type-env-lookup
                               _%var50759%_)))
                         (if _%$e50761%_
                             ((lambda (_%te50765%_)
                                (let _%loop50768%_ ((_%parts50771%_
                                                     _%parts50757%_)
                                                    (_%type50773%_
                                                     (gerbil/core/contract~TypeEnv#type-env-type
                                                      _%te50765%_))
                                                    (_%object50774%_
                                                     _%var50759%_)
                                                    (_%checked-mutator?50775%_
                                                     (gerbil/core/contract~TypeEnv#type-env-checked?
                                                      _%te50765%_))
                                                    (_%nil-check?50776%_ '#f))
                                  (let* ((_%$%parts5077750784%_ _%parts50771%_)
                                         (_%$%E5077950790%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%parts5077750784%_
                                                   '([part . rest]))
                                            (void)))
                                         (_%$%K5078050965%_
                                          (lambda (_%rest50794%_ _%part50796%_)
                                            (if (and (not _%nil-check?50776%_)
                                                     (string-prefix?
                                                      '"?"
                                                      (symbol->string
                                                       _%part50796%_)))
                                                (let ((_%str50800%_
                                                       (symbol->string
                                                        _%part50796%_)))
                                                  (_%loop50768%_
                                                   (cons (string->symbol
                                                          (substring
                                                           _%str50800%_
                                                           '1
                                                           (string-length
                                                            _%str50800%_)))
                                                         _%rest50794%_)
                                                   _%type50773%_
                                                   _%object50774%_
                                                   _%checked-mutator?50775%_
                                                   '#t))
                                                (if (gerbil/core/mop~MOP-2#class-type-info?
                                                     _%type50773%_)
                                                    (if (null? _%rest50794%_)
                                                        (let* ((_%$%g5080750822%_
                                                                (lambda (_%$%g5080850818%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g5080850818%_)))
                       (_%$%g5080650879%_
                        (lambda (_%$%g5080850826%_)
                          (if (gx#stx-pair? _%$%g5080850826%_)
                              (let ((_%$%e5081150829%_
                                     (gx#syntax-e _%$%g5080850826%_)))
                                (let ((_%$%hd5081250833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5081150829%_)))
                                      (_%$%tl5081350836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5081150829%_))))
                                  (if (gx#stx-pair? _%$%tl5081350836%_)
                                      (let ((_%$%e5081450839%_
                                             (gx#syntax-e _%$%tl5081350836%_)))
                                        (let ((_%$%hd5081550843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5081450839%_)))
                                              (_%$%tl5081650846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5081450839%_))))
                                          (if (gx#stx-null? _%$%tl5081650846%_)
                                              ((lambda (_%$%g5080950849%_
                                                        _%$%g5081050851%_)
                                                 (if _%nil-check?50776%_
                                                     (cons _%$%g5080950849%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'check-nil!)
                               (cons _%$%g5081050851%_ '()))
                         (cons _%$%g5060550724%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g5080950849%_
                                                           (cons _%$%g5081050851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g5060550724%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd5081550843%_
                                               _%$%hd5081250833%_)
                                              (_%$%g5080750822%_
                                               _%$%g5080850826%_))))
                                      (_%$%g5080750822%_ _%$%g5080850826%_))))
                              (_%$%g5080750822%_ _%$%g5080850826%_)))))
                  (_%$%g5080650879%_
                   (list _%object50774%_
                         (|gerbil/core/contract~Using[1]#get-slot-mutator|
                          _%stx50599%_
                          _%type50773%_
                          _%part50796%_
                          (if _%checked-mutator?50775%_
                              (|gerbil/core/contract~Using[1]#!class-slot-contract|
                               _%type50773%_
                               _%part50796%_)
                              '#f)))))
                (let ((_%$e50883%_
                       (|gerbil/core/contract~Using[1]#!class-slot-type|
                        _%type50773%_
                        _%part50796%_)))
                  (if _%$e50883%_
                      ((lambda (_%type50887%_)
                         (let* ((_%type50890%_
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx50599%_
                                  _%type50887%_))
                                (_%$%g5089350908%_
                                 (lambda (_%$%g5089450904%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5089450904%_)))
                                (_%$%g5089250955%_
                                 (lambda (_%$%g5089450912%_)
                                   (if (gx#stx-pair? _%$%g5089450912%_)
                                       (let ((_%$%e5089750915%_
                                              (gx#syntax-e _%$%g5089450912%_)))
                                         (let ((_%$%hd5089850919%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5089750915%_)))
                                               (_%$%tl5089950922%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5089750915%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5089950922%_)
                                               (let ((_%$%e5090050925%_
                                                      (gx#syntax-e
                                                       _%$%tl5089950922%_)))
                                                 (let ((_%$%hd5090150929%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5090050925%_)))
                                                       (_%$%tl5090250932%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5090050925%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5090250932%_)
                                                       ((lambda (_%$%g5089550935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5089650937%_)
                  (_%loop50768%_
                   _%rest50794%_
                   _%type50890%_
                   (cons _%$%g5089550935%_ (cons _%$%g5089650937%_ '()))
                   (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                    _%type50890%_
                    _%part50796%_)
                   '#f))
                _%$%hd5090150929%_
                _%$%hd5089850919%_)
               (_%$%g5089350908%_ _%$%g5089450912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5089350908%_
                                                _%$%g5089450912%_))))
                                       (_%$%g5089350908%_
                                        _%$%g5089450912%_)))))
                           (_%$%g5089250955%_
                            (list (if _%nil-check?50776%_
                                      (cons 'check-nil!
                                            (cons _%object50774%_ '()))
                                      _%object50774%_)
                                  (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                   _%stx50599%_
                                   _%type50890%_
                                   _%part50796%_)))))
                       _%$e50883%_)
                      (gx#raise-syntax-error
                       '#f
                       '"unresolved dotted reference; unknown type for slot"
                       _%stx50599%_
                       _%$%g5060650726%_
                       _%part50796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gerbil/core/contract~InterfaceInfo#interface-info?
                                                         _%type50773%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"illegal dotted reference; interface has no slots")
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"unexpected type"
                                                         _%stx50599%_
                                                         _%type50773%_)))))))
                                    (if (pair? _%$%parts5077750784%_)
                                        (let ((_%$%hd5078150969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%parts5077750784%_)))
                                              (_%$%tl5078250972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%parts5077750784%_))))
                                          (let* ((_%part50975%_
                                                  _%$%hd5078150969%_)
                                                 (_%rest50978%_
                                                  _%$%tl5078250972%_))
                                            (_%$%K5078050965%_
                                             _%rest50978%_
                                             _%part50975%_)))
                                        (_%$%E5077950790%_)))))
                              _%$e50761%_)
                             (|gerbil/core/more-sugar[1]#expand-set!|
                              _%stx50599%_))))))
               (if (pair? _%$%g5074050747%_)
                   (let ((_%$%hd5074450987%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%g5074050747%_)))
                         (_%$%tl5074550990%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%g5074050747%_))))
                     (let* ((_%var50993%_ _%$%hd5074450987%_)
                            (_%parts50996%_ _%$%tl5074550990%_))
                       (_%$%K5074350983%_ _%parts50996%_ _%var50993%_)))
                   (_%$%E5074250753%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g5060250687%_
                                                      _%$%g5060450691%_)))
                                               _%$%hd5061450718%_
                                               _%$%hd5061150708%_)
                                              (_%$%g5060250687%_
                                               _%$%g5060450691%_))))
                                      (_%$%g5060250687%_ _%$%g5060450691%_))))
                              (_%$%g5060250687%_ _%$%g5060450691%_))))
                      (_%$%g5060250687%_ _%$%g5060450691%_)))))
          (_%$%g5060150999%_ _%stx50599%_))))))
