(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g46438_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx45676%_)
        (let* ((_%$%g4568045691%_
                (lambda (_%$%g4568145687%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4568145687%_)))
               (_%$%g4567945721%_
                (lambda (_%$%g4568145695%_)
                  (if (gx#stx-pair? _%$%g4568145695%_)
                      (let ((_%$%e4568345698%_
                             (gx#syntax-e _%$%g4568145695%_)))
                        (let ((_%$%hd4568445702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4568345698%_)))
                              (_%$%tl4568545705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4568345698%_))))
                          (cons (gx#datum->syntax '#f 'make-setq-macro)
                                (cons 'macro:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'syntax-rules)
                                                  _%$%tl4568545705%_)
                                            '())))))
                      (_%$%g4568045691%_ _%$%g4568145695%_)))))
          (_%$%g4567945721%_ _%$stx45676%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx45725%_)
        (let* ((_%$%g4572845761%_
                (lambda (_%$%g4572945757%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4572945757%_)))
               (_%$%g4572746163%_
                (lambda (_%$%g4572945765%_)
                  (if (gx#stx-pair? _%$%g4572945765%_)
                      (let ((_%$%e4573245768%_
                             (gx#syntax-e _%$%g4572945765%_)))
                        (let ((_%$%hd4573345772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4573245768%_)))
                              (_%$%tl4573445775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4573245768%_))))
                          (if (gx#stx-pair? _%$%tl4573445775%_)
                              (let ((_%$%e4573545778%_
                                     (gx#syntax-e _%$%tl4573445775%_)))
                                (let ((_%$%hd4573645782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4573545778%_)))
                                      (_%$%tl4573745785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4573545778%_))))
                                  (if (gx#stx-pair/null? _%$%hd4573645782%_)
                                      (let ((_g46432_
                                             (gx#syntax-split-splice
                                              _%$%hd4573645782%_
                                              '0)))
                                        (begin
                                          (let ((_g46433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46432_)
                                                       (##values-length
                                                        _g46432_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46433_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46433_)))
                                          (let ((_%$%target4573845788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46432_ 0)))
                                                (_%$%tl4574045791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46432_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4574045791%_)
                                                (letrec ((_%$%loop4574145794%_
                                                          (lambda (_%$%hd4573945798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause4574545801%_)
                    (if (gx#stx-pair? _%$%hd4573945798%_)
                        (let ((_%$%e4574245803%_
                               (gx#syntax-e _%$%hd4573945798%_)))
                          (let ((_%$%lp-hd4574345807%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4574245803%_)))
                                (_%$%lp-tl4574445810%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4574245803%_))))
                            (_%$%loop4574145794%_
                             _%$%lp-tl4574445810%_
                             (cons _%$%lp-hd4574345807%_
                                   _%$%clause4574545801%_))))
                        (let ((_%$%clause4574645813%_
                               (reverse _%$%clause4574545801%_)))
                          (if (gx#stx-pair/null? _%$%tl4573745785%_)
                              (let ((_g46434_
                                     (gx#syntax-split-splice
                                      _%$%tl4573745785%_
                                      '0)))
                                (begin
                                  (let ((_g46435_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46434_)
                                               (##values-length _g46434_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46435_ 2)))
                                        (error "Context expects 2 values"
                                               _g46435_)))
                                  (let ((_%$%target4574745816%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46434_ 0)))
                                        (_%$%tl4574945819%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46434_ 1))))
                                    (if (gx#stx-null? _%$%tl4574945819%_)
                                        (letrec ((_%$%loop4575045822%_
                                                  (lambda (_%$%hd4574845826%_
                                                           _%$%body4575445829%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4574845826%_)
                                                        (let ((_%$%e4575145831%_
                                                               (gx#syntax-e
                                                                _%$%hd4574845826%_)))
                                                          (let ((_%$%lp-hd4575245835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4575145831%_)))
                        (_%$%lp-tl4575345838%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4575145831%_))))
                    (_%$%loop4575045822%_
                     _%$%lp-tl4575345838%_
                     (cons _%$%lp-hd4575245835%_ _%$%body4575445829%_))))
                (let* ((_%$%body4575545841%_ (reverse _%$%body4575445829%_))
                       (_%$%g4586845885%_
                        (lambda (_%$%g4586945881%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g4586945881%_)))
                       (_%$%g4586745952%_
                        (lambda (_%$%g4586945889%_)
                          (if (gx#stx-pair/null? _%$%g4586945889%_)
                              (let ((_g46436_
                                     (gx#syntax-split-splice
                                      _%$%g4586945889%_
                                      '0)))
                                (begin
                                  (let ((_g46437_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46436_)
                                               (##values-length _g46436_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46437_ 2)))
                                        (error "Context expects 2 values"
                                               _g46437_)))
                                  (let ((_%$%target4587145892%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46436_ 0)))
                                        (_%$%tl4587345895%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46436_ 1))))
                                    (if (gx#stx-null? _%$%tl4587345895%_)
                                        (letrec ((_%$%loop4587445898%_
                                                  (lambda (_%$%hd4587245902%_
                                                           _%$%clause4587845905%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4587245902%_)
                                                        (let ((_%$%e4587545907%_
                                                               (gx#syntax-e
                                                                _%$%hd4587245902%_)))
                                                          (let ((_%$%lp-hd4587645911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4587545907%_)))
                        (_%$%lp-tl4587745914%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4587545907%_))))
                    (_%$%loop4587445898%_
                     _%$%lp-tl4587745914%_
                     (cons _%$%lp-hd4587645911%_ _%$%clause4587845905%_))))
                (let ((_%$%clause4587945917%_
                       (reverse _%$%clause4587845905%_)))
                  (cons (gx#datum->syntax '#f 'with-syntax*)
                        (cons (foldr (lambda (_%$%g4593545940%_
                                              _%$%g4593645943%_)
                                       (cons _%$%g4593545940%_
                                             _%$%g4593645943%_))
                                     '()
                                     _%$%clause4587945917%_)
                              (foldr (lambda (_%$%g4593745946%_
                                              _%$%g4593845949%_)
                                       (cons _%$%g4593745946%_
                                             _%$%g4593845949%_))
                                     '()
                                     _%$%body4575545841%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4587445898%_
                                           _%$%target4587145892%_
                                           '()))
                                        (_%$%g4586845885%_
                                         _%$%g4586945889%_)))))
                              (_%$%g4586845885%_ _%$%g4586945889%_)))))
                  (_%$%g4586745952%_
                   (map (lambda (_%clause45956%_)
                          (let* ((_%__stx4636946370%_ _%clause45956%_)
                                 (_%$%g4596045999%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx4636946370%_))))
                            (let ((_%__kont4637246373%_
                                   (lambda (_%$%g4596246132%_
                                            _%$%g4596346134%_)
                                     (cons _%$%g4596346134%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax-local-temp)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4596246132%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont4637446375%_
                                   (lambda (_%$%g4597646054%_
                                            _%$%g4597746056%_
                                            _%$%g4597846057%_)
                                     (cons _%$%g4597846057%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-identifier)
                                                       (cons _%$%g4597746056%_
                                                             (foldr (lambda (_%$%g4607646079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g4607746082%_)
                              (cons _%$%g4607646079%_ _%$%g4607746082%_))
                            '()
                            _%$%g4597646054%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                              (let* ((_%__match4643046431%_
                                      (lambda (_%$%e4597946006%_
                                               _%$%hd4598046010%_
                                               _%$%tl4598146013%_
                                               _%$%e4598246016%_
                                               _%$%hd4598346020%_
                                               _%$%tl4598446023%_
                                               _%__splice4637646377%_
                                               _%$%target4598546026%_
                                               _%$%tl4598746029%_)
                                        (letrec ((_%$%loop4598846032%_
                                                  (lambda (_%$%hd4598646036%_
                                                           _%$%components4599246039%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4598646036%_)
                                                        (let ((_%$%e4598946041%_
                                                               (gx#syntax-e
                                                                _%$%hd4598646036%_)))
                                                          (let ((_%$%lp-tl4599146048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4598946041%_)))
                        (_%$%lp-hd4599046045%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4598946041%_))))
                    (_%$%loop4598846032%_
                     _%$%lp-tl4599146048%_
                     (cons _%$%lp-hd4599046045%_ _%$%components4599246039%_))))
                (let ((_%$%components4599346051%_
                       (reverse _%$%components4599246039%_)))
                  (let ((_%$%g4597646054%_ _%$%components4599346051%_)
                        (_%$%g4597746056%_ _%$%hd4598346020%_)
                        (_%$%g4597846057%_ _%$%hd4598046010%_))
                    (if (gx#identifier? _%$%g4597846057%_)
                        (_%__kont4637446375%_
                         _%$%g4597646054%_
                         _%$%g4597746056%_
                         _%$%g4597846057%_)
                        (_%$%g4596045999%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4598846032%_
                                           _%$%target4598546026%_
                                           '()))))
                                     (_%__match4641046411%_
                                      (lambda (_%$%e4596446092%_
                                               _%$%hd4596546096%_
                                               _%$%tl4596646099%_
                                               _%$%e4596746102%_
                                               _%$%hd4596846106%_
                                               _%$%tl4596946109%_
                                               _%$%e4597046112%_
                                               _%$%hd4597146116%_
                                               _%$%tl4597246119%_
                                               _%$%e4597346122%_
                                               _%$%hd4597446126%_
                                               _%$%tl4597546129%_)
                                        (let ((_%$%g4596246132%_
                                               _%$%hd4597446126%_)
                                              (_%$%g4596346134%_
                                               _%$%hd4596546096%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4596346134%_)
                                                   (gx#identifier?
                                                    _%$%g4596246132%_))
                                              (_%__kont4637246373%_
                                               _%$%g4596246132%_
                                               _%$%g4596346134%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4596946109%_)
                                                  (let ((_%__splice4637646377%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4596946109%_
                                                          '0)))
                                                    (let ((_%$%tl4598746029%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4637646377%_
                                                              '1)))
                                                          (_%$%target4598546026%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4637646377%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4598746029%_)
                                                          (_%__match4643046431%_
                                                           _%$%e4596446092%_
                                                           _%$%hd4596546096%_
                                                           _%$%tl4596646099%_
                                                           _%$%e4596746102%_
                                                           _%$%hd4596846106%_
                                                           _%$%tl4596946109%_
                                                           _%__splice4637646377%_
                                                           _%$%target4598546026%_
                                                           _%$%tl4598746029%_)
                                                          (_%$%g4596045999%_))))
                                                  (_%$%g4596045999%_)))))))
                                (if (gx#stx-pair? _%__stx4636946370%_)
                                    (let ((_%$%e4596446092%_
                                           (gx#syntax-e _%__stx4636946370%_)))
                                      (let ((_%$%tl4596646099%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4596446092%_)))
                                            (_%$%hd4596546096%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4596446092%_))))
                                        (if (gx#stx-pair? _%$%tl4596646099%_)
                                            (let ((_%$%e4596746102%_
                                                   (gx#syntax-e
                                                    _%$%tl4596646099%_)))
                                              (let ((_%$%tl4596946109%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4596746102%_)))
                                                    (_%$%hd4596846106%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4596746102%_))))
                                                (if (gx#stx-pair?
                                                     _%$%hd4596846106%_)
                                                    (let ((_%$%e4597046112%_
                                                           (gx#syntax-e
                                                            _%$%hd4596846106%_)))
                                                      (let ((_%$%tl4597246119%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e4597046112%_)))
                    (_%$%hd4597146116%_
                     (let () (declare (not safe)) (##car _%$%e4597046112%_))))
                (if (gx#identifier? _%$%hd4597146116%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/more-syntax-sugar[1]#_g46438_|
                         _%$%hd4597146116%_)
                        (if (gx#stx-pair? _%$%tl4597246119%_)
                            (let ((_%$%e4597346122%_
                                   (gx#syntax-e _%$%tl4597246119%_)))
                              (let ((_%$%tl4597546129%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4597346122%_)))
                                    (_%$%hd4597446126%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4597346122%_))))
                                (if (gx#stx-null? _%$%tl4597546129%_)
                                    (if (gx#stx-null? _%$%tl4596946109%_)
                                        (_%__match4641046411%_
                                         _%$%e4596446092%_
                                         _%$%hd4596546096%_
                                         _%$%tl4596646099%_
                                         _%$%e4596746102%_
                                         _%$%hd4596846106%_
                                         _%$%tl4596946109%_
                                         _%$%e4597046112%_
                                         _%$%hd4597146116%_
                                         _%$%tl4597246119%_
                                         _%$%e4597346122%_
                                         _%$%hd4597446126%_
                                         _%$%tl4597546129%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4596946109%_)
                                            (let ((_%__splice4637646377%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4596946109%_
                                                    '0)))
                                              (let ((_%$%tl4598746029%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4637646377%_
                                                        '1)))
                                                    (_%$%target4598546026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4637646377%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4598746029%_)
                                                    (_%__match4643046431%_
                                                     _%$%e4596446092%_
                                                     _%$%hd4596546096%_
                                                     _%$%tl4596646099%_
                                                     _%$%e4596746102%_
                                                     _%$%hd4596846106%_
                                                     _%$%tl4596946109%_
                                                     _%__splice4637646377%_
                                                     _%$%target4598546026%_
                                                     _%$%tl4598746029%_)
                                                    (_%$%g4596045999%_))))
                                            (_%$%g4596045999%_)))
                                    (if (gx#stx-pair/null? _%$%tl4596946109%_)
                                        (let ((_%__splice4637646377%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4596946109%_
                                                '0)))
                                          (let ((_%$%tl4598746029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4637646377%_
                                                    '1)))
                                                (_%$%target4598546026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4637646377%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4598746029%_)
                                                (_%__match4643046431%_
                                                 _%$%e4596446092%_
                                                 _%$%hd4596546096%_
                                                 _%$%tl4596646099%_
                                                 _%$%e4596746102%_
                                                 _%$%hd4596846106%_
                                                 _%$%tl4596946109%_
                                                 _%__splice4637646377%_
                                                 _%$%target4598546026%_
                                                 _%$%tl4598746029%_)
                                                (_%$%g4596045999%_))))
                                        (_%$%g4596045999%_)))))
                            (if (gx#stx-pair/null? _%$%tl4596946109%_)
                                (let ((_%__splice4637646377%_
                                       (gx#syntax-split-splice->vector
                                        _%$%tl4596946109%_
                                        '0)))
                                  (let ((_%$%tl4598746029%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice4637646377%_
                                            '1)))
                                        (_%$%target4598546026%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice4637646377%_
                                            '0))))
                                    (if (gx#stx-null? _%$%tl4598746029%_)
                                        (_%__match4643046431%_
                                         _%$%e4596446092%_
                                         _%$%hd4596546096%_
                                         _%$%tl4596646099%_
                                         _%$%e4596746102%_
                                         _%$%hd4596846106%_
                                         _%$%tl4596946109%_
                                         _%__splice4637646377%_
                                         _%$%target4598546026%_
                                         _%$%tl4598746029%_)
                                        (_%$%g4596045999%_))))
                                (_%$%g4596045999%_)))
                        (if (gx#stx-pair/null? _%$%tl4596946109%_)
                            (let ((_%__splice4637646377%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4596946109%_
                                    '0)))
                              (let ((_%$%tl4598746029%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4637646377%_
                                        '1)))
                                    (_%$%target4598546026%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4637646377%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4598746029%_)
                                    (_%__match4643046431%_
                                     _%$%e4596446092%_
                                     _%$%hd4596546096%_
                                     _%$%tl4596646099%_
                                     _%$%e4596746102%_
                                     _%$%hd4596846106%_
                                     _%$%tl4596946109%_
                                     _%__splice4637646377%_
                                     _%$%target4598546026%_
                                     _%$%tl4598746029%_)
                                    (_%$%g4596045999%_))))
                            (_%$%g4596045999%_)))
                    (if (gx#stx-pair/null? _%$%tl4596946109%_)
                        (let ((_%__splice4637646377%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4596946109%_
                                '0)))
                          (let ((_%$%tl4598746029%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4637646377%_ '1)))
                                (_%$%target4598546026%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4637646377%_ '0))))
                            (if (gx#stx-null? _%$%tl4598746029%_)
                                (_%__match4643046431%_
                                 _%$%e4596446092%_
                                 _%$%hd4596546096%_
                                 _%$%tl4596646099%_
                                 _%$%e4596746102%_
                                 _%$%hd4596846106%_
                                 _%$%tl4596946109%_
                                 _%__splice4637646377%_
                                 _%$%target4598546026%_
                                 _%$%tl4598746029%_)
                                (_%$%g4596045999%_))))
                        (_%$%g4596045999%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4596946109%_)
                                                        (let ((_%__splice4637646377%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4596946109%_
                                                                '0)))
                                                          (let ((_%$%tl4598746029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4637646377%_ '1)))
                        (_%$%target4598546026%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4637646377%_ '0))))
                    (if (gx#stx-null? _%$%tl4598746029%_)
                        (_%__match4643046431%_
                         _%$%e4596446092%_
                         _%$%hd4596546096%_
                         _%$%tl4596646099%_
                         _%$%e4596746102%_
                         _%$%hd4596846106%_
                         _%$%tl4596946109%_
                         _%__splice4637646377%_
                         _%$%target4598546026%_
                         _%$%tl4598746029%_)
                        (_%$%g4596045999%_))))
                (_%$%g4596045999%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g4596045999%_))))
                                    (_%$%g4596045999%_))))))
                        (foldr (lambda (_%$%g4615446157%_ _%$%g4615546160%_)
                                 (cons _%$%g4615446157%_ _%$%g4615546160%_))
                               '()
                               _%$%clause4574645813%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4575045822%_
                                           _%$%target4574745816%_
                                           '()))
                                        (_%$%g4572845761%_
                                         _%$%g4572945765%_)))))
                              (_%$%g4572845761%_ _%$%g4572945765%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4574145794%_
                                                   _%$%target4573845788%_
                                                   '()))
                                                (_%$%g4572845761%_
                                                 _%$%g4572945765%_)))))
                                      (_%$%g4572845761%_ _%$%g4572945765%_))))
                              (_%$%g4572845761%_ _%$%g4572945765%_))))
                      (_%$%g4572845761%_ _%$%g4572945765%_)))))
          (_%$%g4572746163%_ _%stx45725%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx46171%_)
        (let* ((_%$%g4617546212%_
                (lambda (_%$%g4617646208%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4617646208%_)))
               (_%$%g4617446349%_
                (lambda (_%$%g4617646216%_)
                  (if (gx#stx-pair? _%$%g4617646216%_)
                      (let ((_%$%e4618046219%_
                             (gx#syntax-e _%$%g4617646216%_)))
                        (let ((_%$%hd4618146223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4618046219%_)))
                              (_%$%tl4618246226%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4618046219%_))))
                          (if (gx#stx-pair? _%$%tl4618246226%_)
                              (let ((_%$%e4618346229%_
                                     (gx#syntax-e _%$%tl4618246226%_)))
                                (let ((_%$%hd4618446233%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4618346229%_)))
                                      (_%$%tl4618546236%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4618346229%_))))
                                  (if (gx#stx-pair? _%$%hd4618446233%_)
                                      (let ((_%$%e4618646239%_
                                             (gx#syntax-e _%$%hd4618446233%_)))
                                        (let ((_%$%hd4618746243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4618646239%_)))
                                              (_%$%tl4618846246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4618646239%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4618846246%_)
                                              (let ((_g46439_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4618846246%_
                                                      '0)))
                                                (begin
                                                  (let ((_g46440_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g46439_)
                                                               (##values-length
                                                                _g46439_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g46440_ 2)))
                (error "Context expects 2 values" _g46440_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4618946249%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46439_
                                                            0)))
                                                        (_%$%tl4619146252%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46439_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4619146252%_)
                                                        (letrec ((_%$%loop4619246255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4619046259%_
                                   _%$%components4619646262%_)
                            (if (gx#stx-pair? _%$%hd4619046259%_)
                                (let ((_%$%e4619346264%_
                                       (gx#syntax-e _%$%hd4619046259%_)))
                                  (let ((_%$%lp-hd4619446268%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4619346264%_)))
                                        (_%$%lp-tl4619546271%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4619346264%_))))
                                    (_%$%loop4619246255%_
                                     _%$%lp-tl4619546271%_
                                     (cons _%$%lp-hd4619446268%_
                                           _%$%components4619646262%_))))
                                (let ((_%$%components4619746274%_
                                       (reverse _%$%components4619646262%_)))
                                  (if (gx#stx-pair/null? _%$%tl4618546236%_)
                                      (let ((_g46441_
                                             (gx#syntax-split-splice
                                              _%$%tl4618546236%_
                                              '0)))
                                        (begin
                                          (let ((_g46442_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46441_)
                                                       (##values-length
                                                        _g46441_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46442_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46442_)))
                                          (let ((_%$%target4619846277%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46441_ 0)))
                                                (_%$%tl4620046280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46441_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4620046280%_)
                                                (letrec ((_%$%loop4620146283%_
                                                          (lambda (_%$%hd4619946287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4620546290%_)
                    (if (gx#stx-pair? _%$%hd4619946287%_)
                        (let ((_%$%e4620246292%_
                               (gx#syntax-e _%$%hd4619946287%_)))
                          (let ((_%$%lp-hd4620346296%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4620246292%_)))
                                (_%$%lp-tl4620446299%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4620246292%_))))
                            (_%$%loop4620146283%_
                             _%$%lp-tl4620446299%_
                             (cons _%$%lp-hd4620346296%_
                                   _%$%body4620546290%_))))
                        (let ((_%$%body4620646302%_
                               (reverse _%$%body4620546290%_)))
                          (if (gx#identifier? _%$%hd4618746243%_)
                              (cons (gx#datum->syntax '#f 'with-identifiers)
                                    (cons (cons (cons _%$%hd4618746243%_
                                                      (foldr (lambda (_%$%g4633246337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4633346340%_)
                       (cons _%$%g4633246337%_ _%$%g4633346340%_))
                     '()
                     _%$%components4619746274%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (foldr (lambda (_%$%g4633446343%_
                                                          _%$%g4633546346%_)
                                                   (cons _%$%g4633446343%_
                                                         _%$%g4633546346%_))
                                                 '()
                                                 _%$%body4620646302%_)))
                              (_%$%g4617546212%_ _%$%g4617646216%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4620146283%_
                                                   _%$%target4619846277%_
                                                   '()))
                                                (_%$%g4617546212%_
                                                 _%$%g4617646216%_)))))
                                      (_%$%g4617546212%_
                                       _%$%g4617646216%_)))))))
                  (_%$%loop4619246255%_ _%$%target4618946249%_ '()))
                (_%$%g4617546212%_ _%$%g4617646216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4617546212%_
                                               _%$%g4617646216%_))))
                                      (_%$%g4617546212%_ _%$%g4617646216%_))))
                              (_%$%g4617546212%_ _%$%g4617646216%_))))
                      (_%$%g4617546212%_ _%$%g4617646216%_)))))
          (_%$%g4617446349%_ _%$stx46171%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx46355%_)
        (let ((_%$%g4635846365%_
               (lambda (_%$%g4635946361%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4635946361%_))))
          (_%$%g4635846365%_ _%$stx46355%_))))))
