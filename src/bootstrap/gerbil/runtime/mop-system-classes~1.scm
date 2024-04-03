(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98225_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx97845%_)
      (let* ((_%g9784897886%_
              (lambda (_%g9784997882%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9784997882%_)))
             (_%g9784798055%_
              (lambda (_%g9784997890%_)
                (if (gx#stx-pair? _%g9784997890%_)
                    (let ((_%e9785697893%_ (gx#syntax-e _%g9784997890%_)))
                      (let ((_%hd9785597897%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9785697893%_)))
                            (_%tl9785497900%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9785697893%_))))
                        (if (gx#stx-pair? _%tl9785497900%_)
                            (let ((_%e9785997903%_
                                   (gx#syntax-e _%tl9785497900%_)))
                              (let ((_%hd9785897907%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9785997903%_)))
                                    (_%tl9785797910%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9785997903%_))))
                                (if (gx#stx-pair? _%hd9785897907%_)
                                    (let ((_%e9786297913%_
                                           (gx#syntax-e _%hd9785897907%_)))
                                      (let ((_%hd9786197917%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9786297913%_)))
                                            (_%tl9786097920%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9786297913%_))))
                                        (if (gx#stx-pair? _%tl9786097920%_)
                                            (let ((_%e9786597923%_
                                                   (gx#syntax-e
                                                    _%tl9786097920%_)))
                                              (let ((_%hd9786497927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9786597923%_)))
                                                    (_%tl9786397930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9786597923%_))))
                                                (if (gx#stx-null?
                                                     _%tl9786397930%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9785797910%_)
                                                        (let ((_%e9786897933%_
                                                               (gx#syntax-e
                                                                _%tl9785797910%_)))
                                                          (let ((_%hd9786797937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9786897933%_)))
                        (_%tl9786697940%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9786897933%_))))
                    (if (gx#identifier? _%hd9786797937%_)
                        (if (gx#free-identifier=?
                             |[1]#_g98225_|
                             _%hd9786797937%_)
                            (if (gx#stx-pair? _%tl9786697940%_)
                                (let ((_%e9787197943%_
                                       (gx#syntax-e _%tl9786697940%_)))
                                  (let ((_%hd9787097947%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9787197943%_)))
                                        (_%tl9786997950%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9787197943%_))))
                                    (if (gx#stx-pair/null? _%tl9786997950%_)
                                        (let ((_g98226_
                                               (gx#syntax-split-splice
                                                _%tl9786997950%_
                                                '0)))
                                          (begin
                                            (let ((_g98227_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g98226_)
                                                         (##vector-length
                                                          _g98226_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g98227_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g98227_)))
                                            (let ((_%target9787297953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98226_
                                                      0)))
                                                  (_%tl9787497956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98226_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9787497956%_)
                                                  (letrec ((_%loop9787597959%_
                                                            (lambda (_%hd9787397963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9787997966%_)
                      (if (gx#stx-pair? _%hd9787397963%_)
                          (let ((_%e9787697969%_
                                 (gx#syntax-e _%hd9787397963%_)))
                            (let ((_%lp-hd9787797973%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9787697969%_)))
                                  (_%lp-tl9787897976%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9787697969%_))))
                              (_%loop9787597959%_
                               _%lp-tl9787897976%_
                               (cons _%lp-hd9787797973%_ _%body9787997966%_))))
                          (let ((_%body9788097979%_
                                 (reverse _%body9787997966%_)))
                            ((lambda (_%L97983%_
                                      _%L97985%_
                                      _%L97986%_
                                      _%L97987%_)
                               (let* ((_%g9801698024%_
                                       (lambda (_%g9801798020%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9801798020%_)))
                                      (_%g9801598051%_
                                       (lambda (_%g9801798028%_)
                                         ((lambda (_%L98031%_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L97987%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%L98031%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L97986%_ '())
                                                      (let ((__tmp98228
                                                             (lambda (_%g9804298045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g9804398048%_)
                       (cons _%g9804298045%_ _%g9804398048%_))))
                (declare (not safe))
                (__foldr1 __tmp98228 '() _%L97983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9801798028%_))))
                                 (_%g9801598051%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx97845%_
                                     _%L97985%_)))))
                             _%body9788097979%_
                             _%hd9787097947%_
                             _%hd9786497927%_
                             _%hd9786197917%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9787597959%_
                                                     _%target9787297953%_
                                                     '()))
                                                  (_%g9784897886%_
                                                   _%g9784997890%_)))))
                                        (_%g9784897886%_ _%g9784997890%_))))
                                (_%g9784897886%_ _%g9784997890%_))
                            (_%g9784897886%_ _%g9784997890%_))
                        (_%g9784897886%_ _%g9784997890%_))))
                (_%g9784897886%_ _%g9784997890%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9784897886%_
                                                     _%g9784997890%_))))
                                            (_%g9784897886%_
                                             _%g9784997890%_))))
                                    (_%g9784897886%_ _%g9784997890%_))))
                            (_%g9784897886%_ _%g9784997890%_))))
                    (_%g9784897886%_ _%g9784997890%_)))))
        (_%g9784798055%_ _%stx97845%_)))))
