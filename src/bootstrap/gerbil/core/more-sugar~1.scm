(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g45052_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g45055_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45056_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45057_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45058_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-sugar[1]#setq-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setq-macro::t
       'setq-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setq-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setq-macro|
      (lambda _%$args40301%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40301%_)))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setf-macro::t
       'setf-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setf-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setf-macro|
      (lambda _%$args40297%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40297%_)))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
      (lambda (_%stx40294%_)
        (if (gx#identifier? _%stx40294%_)
            (let ((__tmp45015 (gx#syntax-local-value _%stx40294%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp45015))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40291%_)
        (if (gx#identifier? _%stx40291%_)
            (let ((__tmp45016 (gx#syntax-local-value _%stx40291%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp45016))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx39916%_)
        (let* ((_%__stx4454444545%_ _%stx39916%_)
               (_%g3992239985%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4454444545%_))))
          (let ((_%__kont4454744548%_
                 (lambda (_%L40268%_ _%L40270%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%L40270%_)
                    _%stx39916%_)))
                (_%__kont4454944550%_
                 (lambda (_%L40157%_ _%L40159%_ _%L40160%_)
                   (let* ((_%g4018240190%_
                           (lambda (_%g4018340186%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4018340186%_)))
                          (_%g4018140217%_
                           (lambda (_%g4018340194%_)
                             ((lambda (_%L40197%_)
                                (cons _%L40197%_
                                      (foldr (lambda (_%g4020840211%_
                                                      _%g4020940214%_)
                                               (cons _%g4020840211%_
                                                     _%g4020940214%_))
                                             (cons _%L40157%_ '())
                                             _%L40159%_)))
                              _%g4018340194%_))))
                     (_%g4018140217%_
                      (gx#stx-identifier _%L40160%_ _%L40160%_ '"-set!")))))
                (_%__kont4455344554%_
                 (lambda (_%L40067%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%L40067%_)
                    _%stx39916%_)))
                (_%__kont4455544556%_
                 (lambda (_%L40022%_ _%L40024%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%L40024%_ (cons _%L40022%_ '()))))))
            (let* ((_%__match4464344644%_
                    (lambda (_%e3997139992%_
                             _%hd3997239996%_
                             _%tl3997339999%_
                             _%e3997440002%_
                             _%hd3997540006%_
                             _%tl3997640009%_
                             _%e3997740012%_
                             _%hd3997840016%_
                             _%tl3997940019%_)
                      (let ((_%L40022%_ _%hd3997840016%_)
                            (_%L40024%_ _%hd3997540006%_))
                        (if (gx#identifier? _%L40024%_)
                            (_%__kont4455544556%_ _%L40022%_ _%L40024%_)
                            (let () (declare (not safe)) (_%g3992239985%_))))))
                   (_%__match4462344624%_
                    (lambda (_%e3996340047%_
                             _%hd3996440051%_
                             _%tl3996540054%_
                             _%e3996640057%_
                             _%hd3996740061%_
                             _%tl3996840064%_)
                      (let ((_%L40067%_ _%hd3996740061%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%L40067%_)
                            (_%__kont4455344554%_ _%L40067%_)
                            (if (gx#stx-pair? _%tl3996840064%_)
                                (let ((_%e3997740012%_
                                       (gx#syntax-e _%tl3996840064%_)))
                                  (let ((_%tl3997940019%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e3997740012%_)))
                                        (_%hd3997840016%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e3997740012%_))))
                                    (if (gx#stx-null? _%tl3997940019%_)
                                        (_%__match4464344644%_
                                         _%e3996340047%_
                                         _%hd3996440051%_
                                         _%tl3996540054%_
                                         _%e3996640057%_
                                         _%hd3996740061%_
                                         _%tl3996840064%_
                                         _%e3997740012%_
                                         _%hd3997840016%_
                                         _%tl3997940019%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g3992239985%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g3992239985%_)))))))
                   (_%__match4461144612%_
                    (lambda (_%e3994140087%_
                             _%hd3994240091%_
                             _%tl3994340094%_
                             _%e3994440097%_
                             _%hd3994540101%_
                             _%tl3994640104%_
                             _%e3994740107%_
                             _%hd3994840111%_
                             _%tl3994940114%_
                             _%__splice4455144552%_
                             _%target3995040117%_
                             _%tl3995240120%_)
                      (letrec ((_%loop3995340123%_
                                (lambda (_%hd3995140127%_ _%arg3995740130%_)
                                  (if (gx#stx-pair? _%hd3995140127%_)
                                      (let ((_%e3995440133%_
                                             (gx#syntax-e _%hd3995140127%_)))
                                        (let ((_%lp-tl3995640140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e3995440133%_)))
                                              (_%lp-hd3995540137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e3995440133%_))))
                                          (_%loop3995340123%_
                                           _%lp-tl3995640140%_
                                           (cons _%lp-hd3995540137%_
                                                 _%arg3995740130%_))))
                                      (let ((_%arg3995840143%_
                                             (reverse _%arg3995740130%_)))
                                        (if (gx#stx-pair? _%tl3994640104%_)
                                            (let ((_%e3995940147%_
                                                   (gx#syntax-e
                                                    _%tl3994640104%_)))
                                              (let ((_%tl3996140154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e3995940147%_)))
                                                    (_%hd3996040151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e3995940147%_))))
                                                (if (gx#stx-null?
                                                     _%tl3996140154%_)
                                                    (let ((_%L40157%_
                                                           _%hd3996040151%_)
                                                          (_%L40159%_
                                                           _%arg3995840143%_)
                                                          (_%L40160%_
                                                           _%hd3994840111%_))
                                                      (if (gx#identifier?
                                                           _%L40160%_)
                                                          (_%__kont4454944550%_
                                                           _%L40157%_
                                                           _%L40159%_
                                                           _%L40160%_)
                                                          (_%__match4462344624%_
                                                           _%e3994140087%_
                                                           _%hd3994240091%_
                                                           _%tl3994340094%_
                                                           _%e3994440097%_
                                                           _%hd3994540101%_
                                                           _%tl3994640104%_)))
                                                    (_%__match4462344624%_
                                                     _%e3994140087%_
                                                     _%hd3994240091%_
                                                     _%tl3994340094%_
                                                     _%e3994440097%_
                                                     _%hd3994540101%_
                                                     _%tl3994640104%_))))
                                            (_%__match4462344624%_
                                             _%e3994140087%_
                                             _%hd3994240091%_
                                             _%tl3994340094%_
                                             _%e3994440097%_
                                             _%hd3994540101%_
                                             _%tl3994640104%_)))))))
                        (_%loop3995340123%_ _%target3995040117%_ '())))))
              (if (gx#stx-pair? _%__stx4454444545%_)
                  (let ((_%e3992640228%_ (gx#syntax-e _%__stx4454444545%_)))
                    (let ((_%tl3992840235%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e3992640228%_)))
                          (_%hd3992740232%_
                           (let ()
                             (declare (not safe))
                             (##car _%e3992640228%_))))
                      (if (gx#stx-pair? _%tl3992840235%_)
                          (let ((_%e3992940238%_
                                 (gx#syntax-e _%tl3992840235%_)))
                            (let ((_%tl3993140245%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e3992940238%_)))
                                  (_%hd3993040242%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e3992940238%_))))
                              (if (gx#stx-pair? _%hd3993040242%_)
                                  (let ((_%e3993240248%_
                                         (gx#syntax-e _%hd3993040242%_)))
                                    (let ((_%tl3993440255%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e3993240248%_)))
                                          (_%hd3993340252%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e3993240248%_))))
                                      (if (gx#stx-pair? _%tl3993140245%_)
                                          (let ((_%e3993540258%_
                                                 (gx#syntax-e
                                                  _%tl3993140245%_)))
                                            (let ((_%tl3993740265%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e3993540258%_)))
                                                  (_%hd3993640262%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e3993540258%_))))
                                              (if (gx#stx-null?
                                                   _%tl3993740265%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%L40268%_
                                                             _%hd3993640262%_)
                                                            (_%L40270%_
                                                             _%hd3993340252%_))
                                                        (_%__kont4454744548%_
                                                         _%L40268%_
                                                         _%L40270%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl3993440255%_)
                                                          (let ((_%__splice4455144552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl3993440255%_ '0)))
                    (let ((_%tl3995240120%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4455144552%_ '1)))
                          (_%target3995040117%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4455144552%_ '0))))
                      (if (gx#stx-null? _%tl3995240120%_)
                          (_%__match4461144612%_
                           _%e3992640228%_
                           _%hd3992740232%_
                           _%tl3992840235%_
                           _%e3992940238%_
                           _%hd3993040242%_
                           _%tl3993140245%_
                           _%e3993240248%_
                           _%hd3993340252%_
                           _%tl3993440255%_
                           _%__splice4455144552%_
                           _%target3995040117%_
                           _%tl3995240120%_)
                          (_%__match4462344624%_
                           _%e3992640228%_
                           _%hd3992740232%_
                           _%tl3992840235%_
                           _%e3992940238%_
                           _%hd3993040242%_
                           _%tl3993140245%_))))
                  (_%__match4462344624%_
                   _%e3992640228%_
                   _%hd3992740232%_
                   _%tl3992840235%_
                   _%e3992940238%_
                   _%hd3993040242%_
                   _%tl3993140245%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl3993440255%_)
                                                      (let ((_%__splice4455144552%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl3993440255%_
                                                              '0)))
                                                        (let ((_%tl3995240120%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4455144552%_ '1)))
                      (_%target3995040117%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4455144552%_ '0))))
                  (if (gx#stx-null? _%tl3995240120%_)
                      (_%__match4461144612%_
                       _%e3992640228%_
                       _%hd3992740232%_
                       _%tl3992840235%_
                       _%e3992940238%_
                       _%hd3993040242%_
                       _%tl3993140245%_
                       _%e3993240248%_
                       _%hd3993340252%_
                       _%tl3993440255%_
                       _%__splice4455144552%_
                       _%target3995040117%_
                       _%tl3995240120%_)
                      (_%__match4462344624%_
                       _%e3992640228%_
                       _%hd3992740232%_
                       _%tl3992840235%_
                       _%e3992940238%_
                       _%hd3993040242%_
                       _%tl3993140245%_))))
              (_%__match4462344624%_
               _%e3992640228%_
               _%hd3992740232%_
               _%tl3992840235%_
               _%e3992940238%_
               _%hd3993040242%_
               _%tl3993140245%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl3993440255%_)
                                              (let ((_%__splice4455144552%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl3993440255%_
                                                      '0)))
                                                (let ((_%tl3995240120%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4455144552%_
                                                          '1)))
                                                      (_%target3995040117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4455144552%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl3995240120%_)
                                                      (_%__match4461144612%_
                                                       _%e3992640228%_
                                                       _%hd3992740232%_
                                                       _%tl3992840235%_
                                                       _%e3992940238%_
                                                       _%hd3993040242%_
                                                       _%tl3993140245%_
                                                       _%e3993240248%_
                                                       _%hd3993340252%_
                                                       _%tl3993440255%_
                                                       _%__splice4455144552%_
                                                       _%target3995040117%_
                                                       _%tl3995240120%_)
                                                      (_%__match4462344624%_
                                                       _%e3992640228%_
                                                       _%hd3992740232%_
                                                       _%tl3992840235%_
                                                       _%e3992940238%_
                                                       _%hd3993040242%_
                                                       _%tl3993140245%_))))
                                              (_%__match4462344624%_
                                               _%e3992640228%_
                                               _%hd3992740232%_
                                               _%tl3992840235%_
                                               _%e3992940238%_
                                               _%hd3993040242%_
                                               _%tl3993140245%_)))))
                                  (_%__match4462344624%_
                                   _%e3992640228%_
                                   _%hd3992740232%_
                                   _%tl3992840235%_
                                   _%e3992940238%_
                                   _%hd3993040242%_
                                   _%tl3993140245%_))))
                          (let () (declare (not safe)) (_%g3992239985%_)))))
                  (let () (declare (not safe)) (_%g3992239985%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40306%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40306%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40309%_)
        (let* ((_%g4031240336%_
                (lambda (_%g4031340332%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4031340332%_)))
               (_%g4031140514%_
                (lambda (_%g4031340340%_)
                  (if (gx#stx-pair? _%g4031340340%_)
                      (let ((_%e4031640343%_ (gx#syntax-e _%g4031340340%_)))
                        (let ((_%hd4031740347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4031640343%_)))
                              (_%tl4031840350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4031640343%_))))
                          (if (gx#stx-pair/null? _%tl4031840350%_)
                              (if (let ((__tmp45017
                                         (gx#stx-length _%tl4031840350%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp45017 '1))
                                  (let ((_g45018_
                                         (gx#syntax-split-splice
                                          _%tl4031840350%_
                                          '1)))
                                    (begin
                                      (let ((_g45019_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45018_)
                                                   (##values-length _g45018_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45019_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45019_)))
                                      (let ((_%target4031940353%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45018_ 0)))
                                            (_%tl4032140356%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45018_ 1))))
                                        (if (gx#stx-pair? _%tl4032140356%_)
                                            (let ((_%e4032840359%_
                                                   (gx#syntax-e
                                                    _%tl4032140356%_)))
                                              (let ((_%hd4032940363%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4032840359%_)))
                                                    (_%tl4033040366%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4032840359%_))))
                                                (if (gx#stx-null?
                                                     _%tl4033040366%_)
                                                    (letrec ((_%loop4032240369%_
                                                              (lambda (_%hd4032040373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4032640376%_)
                        (if (gx#stx-pair? _%hd4032040373%_)
                            (let ((_%e4032340379%_
                                   (gx#syntax-e _%hd4032040373%_)))
                              (let ((_%lp-hd4032440383%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4032340379%_)))
                                    (_%lp-tl4032540386%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4032340379%_))))
                                (_%loop4032240369%_
                                 _%lp-tl4032540386%_
                                 (cons _%lp-hd4032440383%_
                                       _%tgt4032640376%_))))
                            (let ((_%tgt4032740389%_
                                   (reverse _%tgt4032640376%_)))
                              ((lambda (_%L40393%_ _%L40395%_)
                                 (let* ((_%g4041340430%_
                                         (lambda (_%g4041440426%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4041440426%_)))
                                        (_%g4041240502%_
                                         (lambda (_%g4041440434%_)
                                           (if (gx#stx-pair/null?
                                                _%g4041440434%_)
                                               (let ((_g45020_
                                                      (gx#syntax-split-splice
                                                       _%g4041440434%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45021_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45020_)
                        (##values-length _g45020_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45021_ 2)))
                 (error "Context expects 2 values" _g45021_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4041640437%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45020_
                                                             0)))
                                                         (_%tl4041840440%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45020_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4041840440%_)
                                                         (letrec ((_%loop4041940443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4041740447%_ _%$e4042340450%_)
                             (if (gx#stx-pair? _%hd4041740447%_)
                                 (let ((_%e4042040453%_
                                        (gx#syntax-e _%hd4041740447%_)))
                                   (let ((_%lp-hd4042140457%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4042040453%_)))
                                         (_%lp-tl4042240460%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4042040453%_))))
                                     (_%loop4041940443%_
                                      _%lp-tl4042240460%_
                                      (cons _%lp-hd4042140457%_
                                            _%$e4042340450%_))))
                                 (let ((_%$e4042440463%_
                                        (reverse _%$e4042340450%_)))
                                   ((lambda (_%L40467%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4048240488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4048340491%_)
                               (cons _%g4048240488%_ _%g4048340491%_))
                             '()
                             _%L40467%_)
                      (cons _%L40393%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L40467%_
                                                     _%L40395%_)
                                                    (foldr (lambda (_%g4048440494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4048540497%_
                            _%g4048640499%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4048540497%_
                                       (cons _%g4048440494%_ '())))
                           _%g4048640499%_))
                   '()
                   _%L40467%_
                   _%L40395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4042440463%_))))))
                   (_%loop4041940443%_ _%target4041640437%_ '()))
                 (_%g4041340430%_ _%g4041440434%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4041340430%_
                                                _%g4041440434%_)))))
                                   (_%g4041240502%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4050540508%_
                                                     _%g4050640511%_)
                                              (cons _%g4050540508%_
                                                    _%g4050640511%_))
                                            '()
                                            _%L40395%_)))))
                               _%hd4032940363%_
                               _%tgt4032740389%_))))))
              (_%loop4032240369%_ _%target4031940353%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4031240336%_
                                                     _%g4031340340%_))))
                                            (_%g4031240336%_
                                             _%g4031340340%_)))))
                                  (_%g4031240336%_ _%g4031340340%_))
                              (_%g4031240336%_ _%g4031340340%_))))
                      (_%g4031240336%_ _%g4031340340%_)))))
          (_%g4031140514%_ _%stx40309%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx40520%_)
        (let* ((_%__stx4464644647%_ _%$stx40520%_)
               (_%g4052640614%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4464644647%_))))
          (let ((_%__kont4464944650%_
                 (lambda (_%L40962%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4097840981%_ _%g4097940984%_)
                                        (cons _%g4097840981%_ _%g4097940984%_))
                                      '()
                                      _%L40962%_)))))
                (_%__kont4465344654%_
                 (lambda (_%L40870%_ _%L40872%_ _%L40873%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4089640899%_
                                                           _%g4089740902%_)
                                                    (cons _%g4089640899%_
                                                          _%g4089740902%_))
                                                  '()
                                                  _%L40870%_)))
                               (cons _%L40873%_ (cons _%L40872%_ '()))))))
                (_%__kont4465744658%_
                 (lambda (_%L40731%_
                          _%L40733%_
                          _%L40734%_
                          _%L40735%_
                          _%L40736%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%L40736%_
                                                       (cons (foldr (lambda (_%g4076640771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4076740774%_)
                              (cons _%g4076640771%_ _%g4076740774%_))
                            '()
                            _%L40733%_)
                     (foldr (lambda (_%g4076840777%_ _%g4076940780%_)
                              (cons _%g4076840777%_ _%g4076940780%_))
                            '()
                            _%L40731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L40735%_ (cons _%L40734%_ '())))))))
            (let* ((_%__match4476744768%_
                    (lambda (_%e4057640621%_
                             _%hd4057740625%_
                             _%tl4057840628%_
                             _%e4057940631%_
                             _%hd4058040635%_
                             _%tl4058140638%_
                             _%e4058240641%_
                             _%hd4058340645%_
                             _%tl4058440648%_
                             _%e4058540651%_
                             _%hd4058640655%_
                             _%tl4058740658%_
                             _%e4058840661%_
                             _%hd4058940665%_
                             _%tl4059040668%_
                             _%__splice4465944660%_
                             _%target4059140671%_
                             _%tl4059340674%_)
                      (letrec ((_%loop4059440677%_
                                (lambda (_%hd4059240681%_ _%rest4059840684%_)
                                  (if (gx#stx-pair? _%hd4059240681%_)
                                      (let ((_%e4059540687%_
                                             (gx#syntax-e _%hd4059240681%_)))
                                        (let ((_%lp-tl4059740694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4059540687%_)))
                                              (_%lp-hd4059640691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4059540687%_))))
                                          (_%loop4059440677%_
                                           _%lp-tl4059740694%_
                                           (cons _%lp-hd4059640691%_
                                                 _%rest4059840684%_))))
                                      (let ((_%rest4059940697%_
                                             (reverse _%rest4059840684%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4058140638%_)
                                            (let ((_%__splice4466144662%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4058140638%_
                                                    '0)))
                                              (let ((_%tl4060240704%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4466144662%_
                                                        '1)))
                                                    (_%target4060040701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4466144662%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4060240704%_)
                                                    (letrec ((_%loop4060340707%_
                                                              (lambda (_%hd4060140711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4060740714%_)
                        (if (gx#stx-pair? _%hd4060140711%_)
                            (let ((_%e4060440717%_
                                   (gx#syntax-e _%hd4060140711%_)))
                              (let ((_%lp-tl4060640724%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4060440717%_)))
                                    (_%lp-hd4060540721%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4060440717%_))))
                                (_%loop4060340707%_
                                 _%lp-tl4060640724%_
                                 (cons _%lp-hd4060540721%_
                                       _%body4060740714%_))))
                            (let ((_%body4060840727%_
                                   (reverse _%body4060740714%_)))
                              (_%__kont4465744658%_
                               _%body4060840727%_
                               _%rest4059940697%_
                               _%hd4058940665%_
                               _%hd4058640655%_
                               _%hd4057740625%_))))))
              (_%loop4060340707%_ _%target4060040701%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4052640614%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4052640614%_))))))))
                        (_%loop4059440677%_ _%target4059140671%_ '()))))
                   (_%__match4472744728%_
                    (lambda (_%e4054740790%_
                             _%hd4054840794%_
                             _%tl4054940797%_
                             _%e4055040800%_
                             _%hd4055140804%_
                             _%tl4055240807%_
                             _%e4055340810%_
                             _%hd4055440814%_
                             _%tl4055540817%_
                             _%e4055640820%_
                             _%hd4055740824%_
                             _%tl4055840827%_
                             _%e4055940830%_
                             _%hd4056040834%_
                             _%tl4056140837%_
                             _%__splice4465544656%_
                             _%target4056240840%_
                             _%tl4056440843%_)
                      (letrec ((_%loop4056540846%_
                                (lambda (_%hd4056340850%_ _%body4056940853%_)
                                  (if (gx#stx-pair? _%hd4056340850%_)
                                      (let ((_%e4056640856%_
                                             (gx#syntax-e _%hd4056340850%_)))
                                        (let ((_%lp-tl4056840863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4056640856%_)))
                                              (_%lp-hd4056740860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4056640856%_))))
                                          (_%loop4056540846%_
                                           _%lp-tl4056840863%_
                                           (cons _%lp-hd4056740860%_
                                                 _%body4056940853%_))))
                                      (let ((_%body4057040866%_
                                             (reverse _%body4056940853%_)))
                                        (_%__kont4465344654%_
                                         _%body4057040866%_
                                         _%hd4056040834%_
                                         _%hd4055740824%_))))))
                        (_%loop4056540846%_ _%target4056240840%_ '()))))
                   (_%__match4468544686%_
                    (lambda (_%e4052940912%_
                             _%hd4053040916%_
                             _%tl4053140919%_
                             _%e4053240922%_
                             _%hd4053340926%_
                             _%tl4053440929%_
                             _%__splice4465144652%_
                             _%target4053540932%_
                             _%tl4053740935%_)
                      (letrec ((_%loop4053840938%_
                                (lambda (_%hd4053640942%_ _%body4054240945%_)
                                  (if (gx#stx-pair? _%hd4053640942%_)
                                      (let ((_%e4053940948%_
                                             (gx#syntax-e _%hd4053640942%_)))
                                        (let ((_%lp-tl4054140955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4053940948%_)))
                                              (_%lp-hd4054040952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4053940948%_))))
                                          (_%loop4053840938%_
                                           _%lp-tl4054140955%_
                                           (cons _%lp-hd4054040952%_
                                                 _%body4054240945%_))))
                                      (let ((_%body4054340958%_
                                             (reverse _%body4054240945%_)))
                                        (_%__kont4464944650%_
                                         _%body4054340958%_))))))
                        (_%loop4053840938%_ _%target4053540932%_ '())))))
              (if (gx#stx-pair? _%__stx4464644647%_)
                  (let ((_%e4052940912%_ (gx#syntax-e _%__stx4464644647%_)))
                    (let ((_%tl4053140919%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4052940912%_)))
                          (_%hd4053040916%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4052940912%_))))
                      (if (gx#stx-pair? _%tl4053140919%_)
                          (let ((_%e4053240922%_
                                 (gx#syntax-e _%tl4053140919%_)))
                            (let ((_%tl4053440929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4053240922%_)))
                                  (_%hd4053340926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4053240922%_))))
                              (if (gx#stx-null? _%hd4053340926%_)
                                  (if (gx#stx-pair/null? _%tl4053440929%_)
                                      (let ((_%__splice4465144652%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4053440929%_
                                              '0)))
                                        (let ((_%tl4053740935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4465144652%_
                                                  '1)))
                                              (_%target4053540932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4465144652%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4053740935%_)
                                              (_%__match4468544686%_
                                               _%e4052940912%_
                                               _%hd4053040916%_
                                               _%tl4053140919%_
                                               _%e4053240922%_
                                               _%hd4053340926%_
                                               _%tl4053440929%_
                                               _%__splice4465144652%_
                                               _%target4053540932%_
                                               _%tl4053740935%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4052640614%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4052640614%_)))
                                  (if (gx#stx-pair? _%hd4053340926%_)
                                      (let ((_%e4055340810%_
                                             (gx#syntax-e _%hd4053340926%_)))
                                        (let ((_%tl4055540817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4055340810%_)))
                                              (_%hd4055440814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4055340810%_))))
                                          (if (gx#stx-pair? _%hd4055440814%_)
                                              (let ((_%e4055640820%_
                                                     (gx#syntax-e
                                                      _%hd4055440814%_)))
                                                (let ((_%tl4055840827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4055640820%_)))
                                                      (_%hd4055740824%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4055640820%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4055840827%_)
                                                      (let ((_%e4055940830%_
                                                             (gx#syntax-e
                                                              _%tl4055840827%_)))
                                                        (let ((_%tl4056140837%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4055940830%_)))
                      (_%hd4056040834%_
                       (let () (declare (not safe)) (##car _%e4055940830%_))))
                  (if (gx#stx-null? _%tl4056140837%_)
                      (if (gx#stx-null? _%tl4055540817%_)
                          (if (gx#stx-pair/null? _%tl4053440929%_)
                              (let ((_%__splice4465544656%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4053440929%_
                                      '0)))
                                (let ((_%tl4056440843%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4465544656%_
                                          '1)))
                                      (_%target4056240840%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4465544656%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4056440843%_)
                                      (_%__match4472744728%_
                                       _%e4052940912%_
                                       _%hd4053040916%_
                                       _%tl4053140919%_
                                       _%e4053240922%_
                                       _%hd4053340926%_
                                       _%tl4053440929%_
                                       _%e4055340810%_
                                       _%hd4055440814%_
                                       _%tl4055540817%_
                                       _%e4055640820%_
                                       _%hd4055740824%_
                                       _%tl4055840827%_
                                       _%e4055940830%_
                                       _%hd4056040834%_
                                       _%tl4056140837%_
                                       _%__splice4465544656%_
                                       _%target4056240840%_
                                       _%tl4056440843%_)
                                      (if (gx#stx-pair/null? _%tl4055540817%_)
                                          (let ((_%__splice4465944660%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4055540817%_
                                                  '0)))
                                            (let ((_%tl4059340674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4465944660%_
                                                      '1)))
                                                  (_%target4059140671%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4465944660%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4059340674%_)
                                                  (_%__match4476744768%_
                                                   _%e4052940912%_
                                                   _%hd4053040916%_
                                                   _%tl4053140919%_
                                                   _%e4053240922%_
                                                   _%hd4053340926%_
                                                   _%tl4053440929%_
                                                   _%e4055340810%_
                                                   _%hd4055440814%_
                                                   _%tl4055540817%_
                                                   _%e4055640820%_
                                                   _%hd4055740824%_
                                                   _%tl4055840827%_
                                                   _%e4055940830%_
                                                   _%hd4056040834%_
                                                   _%tl4056140837%_
                                                   _%__splice4465944660%_
                                                   _%target4059140671%_
                                                   _%tl4059340674%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4052640614%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4052640614%_))))))
                              (if (gx#stx-pair/null? _%tl4055540817%_)
                                  (let ((_%__splice4465944660%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4055540817%_
                                          '0)))
                                    (let ((_%tl4059340674%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4465944660%_
                                              '1)))
                                          (_%target4059140671%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4465944660%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4059340674%_)
                                          (_%__match4476744768%_
                                           _%e4052940912%_
                                           _%hd4053040916%_
                                           _%tl4053140919%_
                                           _%e4053240922%_
                                           _%hd4053340926%_
                                           _%tl4053440929%_
                                           _%e4055340810%_
                                           _%hd4055440814%_
                                           _%tl4055540817%_
                                           _%e4055640820%_
                                           _%hd4055740824%_
                                           _%tl4055840827%_
                                           _%e4055940830%_
                                           _%hd4056040834%_
                                           _%tl4056140837%_
                                           _%__splice4465944660%_
                                           _%target4059140671%_
                                           _%tl4059340674%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4052640614%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4052640614%_))))
                          (if (gx#stx-pair/null? _%tl4055540817%_)
                              (let ((_%__splice4465944660%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4055540817%_
                                      '0)))
                                (let ((_%tl4059340674%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4465944660%_
                                          '1)))
                                      (_%target4059140671%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4465944660%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4059340674%_)
                                      (_%__match4476744768%_
                                       _%e4052940912%_
                                       _%hd4053040916%_
                                       _%tl4053140919%_
                                       _%e4053240922%_
                                       _%hd4053340926%_
                                       _%tl4053440929%_
                                       _%e4055340810%_
                                       _%hd4055440814%_
                                       _%tl4055540817%_
                                       _%e4055640820%_
                                       _%hd4055740824%_
                                       _%tl4055840827%_
                                       _%e4055940830%_
                                       _%hd4056040834%_
                                       _%tl4056140837%_
                                       _%__splice4465944660%_
                                       _%target4059140671%_
                                       _%tl4059340674%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4052640614%_)))))
                              (let () (declare (not safe)) (_%g4052640614%_))))
                      (let () (declare (not safe)) (_%g4052640614%_)))))
              (let () (declare (not safe)) (_%g4052640614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4052640614%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4052640614%_))))))
                          (let () (declare (not safe)) (_%g4052640614%_)))))
                  (let () (declare (not safe)) (_%g4052640614%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx40995%_)
        (let* ((_%g4099941023%_
                (lambda (_%g4100041019%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4100041019%_)))
               (_%g4099841108%_
                (lambda (_%g4100041027%_)
                  (if (gx#stx-pair? _%g4100041027%_)
                      (let ((_%e4100341030%_ (gx#syntax-e _%g4100041027%_)))
                        (let ((_%hd4100441034%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4100341030%_)))
                              (_%tl4100541037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4100341030%_))))
                          (if (gx#stx-pair? _%tl4100541037%_)
                              (let ((_%e4100641040%_
                                     (gx#syntax-e _%tl4100541037%_)))
                                (let ((_%hd4100741044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4100641040%_)))
                                      (_%tl4100841047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4100641040%_))))
                                  (if (gx#stx-pair/null? _%tl4100841047%_)
                                      (let ((_g45022_
                                             (gx#syntax-split-splice
                                              _%tl4100841047%_
                                              '0)))
                                        (begin
                                          (let ((_g45023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45022_)
                                                       (##values-length
                                                        _g45022_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45023_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45023_)))
                                          (let ((_%target4100941050%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45022_ 0)))
                                                (_%tl4101141053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45022_ 1))))
                                            (if (gx#stx-null? _%tl4101141053%_)
                                                (letrec ((_%loop4101241056%_
                                                          (lambda (_%hd4101041060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4101641063%_)
                    (if (gx#stx-pair? _%hd4101041060%_)
                        (let ((_%e4101341066%_ (gx#syntax-e _%hd4101041060%_)))
                          (let ((_%lp-hd4101441070%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4101341066%_)))
                                (_%lp-tl4101541073%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4101341066%_))))
                            (_%loop4101241056%_
                             _%lp-tl4101541073%_
                             (cons _%lp-hd4101441070%_ _%body4101641063%_))))
                        (let ((_%body4101741076%_
                               (reverse _%body4101641063%_)))
                          ((lambda (_%L41080%_ _%L41082%_)
                             (if (gx#identifier? _%L41082%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%L41082%_ '())
                                                         (foldr (lambda (_%g4109941102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4110041105%_)
                          (cons _%g4109941102%_ _%g4110041105%_))
                        '()
                        _%L41080%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4099941023%_ _%g4100041027%_)))
                           _%body4101741076%_
                           _%hd4100741044%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4101241056%_
                                                   _%target4100941050%_
                                                   '()))
                                                (_%g4099941023%_
                                                 _%g4100041027%_)))))
                                      (_%g4099941023%_ _%g4100041027%_))))
                              (_%g4099941023%_ _%g4100041027%_))))
                      (_%g4099941023%_ _%g4100041027%_)))))
          (_%g4099841108%_ _%$stx40995%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41113%_)
        (let* ((_%g4111741145%_
                (lambda (_%g4111841141%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4111841141%_)))
               (_%g4111641244%_
                (lambda (_%g4111841149%_)
                  (if (gx#stx-pair? _%g4111841149%_)
                      (let ((_%e4112241152%_ (gx#syntax-e _%g4111841149%_)))
                        (let ((_%hd4112341156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4112241152%_)))
                              (_%tl4112441159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4112241152%_))))
                          (if (gx#stx-pair? _%tl4112441159%_)
                              (let ((_%e4112541162%_
                                     (gx#syntax-e _%tl4112441159%_)))
                                (let ((_%hd4112641166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4112541162%_)))
                                      (_%tl4112741169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4112541162%_))))
                                  (if (gx#stx-pair? _%tl4112741169%_)
                                      (let ((_%e4112841172%_
                                             (gx#syntax-e _%tl4112741169%_)))
                                        (let ((_%hd4112941176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4112841172%_)))
                                              (_%tl4113041179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4112841172%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4113041179%_)
                                              (let ((_g45024_
                                                     (gx#syntax-split-splice
                                                      _%tl4113041179%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45024_)
                                                               (##values-length
                                                                _g45024_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45025_ 2)))
                (error "Context expects 2 values" _g45025_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4113141182%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45024_
                                                            0)))
                                                        (_%tl4113341185%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45024_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4113341185%_)
                                                        (letrec ((_%loop4113441188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4113241192%_ _%rest4113841195%_)
                            (if (gx#stx-pair? _%hd4113241192%_)
                                (let ((_%e4113541198%_
                                       (gx#syntax-e _%hd4113241192%_)))
                                  (let ((_%lp-hd4113641202%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4113541198%_)))
                                        (_%lp-tl4113741205%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4113541198%_))))
                                    (_%loop4113441188%_
                                     _%lp-tl4113741205%_
                                     (cons _%lp-hd4113641202%_
                                           _%rest4113841195%_))))
                                (let ((_%rest4113941208%_
                                       (reverse _%rest4113841195%_)))
                                  ((lambda (_%L41212%_ _%L41214%_ _%L41215%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%L41215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L41214%_
                                 (foldr (lambda (_%g4123541238%_
                                                 _%g4123641241%_)
                                          (cons _%g4123541238%_
                                                _%g4123641241%_))
                                        '()
                                        _%L41212%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4113941208%_
                                   _%hd4112941176%_
                                   _%hd4112641166%_))))))
                  (_%loop4113441188%_ _%target4113141182%_ '()))
                (_%g4111741145%_ _%g4111841149%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4111741145%_
                                               _%g4111841149%_))))
                                      (_%g4111741145%_ _%g4111841149%_))))
                              (_%g4111741145%_ _%g4111841149%_))))
                      (_%g4111741145%_ _%g4111841149%_)))))
          (_%g4111641244%_ _%$stx41113%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41249%_)
        (let* ((_%g4125341324%_
                (lambda (_%g4125441320%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4125441320%_)))
               (_%g4125241613%_
                (lambda (_%g4125441328%_)
                  (if (gx#stx-pair? _%g4125441328%_)
                      (let ((_%e4126141331%_ (gx#syntax-e _%g4125441328%_)))
                        (let ((_%hd4126241335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4126141331%_)))
                              (_%tl4126341338%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4126141331%_))))
                          (if (gx#stx-pair? _%tl4126341338%_)
                              (let ((_%e4126441341%_
                                     (gx#syntax-e _%tl4126341338%_)))
                                (let ((_%hd4126541345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4126441341%_)))
                                      (_%tl4126641348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4126441341%_))))
                                  (if (gx#stx-pair/null? _%hd4126541345%_)
                                      (let ((_g45026_
                                             (gx#syntax-split-splice
                                              _%hd4126541345%_
                                              '0)))
                                        (begin
                                          (let ((_g45027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45026_)
                                                       (##values-length
                                                        _g45026_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45027_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45027_)))
                                          (let ((_%target4126741351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45026_ 0)))
                                                (_%tl4126941354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45026_ 1))))
                                            (if (gx#stx-null? _%tl4126941354%_)
                                                (letrec ((_%loop4127041357%_
                                                          (lambda (_%hd4126841361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4127441364%_
                           _%init4127541366%_
                           _%var4127641368%_)
                    (if (gx#stx-pair? _%hd4126841361%_)
                        (let ((_%e4127141371%_ (gx#syntax-e _%hd4126841361%_)))
                          (let ((_%lp-hd4127241375%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4127141371%_)))
                                (_%lp-tl4127341378%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4127141371%_))))
                            (if (gx#stx-pair? _%lp-hd4127241375%_)
                                (let ((_%e4128041381%_
                                       (gx#syntax-e _%lp-hd4127241375%_)))
                                  (let ((_%hd4128141385%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4128041381%_)))
                                        (_%tl4128241388%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4128041381%_))))
                                    (if (gx#stx-pair? _%tl4128241388%_)
                                        (let ((_%e4128341391%_
                                               (gx#syntax-e _%tl4128241388%_)))
                                          (let ((_%hd4128441395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4128341391%_)))
                                                (_%tl4128541398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4128341391%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4128541398%_)
                                                (let ((_g45028_
                                                       (gx#syntax-split-splice
                                                        _%tl4128541398%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45029_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45028_)
                         (##values-length _g45028_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45029_ 2)))
                  (error "Context expects 2 values" _g45029_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4128641401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45028_
                                                              0)))
                                                          (_%tl4128841404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45028_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4128841404%_)
                                                          (letrec ((_%loop4128941407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4128741411%_ _%step4129341414%_)
                              (if (gx#stx-pair? _%hd4128741411%_)
                                  (let ((_%e4129041417%_
                                         (gx#syntax-e _%hd4128741411%_)))
                                    (let ((_%lp-hd4129141421%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4129041417%_)))
                                          (_%lp-tl4129241424%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4129041417%_))))
                                      (_%loop4128941407%_
                                       _%lp-tl4129241424%_
                                       (cons _%lp-hd4129141421%_
                                             _%step4129341414%_))))
                                  (let ((_%step4129441427%_
                                         (reverse _%step4129341414%_)))
                                    (_%loop4127041357%_
                                     _%lp-tl4127341378%_
                                     (cons _%step4129441427%_
                                           _%step4127441364%_)
                                     (cons _%hd4128441395%_ _%init4127541366%_)
                                     (cons _%hd4128141385%_
                                           _%var4127641368%_)))))))
                    (_%loop4128941407%_ _%target4128641401%_ '()))
                  (_%g4125341324%_ _%g4125441328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4125341324%_
                                                 _%g4125441328%_))))
                                        (_%g4125341324%_ _%g4125441328%_))))
                                (_%g4125341324%_ _%g4125441328%_))))
                        (let ((_%step4127741431%_ (reverse _%step4127441364%_))
                              (_%init4127841434%_ (reverse _%init4127541366%_))
                              (_%var4127941436%_ (reverse _%var4127641368%_)))
                          (if (gx#stx-pair? _%tl4126641348%_)
                              (let ((_%e4129541439%_
                                     (gx#syntax-e _%tl4126641348%_)))
                                (let ((_%hd4129641443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4129541439%_)))
                                      (_%tl4129741446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4129541439%_))))
                                  (if (gx#stx-pair? _%hd4129641443%_)
                                      (let ((_%e4129841449%_
                                             (gx#syntax-e _%hd4129641443%_)))
                                        (let ((_%hd4129941453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4129841449%_)))
                                              (_%tl4130041456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4129841449%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4130041456%_)
                                              (let ((_g45030_
                                                     (gx#syntax-split-splice
                                                      _%tl4130041456%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45031_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45030_)
                                                               (##values-length
                                                                _g45030_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45031_ 2)))
                (error "Context expects 2 values" _g45031_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4130141459%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45030_
                                                            0)))
                                                        (_%tl4130341462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45030_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4130341462%_)
                                                        (letrec ((_%loop4130441465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4130241469%_ _%fini4130841472%_)
                            (if (gx#stx-pair? _%hd4130241469%_)
                                (let ((_%e4130541475%_
                                       (gx#syntax-e _%hd4130241469%_)))
                                  (let ((_%lp-hd4130641479%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4130541475%_)))
                                        (_%lp-tl4130741482%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4130541475%_))))
                                    (_%loop4130441465%_
                                     _%lp-tl4130741482%_
                                     (cons _%lp-hd4130641479%_
                                           _%fini4130841472%_))))
                                (let ((_%fini4130941485%_
                                       (reverse _%fini4130841472%_)))
                                  (if (gx#stx-pair/null? _%tl4129741446%_)
                                      (let ((_g45032_
                                             (gx#syntax-split-splice
                                              _%tl4129741446%_
                                              '0)))
                                        (begin
                                          (let ((_g45033_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45032_)
                                                       (##values-length
                                                        _g45032_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45033_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45033_)))
                                          (let ((_%target4131041489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45032_ 0)))
                                                (_%tl4131241492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45032_ 1))))
                                            (if (gx#stx-null? _%tl4131241492%_)
                                                (letrec ((_%loop4131341495%_
                                                          (lambda (_%hd4131141499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4131741502%_)
                    (if (gx#stx-pair? _%hd4131141499%_)
                        (let ((_%e4131441505%_ (gx#syntax-e _%hd4131141499%_)))
                          (let ((_%lp-hd4131541509%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4131441505%_)))
                                (_%lp-tl4131641512%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4131441505%_))))
                            (_%loop4131341495%_
                             _%lp-tl4131641512%_
                             (cons _%lp-hd4131541509%_ _%body4131741502%_))))
                        (let ((_%body4131841515%_
                               (reverse _%body4131741502%_)))
                          ((lambda (_%L41519%_
                                    _%L41521%_
                                    _%L41522%_
                                    _%L41523%_
                                    _%L41524%_
                                    _%L41525%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4155841561%_
                                                  _%g4155941564%_)
                                           (cons _%g4155841561%_
                                                 _%g4155941564%_))
                                         '()
                                         _%L41525%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L41524%_
                                                      _%L41525%_)
                                                     (foldr (lambda (_%g4156641579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4156741582%_
                             _%g4156841584%_)
                      (cons (cons _%g4156741582%_ (cons _%g4156641579%_ '()))
                            _%g4156841584%_))
                    '()
                    _%L41524%_
                    _%L41525%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%L41522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4156941587%_
                                                               _%g4157041590%_)
                                                        (cons _%g4156941587%_
                                                              _%g4157041590%_))
                                                      '()
                                                      _%L41521%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4157141593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4157241596%_)
                      (cons _%g4157141593%_ _%g4157241596%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%L41523%_
                                   _%L41525%_)
                                  (foldr (lambda (_%g4157341599%_
                                                  _%g4157441602%_
                                                  _%g4157541604%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4157441602%_
                                                             (foldr (lambda (_%g4157641607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4157741610%_)
                              (cons _%g4157641607%_ _%g4157741610%_))
                            '()
                            _%g4157341599%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4157541604%_))
                                         '()
                                         _%L41523%_
                                         _%L41525%_)))
                          '())
                    _%L41519%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4125341324%_ _%g4125441328%_)))
                           _%body4131841515%_
                           _%fini4130941485%_
                           _%hd4129941453%_
                           _%step4127741431%_
                           _%init4127841434%_
                           _%var4127941436%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4131341495%_
                                                   _%target4131041489%_
                                                   '()))
                                                (_%g4125341324%_
                                                 _%g4125441328%_)))))
                                      (_%g4125341324%_ _%g4125441328%_)))))))
                  (_%loop4130441465%_ _%target4130141459%_ '()))
                (_%g4125341324%_ _%g4125441328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4125341324%_
                                               _%g4125441328%_))))
                                      (_%g4125341324%_ _%g4125441328%_))))
                              (_%g4125341324%_ _%g4125441328%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4127041357%_
                                                   _%target4126741351%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4125341324%_
                                                 _%g4125441328%_)))))
                                      (_%g4125341324%_ _%g4125441328%_))))
                              (_%g4125341324%_ _%g4125441328%_))))
                      (_%g4125341324%_ _%g4125441328%_)))))
          (_%g4125241613%_ _%$stx41249%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx41621%_)
        (let* ((_%g4162541696%_
                (lambda (_%g4162641692%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4162641692%_)))
               (_%g4162441985%_
                (lambda (_%g4162641700%_)
                  (if (gx#stx-pair? _%g4162641700%_)
                      (let ((_%e4163341703%_ (gx#syntax-e _%g4162641700%_)))
                        (let ((_%hd4163441707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4163341703%_)))
                              (_%tl4163541710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4163341703%_))))
                          (if (gx#stx-pair? _%tl4163541710%_)
                              (let ((_%e4163641713%_
                                     (gx#syntax-e _%tl4163541710%_)))
                                (let ((_%hd4163741717%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4163641713%_)))
                                      (_%tl4163841720%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4163641713%_))))
                                  (if (gx#stx-pair/null? _%hd4163741717%_)
                                      (let ((_g45034_
                                             (gx#syntax-split-splice
                                              _%hd4163741717%_
                                              '0)))
                                        (begin
                                          (let ((_g45035_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45034_)
                                                       (##values-length
                                                        _g45034_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45035_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45035_)))
                                          (let ((_%target4163941723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45034_ 0)))
                                                (_%tl4164141726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45034_ 1))))
                                            (if (gx#stx-null? _%tl4164141726%_)
                                                (letrec ((_%loop4164241729%_
                                                          (lambda (_%hd4164041733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4164641736%_
                           _%init4164741738%_
                           _%var4164841740%_)
                    (if (gx#stx-pair? _%hd4164041733%_)
                        (let ((_%e4164341743%_ (gx#syntax-e _%hd4164041733%_)))
                          (let ((_%lp-hd4164441747%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4164341743%_)))
                                (_%lp-tl4164541750%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4164341743%_))))
                            (if (gx#stx-pair? _%lp-hd4164441747%_)
                                (let ((_%e4165241753%_
                                       (gx#syntax-e _%lp-hd4164441747%_)))
                                  (let ((_%hd4165341757%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4165241753%_)))
                                        (_%tl4165441760%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4165241753%_))))
                                    (if (gx#stx-pair? _%tl4165441760%_)
                                        (let ((_%e4165541763%_
                                               (gx#syntax-e _%tl4165441760%_)))
                                          (let ((_%hd4165641767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4165541763%_)))
                                                (_%tl4165741770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4165541763%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4165741770%_)
                                                (let ((_g45036_
                                                       (gx#syntax-split-splice
                                                        _%tl4165741770%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45037_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45036_)
                         (##values-length _g45036_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45037_ 2)))
                  (error "Context expects 2 values" _g45037_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4165841773%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45036_
                                                              0)))
                                                          (_%tl4166041776%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45036_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4166041776%_)
                                                          (letrec ((_%loop4166141779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4165941783%_ _%step4166541786%_)
                              (if (gx#stx-pair? _%hd4165941783%_)
                                  (let ((_%e4166241789%_
                                         (gx#syntax-e _%hd4165941783%_)))
                                    (let ((_%lp-hd4166341793%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4166241789%_)))
                                          (_%lp-tl4166441796%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4166241789%_))))
                                      (_%loop4166141779%_
                                       _%lp-tl4166441796%_
                                       (cons _%lp-hd4166341793%_
                                             _%step4166541786%_))))
                                  (let ((_%step4166641799%_
                                         (reverse _%step4166541786%_)))
                                    (_%loop4164241729%_
                                     _%lp-tl4164541750%_
                                     (cons _%step4166641799%_
                                           _%step4164641736%_)
                                     (cons _%hd4165641767%_ _%init4164741738%_)
                                     (cons _%hd4165341757%_
                                           _%var4164841740%_)))))))
                    (_%loop4166141779%_ _%target4165841773%_ '()))
                  (_%g4162541696%_ _%g4162641700%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4162541696%_
                                                 _%g4162641700%_))))
                                        (_%g4162541696%_ _%g4162641700%_))))
                                (_%g4162541696%_ _%g4162641700%_))))
                        (let ((_%step4164941803%_ (reverse _%step4164641736%_))
                              (_%init4165041806%_ (reverse _%init4164741738%_))
                              (_%var4165141808%_ (reverse _%var4164841740%_)))
                          (if (gx#stx-pair? _%tl4163841720%_)
                              (let ((_%e4166741811%_
                                     (gx#syntax-e _%tl4163841720%_)))
                                (let ((_%hd4166841815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4166741811%_)))
                                      (_%tl4166941818%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4166741811%_))))
                                  (if (gx#stx-pair? _%hd4166841815%_)
                                      (let ((_%e4167041821%_
                                             (gx#syntax-e _%hd4166841815%_)))
                                        (let ((_%hd4167141825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4167041821%_)))
                                              (_%tl4167241828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4167041821%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4167241828%_)
                                              (let ((_g45038_
                                                     (gx#syntax-split-splice
                                                      _%tl4167241828%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45039_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45038_)
                                                               (##values-length
                                                                _g45038_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45039_ 2)))
                (error "Context expects 2 values" _g45039_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4167341831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45038_
                                                            0)))
                                                        (_%tl4167541834%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45038_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4167541834%_)
                                                        (letrec ((_%loop4167641837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4167441841%_ _%fini4168041844%_)
                            (if (gx#stx-pair? _%hd4167441841%_)
                                (let ((_%e4167741847%_
                                       (gx#syntax-e _%hd4167441841%_)))
                                  (let ((_%lp-hd4167841851%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4167741847%_)))
                                        (_%lp-tl4167941854%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4167741847%_))))
                                    (_%loop4167641837%_
                                     _%lp-tl4167941854%_
                                     (cons _%lp-hd4167841851%_
                                           _%fini4168041844%_))))
                                (let ((_%fini4168141857%_
                                       (reverse _%fini4168041844%_)))
                                  (if (gx#stx-pair/null? _%tl4166941818%_)
                                      (let ((_g45040_
                                             (gx#syntax-split-splice
                                              _%tl4166941818%_
                                              '0)))
                                        (begin
                                          (let ((_g45041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45040_)
                                                       (##values-length
                                                        _g45040_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45041_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45041_)))
                                          (let ((_%target4168241861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45040_ 0)))
                                                (_%tl4168441864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45040_ 1))))
                                            (if (gx#stx-null? _%tl4168441864%_)
                                                (letrec ((_%loop4168541867%_
                                                          (lambda (_%hd4168341871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4168941874%_)
                    (if (gx#stx-pair? _%hd4168341871%_)
                        (let ((_%e4168641877%_ (gx#syntax-e _%hd4168341871%_)))
                          (let ((_%lp-hd4168741881%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4168641877%_)))
                                (_%lp-tl4168841884%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4168641877%_))))
                            (_%loop4168541867%_
                             _%lp-tl4168841884%_
                             (cons _%lp-hd4168741881%_ _%body4168941874%_))))
                        (let ((_%body4169041887%_
                               (reverse _%body4168941874%_)))
                          ((lambda (_%L41891%_
                                    _%L41893%_
                                    _%L41894%_
                                    _%L41895%_
                                    _%L41896%_
                                    _%L41897%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4193041933%_
                                                  _%g4193141936%_)
                                           (cons _%g4193041933%_
                                                 _%g4193141936%_))
                                         '()
                                         _%L41897%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L41896%_
                                                      _%L41897%_)
                                                     (foldr (lambda (_%g4193841951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4193941954%_
                             _%g4194041956%_)
                      (cons (cons _%g4193941954%_ (cons _%g4193841951%_ '()))
                            _%g4194041956%_))
                    '()
                    _%L41896%_
                    _%L41897%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4194141959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4194241962%_)
                    (cons _%g4194141959%_ _%g4194241962%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%L41894%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L41895%_
                                                   _%L41897%_)
                                                  (foldr (lambda (_%g4194341965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4194441968%_
                          _%g4194541970%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4194441968%_
                                     (foldr (lambda (_%g4194641973%_
                                                     _%g4194741976%_)
                                              (cons _%g4194641973%_
                                                    _%g4194741976%_))
                                            '()
                                            _%g4194341965%_)))
                         _%g4194541970%_))
                 '()
                 _%L41895%_
                 _%L41897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4194841979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4194941982%_)
                             (cons _%g4194841979%_ _%g4194941982%_))
                           '()
                           _%L41893%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%L41891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4162541696%_ _%g4162641700%_)))
                           _%body4169041887%_
                           _%fini4168141857%_
                           _%hd4167141825%_
                           _%step4164941803%_
                           _%init4165041806%_
                           _%var4165141808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4168541867%_
                                                   _%target4168241861%_
                                                   '()))
                                                (_%g4162541696%_
                                                 _%g4162641700%_)))))
                                      (_%g4162541696%_ _%g4162641700%_)))))))
                  (_%loop4167641837%_ _%target4167341831%_ '()))
                (_%g4162541696%_ _%g4162641700%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4162541696%_
                                               _%g4162641700%_))))
                                      (_%g4162541696%_ _%g4162641700%_))))
                              (_%g4162541696%_ _%g4162641700%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4164241729%_
                                                   _%target4163941723%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4162541696%_
                                                 _%g4162641700%_)))))
                                      (_%g4162541696%_ _%g4162641700%_))))
                              (_%g4162541696%_ _%g4162641700%_))))
                      (_%g4162541696%_ _%g4162641700%_)))))
          (_%g4162441985%_ _%$stx41621%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx41993%_)
        (let* ((_%g4199742021%_
                (lambda (_%g4199842017%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4199842017%_)))
               (_%g4199642106%_
                (lambda (_%g4199842025%_)
                  (if (gx#stx-pair? _%g4199842025%_)
                      (let ((_%e4200142028%_ (gx#syntax-e _%g4199842025%_)))
                        (let ((_%hd4200242032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4200142028%_)))
                              (_%tl4200342035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4200142028%_))))
                          (if (gx#stx-pair? _%tl4200342035%_)
                              (let ((_%e4200442038%_
                                     (gx#syntax-e _%tl4200342035%_)))
                                (let ((_%hd4200542042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4200442038%_)))
                                      (_%tl4200642045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4200442038%_))))
                                  (if (gx#stx-pair/null? _%tl4200642045%_)
                                      (let ((_g45042_
                                             (gx#syntax-split-splice
                                              _%tl4200642045%_
                                              '0)))
                                        (begin
                                          (let ((_g45043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45042_)
                                                       (##values-length
                                                        _g45042_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45043_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45043_)))
                                          (let ((_%target4200742048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45042_ 0)))
                                                (_%tl4200942051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45042_ 1))))
                                            (if (gx#stx-null? _%tl4200942051%_)
                                                (letrec ((_%loop4201042054%_
                                                          (lambda (_%hd4200842058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4201442061%_)
                    (if (gx#stx-pair? _%hd4200842058%_)
                        (let ((_%e4201142064%_ (gx#syntax-e _%hd4200842058%_)))
                          (let ((_%lp-hd4201242068%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4201142064%_)))
                                (_%lp-tl4201342071%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4201142064%_))))
                            (_%loop4201042054%_
                             _%lp-tl4201342071%_
                             (cons _%lp-hd4201242068%_ _%body4201442061%_))))
                        (let ((_%body4201542074%_
                               (reverse _%body4201442061%_)))
                          ((lambda (_%L42078%_ _%L42080%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%L42080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4209742100%_ _%g4209842103%_)
                                  (cons _%g4209742100%_ _%g4209842103%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%L42078%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4201542074%_
                           _%hd4200542042%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4201042054%_
                                                   _%target4200742048%_
                                                   '()))
                                                (_%g4199742021%_
                                                 _%g4199842025%_)))))
                                      (_%g4199742021%_ _%g4199842025%_))))
                              (_%g4199742021%_ _%g4199842025%_))))
                      (_%g4199742021%_ _%g4199842025%_)))))
          (_%g4199642106%_ _%$stx41993%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42111%_)
        (let* ((_%g4211542139%_
                (lambda (_%g4211642135%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4211642135%_)))
               (_%g4211442224%_
                (lambda (_%g4211642143%_)
                  (if (gx#stx-pair? _%g4211642143%_)
                      (let ((_%e4211942146%_ (gx#syntax-e _%g4211642143%_)))
                        (let ((_%hd4212042150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4211942146%_)))
                              (_%tl4212142153%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4211942146%_))))
                          (if (gx#stx-pair? _%tl4212142153%_)
                              (let ((_%e4212242156%_
                                     (gx#syntax-e _%tl4212142153%_)))
                                (let ((_%hd4212342160%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4212242156%_)))
                                      (_%tl4212442163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4212242156%_))))
                                  (if (gx#stx-pair/null? _%tl4212442163%_)
                                      (let ((_g45044_
                                             (gx#syntax-split-splice
                                              _%tl4212442163%_
                                              '0)))
                                        (begin
                                          (let ((_g45045_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45044_)
                                                       (##values-length
                                                        _g45044_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45045_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45045_)))
                                          (let ((_%target4212542166%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45044_ 0)))
                                                (_%tl4212742169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45044_ 1))))
                                            (if (gx#stx-null? _%tl4212742169%_)
                                                (letrec ((_%loop4212842172%_
                                                          (lambda (_%hd4212642176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4213242179%_)
                    (if (gx#stx-pair? _%hd4212642176%_)
                        (let ((_%e4212942182%_ (gx#syntax-e _%hd4212642176%_)))
                          (let ((_%lp-hd4213042186%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4212942182%_)))
                                (_%lp-tl4213142189%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4212942182%_))))
                            (_%loop4212842172%_
                             _%lp-tl4213142189%_
                             (cons _%lp-hd4213042186%_ _%body4213242179%_))))
                        (let ((_%body4213342192%_
                               (reverse _%body4213242179%_)))
                          ((lambda (_%L42196%_ _%L42198%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%L42198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4221542218%_ _%g4221642221%_)
                                  (cons _%g4221542218%_ _%g4221642221%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%L42196%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4213342192%_
                           _%hd4212342160%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4212842172%_
                                                   _%target4212542166%_
                                                   '()))
                                                (_%g4211542139%_
                                                 _%g4211642143%_)))))
                                      (_%g4211542139%_ _%g4211642143%_))))
                              (_%g4211542139%_ _%g4211642143%_))))
                      (_%g4211542139%_ _%g4211642143%_)))))
          (_%g4211442224%_ _%$stx42111%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42229%_)
        (let ((_%g4223242239%_
               (lambda (_%g4223342235%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4223342235%_))))
          (_%g4223242239%_ _%$stx42229%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42243%_)
        (let ((_%g4224642253%_
               (lambda (_%g4224742249%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4224742249%_))))
          (_%g4224642253%_ _%$stx42243%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42257%_)
        (letrec ((_%generate-thunk42260%_
                  (lambda (_%body43599%_)
                    (if (null? _%body43599%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42257%_)
                        (let* ((_%g4360243619%_
                                (lambda (_%g4360343615%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4360343615%_)))
                               (_%g4360143680%_
                                (lambda (_%g4360343623%_)
                                  (if (gx#stx-pair/null? _%g4360343623%_)
                                      (let ((_g45046_
                                             (gx#syntax-split-splice
                                              _%g4360343623%_
                                              '0)))
                                        (begin
                                          (let ((_g45047_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45046_)
                                                       (##values-length
                                                        _g45046_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45047_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45047_)))
                                          (let ((_%target4360543626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45046_ 0)))
                                                (_%tl4360743629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45046_ 1))))
                                            (if (gx#stx-null? _%tl4360743629%_)
                                                (letrec ((_%loop4360843632%_
                                                          (lambda (_%hd4360643636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4361243639%_)
                    (if (gx#stx-pair? _%hd4360643636%_)
                        (let ((_%e4360943642%_ (gx#syntax-e _%hd4360643636%_)))
                          (let ((_%lp-hd4361043646%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4360943642%_)))
                                (_%lp-tl4361143649%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4360943642%_))))
                            (_%loop4360843632%_
                             _%lp-tl4361143649%_
                             (cons _%lp-hd4361043646%_ _%e4361243639%_))))
                        (let ((_%e4361343652%_ (reverse _%e4361243639%_)))
                          ((lambda (_%L43656%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4367143674%_
                                                         _%g4367243677%_)
                                                  (cons _%g4367143674%_
                                                        _%g4367243677%_))
                                                '()
                                                _%L43656%_))))
                           _%e4361343652%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4360843632%_
                                                   _%target4360543626%_
                                                   '()))
                                                (_%g4360243619%_
                                                 _%g4360343623%_)))))
                                      (_%g4360243619%_ _%g4360343623%_)))))
                          (_%g4360143680%_ (reverse _%body43599%_))))))
                 (_%generate-fini42262%_
                  (lambda (_%thunk43480%_ _%fini43482%_)
                    (let* ((_%g4348443508%_
                            (lambda (_%g4348543504%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4348543504%_)))
                           (_%g4348343595%_
                            (lambda (_%g4348543512%_)
                              (if (gx#stx-pair? _%g4348543512%_)
                                  (let ((_%e4348843515%_
                                         (gx#syntax-e _%g4348543512%_)))
                                    (let ((_%hd4348943519%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4348843515%_)))
                                          (_%tl4349043522%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4348843515%_))))
                                      (if (gx#stx-pair? _%tl4349043522%_)
                                          (let ((_%e4349143525%_
                                                 (gx#syntax-e
                                                  _%tl4349043522%_)))
                                            (let ((_%hd4349243529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4349143525%_)))
                                                  (_%tl4349343532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4349143525%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4349243529%_)
                                                  (let ((_g45048_
                                                         (gx#syntax-split-splice
                                                          _%hd4349243529%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45049_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45048_)
                           (##values-length _g45048_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45049_ 2)))
                    (error "Context expects 2 values" _g45049_)))
              (let ((_%target4349443535%_
                     (let () (declare (not safe)) (##values-ref _g45048_ 0)))
                    (_%tl4349643538%_
                     (let () (declare (not safe)) (##values-ref _g45048_ 1))))
                (if (gx#stx-null? _%tl4349643538%_)
                    (letrec ((_%loop4349743541%_
                              (lambda (_%hd4349543545%_ _%e4350143548%_)
                                (if (gx#stx-pair? _%hd4349543545%_)
                                    (let ((_%e4349843551%_
                                           (gx#syntax-e _%hd4349543545%_)))
                                      (let ((_%lp-hd4349943555%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4349843551%_)))
                                            (_%lp-tl4350043558%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4349843551%_))))
                                        (_%loop4349743541%_
                                         _%lp-tl4350043558%_
                                         (cons _%lp-hd4349943555%_
                                               _%e4350143548%_))))
                                    (let ((_%e4350243561%_
                                           (reverse _%e4350143548%_)))
                                      (if (gx#stx-null? _%tl4349343532%_)
                                          ((lambda (_%L43565%_ _%L43567%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%L43567%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4358643589%_
                                                   _%g4358743592%_)
                                            (cons _%g4358643589%_
                                                  _%g4358743592%_))
                                          '()
                                          _%L43565%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4350243561%_
                                           _%hd4348943519%_)
                                          (_%g4348443508%_
                                           _%g4348543512%_)))))))
                      (_%loop4349743541%_ _%target4349443535%_ '()))
                    (_%g4348443508%_ _%g4348543512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4348443508%_
                                                   _%g4348543512%_))))
                                          (_%g4348443508%_ _%g4348543512%_))))
                                  (_%g4348443508%_ _%g4348543512%_)))))
                      (_%g4348343595%_ (list _%thunk43480%_ _%fini43482%_)))))
                 (_%generate-catch42263%_
                  (lambda (_%handlers42887%_ _%thunk42889%_)
                    (let* ((_%g4289142899%_
                            (lambda (_%g4289242895%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4289242895%_)))
                           (_%g4289043476%_
                            (lambda (_%g4289242903%_)
                              ((lambda (_%L42906%_)
                                 (let _%lp42918%_ ((_%rest42921%_
                                                    _%handlers42887%_)
                                                   (_%clauses42923%_ '()))
                                   (let* ((_%rest4292442932%_ _%rest42921%_)
                                          (_%else4292643065%_
                                           (lambda ()
                                             (let* ((_%g4294442968%_
                                                     (lambda (_%g4294542964%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4294542964%_)))
                                                    (_%g4294343061%_
                                                     (lambda (_%g4294542972%_)
                                                       (if (gx#stx-pair?
                                                            _%g4294542972%_)
                                                           (let ((_%e4294842975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4294542972%_)))
                     (let ((_%hd4294942979%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4294842975%_)))
                           (_%tl4295042982%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4294842975%_))))
                       (if (gx#stx-pair/null? _%hd4294942979%_)
                           (let ((_g45050_
                                  (gx#syntax-split-splice
                                   _%hd4294942979%_
                                   '0)))
                             (begin
                               (let ((_g45051_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g45050_)
                                            (##values-length _g45050_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g45051_ 2)))
                                     (error "Context expects 2 values"
                                            _g45051_)))
                               (let ((_%target4295142985%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45050_ 0)))
                                     (_%tl4295342988%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45050_ 1))))
                                 (if (gx#stx-null? _%tl4295342988%_)
                                     (letrec ((_%loop4295442991%_
                                               (lambda (_%hd4295242995%_
                                                        _%clause4295842998%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4295242995%_)
                                                     (let ((_%e4295543001%_
                                                            (gx#syntax-e
                                                             _%hd4295242995%_)))
                                                       (let ((_%lp-hd4295643005%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4295543001%_)))
                     (_%lp-tl4295743008%_
                      (let () (declare (not safe)) (##cdr _%e4295543001%_))))
                 (_%loop4295442991%_
                  _%lp-tl4295743008%_
                  (cons _%lp-hd4295643005%_ _%clause4295842998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4295943011%_
                                                            (reverse _%clause4295842998%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4295042982%_)
                                                           (let ((_%e4296043015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4295042982%_)))
                     (let ((_%hd4296143019%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4296043015%_)))
                           (_%tl4296243022%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4296043015%_))))
                       (if (gx#stx-null? _%tl4296243022%_)
                           ((lambda (_%L43025%_ _%L43027%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L42906%_ '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4305243055%_ _%g4305343058%_)
                                   (cons _%g4305243055%_ _%g4305343058%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%L42906%_ '()))
                                                   '()))
                                       '())
                                 _%L43027%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%L43025%_ '()))))
                            _%hd4296143019%_
                            _%clause4295943011%_)
                           (_%g4294442968%_ _%g4294542972%_))))
                   (_%g4294442968%_ _%g4294542972%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4295442991%_
                                        _%target4295142985%_
                                        '()))
                                     (_%g4294442968%_ _%g4294542972%_)))))
                           (_%g4294442968%_ _%g4294542972%_))))
                   (_%g4294442968%_ _%g4294542972%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4294343061%_
                                                (list _%clauses42923%_
                                                      _%thunk42889%_)))))
                                          (_%K4292843460%_
                                           (lambda (_%rest43069%_ _%hd43071%_)
                                             (let* ((_%__stx4477044771%_
                                                     _%hd43071%_)
                                                    (_%g4307643146%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4477044771%_))))
                                               (let ((_%__kont4477344774%_
                                                      (lambda (_%L43439%_
                                                               _%L43441%_)
                                                        (_%lp42918%_
                                                         _%rest43069%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%L43441%_ '()))
                                   (cons _%L42906%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%L43439%_ '())))
                       _%clauses42923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4477544776%_
                                                      (lambda (_%L43371%_
                                                               _%L43373%_
                                                               _%L43374%_)
                                                        (_%lp42918%_
                                                         _%rest43069%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%L43374%_ '()))
                                   (cons _%L42906%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%L43373%_
                                                           (cons _%L42906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4339343396%_
                                                               _%g4339443399%_)
                                                        (cons _%g4339343396%_
                                                              _%g4339443399%_))
                                                      '()
                                                      _%L43371%_)))
                                   '()))
                       _%clauses42923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4477944780%_
                                                      (lambda (_%L43277%_
                                                               _%L43279%_)
                                                        (_%lp42918%_
                                                         _%rest43069%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%L43279%_
                                                           (cons _%L42906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4329543298%_
                                                               _%g4329643301%_)
                                                        (cons _%g4329543298%_
                                                              _%g4329643301%_))
                                                      '()
                                                      _%L43277%_)))
                                   '()))
                       _%clauses42923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4478344784%_
                                                      (lambda (_%L43193%_
                                                               _%L43195%_)
                                                        (_%lp42918%_
                                                         _%rest43069%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4321143214%_
                                                         _%g4321243217%_)
                                                  (cons _%g4321143214%_
                                                        _%g4321243217%_))
                                                '()
                                                _%L43193%_))
                                   '()))
                       _%clauses42923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4487544876%_
                                                         (lambda (_%e4312943153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4313043157%_
                          _%tl4313143160%_
                          _%__splice4478544786%_
                          _%target4313243163%_
                          _%tl4313443166%_)
                   (letrec ((_%loop4313543169%_
                             (lambda (_%hd4313343173%_ _%body4313943176%_)
                               (if (gx#stx-pair? _%hd4313343173%_)
                                   (let ((_%e4313643179%_
                                          (gx#syntax-e _%hd4313343173%_)))
                                     (let ((_%lp-tl4313843186%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4313643179%_)))
                                           (_%lp-hd4313743183%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4313643179%_))))
                                       (_%loop4313543169%_
                                        _%lp-tl4313843186%_
                                        (cons _%lp-hd4313743183%_
                                              _%body4313943176%_))))
                                   (let ((_%body4314043189%_
                                          (reverse _%body4313943176%_)))
                                     (let ((_%L43193%_ _%body4314043189%_)
                                           (_%L43195%_ _%hd4313043157%_))
                                       (if (gx#underscore? _%L43195%_)
                                           (_%__kont4478344784%_
                                            _%L43193%_
                                            _%L43195%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4307643146%_)))))))))
                     (_%loop4313543169%_ _%target4313243163%_ '()))))
                (_%__match4486144862%_
                 (lambda (_%e4311243227%_
                          _%hd4311343231%_
                          _%tl4311443234%_
                          _%e4311543237%_
                          _%hd4311643241%_
                          _%tl4311743244%_
                          _%__splice4478144782%_
                          _%target4311843247%_
                          _%tl4312043250%_)
                   (letrec ((_%loop4312143253%_
                             (lambda (_%hd4311943257%_ _%body4312543260%_)
                               (if (gx#stx-pair? _%hd4311943257%_)
                                   (let ((_%e4312243263%_
                                          (gx#syntax-e _%hd4311943257%_)))
                                     (let ((_%lp-tl4312443270%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4312243263%_)))
                                           (_%lp-hd4312343267%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4312243263%_))))
                                       (_%loop4312143253%_
                                        _%lp-tl4312443270%_
                                        (cons _%lp-hd4312343267%_
                                              _%body4312543260%_))))
                                   (let ((_%body4312643273%_
                                          (reverse _%body4312543260%_)))
                                     (let ((_%L43277%_ _%body4312643273%_)
                                           (_%L43279%_ _%hd4311643241%_))
                                       (if (gx#identifier? _%L43279%_)
                                           (_%__kont4477944780%_
                                            _%L43277%_
                                            _%L43279%_)
                                           (_%__match4487544876%_
                                            _%e4311243227%_
                                            _%hd4311343231%_
                                            _%tl4311443234%_
                                            _%__splice4478144782%_
                                            _%target4311843247%_
                                            _%tl4312043250%_))))))))
                     (_%loop4312143253%_ _%target4311843247%_ '()))))
                (_%__match4483944840%_
                 (lambda (_%e4309243311%_
                          _%hd4309343315%_
                          _%tl4309443318%_
                          _%e4309543321%_
                          _%hd4309643325%_
                          _%tl4309743328%_
                          _%e4309843331%_
                          _%hd4309943335%_
                          _%tl4310043338%_
                          _%__splice4477744778%_
                          _%target4310143341%_
                          _%tl4310343344%_)
                   (letrec ((_%loop4310443347%_
                             (lambda (_%hd4310243351%_ _%body4310843354%_)
                               (if (gx#stx-pair? _%hd4310243351%_)
                                   (let ((_%e4310543357%_
                                          (gx#syntax-e _%hd4310243351%_)))
                                     (let ((_%lp-tl4310743364%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4310543357%_)))
                                           (_%lp-hd4310643361%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4310543357%_))))
                                       (_%loop4310443347%_
                                        _%lp-tl4310743364%_
                                        (cons _%lp-hd4310643361%_
                                              _%body4310843354%_))))
                                   (let ((_%body4310943367%_
                                          (reverse _%body4310843354%_)))
                                     (let ((_%L43371%_ _%body4310943367%_)
                                           (_%L43373%_ _%hd4309943335%_)
                                           (_%L43374%_ _%hd4309643325%_))
                                       (if (gx#identifier? _%L43373%_)
                                           (_%__kont4477544776%_
                                            _%L43371%_
                                            _%L43373%_
                                            _%L43374%_)
                                           (_%__match4487544876%_
                                            _%e4309243311%_
                                            _%hd4309343315%_
                                            _%tl4309443318%_
                                            _%__splice4477744778%_
                                            _%target4310143341%_
                                            _%tl4310343344%_))))))))
                     (_%loop4310443347%_ _%target4310143341%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4477044771%_)
                                                       (let ((_%e4308043409%_
                                                              (gx#syntax-e
                                                               _%__stx4477044771%_)))
                                                         (let ((_%tl4308243416%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4308043409%_)))
                       (_%hd4308143413%_
                        (let () (declare (not safe)) (##car _%e4308043409%_))))
                   (if (gx#stx-pair? _%tl4308243416%_)
                       (let ((_%e4308343419%_ (gx#syntax-e _%tl4308243416%_)))
                         (let ((_%tl4308543426%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4308343419%_)))
                               (_%hd4308443423%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4308343419%_))))
                           (if (gx#identifier? _%hd4308443423%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g45052_|
                                    _%hd4308443423%_)
                                   (if (gx#stx-pair? _%tl4308543426%_)
                                       (let ((_%e4308643429%_
                                              (gx#syntax-e _%tl4308543426%_)))
                                         (let ((_%tl4308843436%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4308643429%_)))
                                               (_%hd4308743433%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4308643429%_))))
                                           (if (gx#stx-null? _%tl4308843436%_)
                                               (_%__kont4477344774%_
                                                _%hd4308743433%_
                                                _%hd4308143413%_)
                                               (if (gx#stx-pair?
                                                    _%hd4308143413%_)
                                                   (let ((_%e4309543321%_
                                                          (gx#syntax-e
                                                           _%hd4308143413%_)))
                                                     (let ((_%tl4309743328%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4309543321%_)))
                                                           (_%hd4309643325%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4309543321%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4309743328%_)
                                                           (let ((_%e4309843331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4309743328%_)))
                     (let ((_%tl4310043338%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4309843331%_)))
                           (_%hd4309943335%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4309843331%_))))
                       (if (gx#stx-null? _%tl4310043338%_)
                           (if (gx#stx-pair/null? _%tl4308243416%_)
                               (let ((_%__splice4477744778%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4308243416%_
                                       '0)))
                                 (let ((_%tl4310343344%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4477744778%_
                                           '1)))
                                       (_%target4310143341%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4477744778%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4310343344%_)
                                       (_%__match4483944840%_
                                        _%e4308043409%_
                                        _%hd4308143413%_
                                        _%tl4308243416%_
                                        _%e4309543321%_
                                        _%hd4309643325%_
                                        _%tl4309743328%_
                                        _%e4309843331%_
                                        _%hd4309943335%_
                                        _%tl4310043338%_
                                        _%__splice4477744778%_
                                        _%target4310143341%_
                                        _%tl4310343344%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4307643146%_)))))
                               (let () (declare (not safe)) (_%g4307643146%_)))
                           (if (gx#stx-pair/null? _%tl4308243416%_)
                               (let ((_%__splice4478544786%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4308243416%_
                                       '0)))
                                 (let ((_%tl4313443166%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4478544786%_
                                           '1)))
                                       (_%target4313243163%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4478544786%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4313443166%_)
                                       (_%__match4487544876%_
                                        _%e4308043409%_
                                        _%hd4308143413%_
                                        _%tl4308243416%_
                                        _%__splice4478544786%_
                                        _%target4313243163%_
                                        _%tl4313443166%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4307643146%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4307643146%_))))))
                   (if (gx#stx-null? _%tl4309743328%_)
                       (if (gx#stx-pair/null? _%tl4308243416%_)
                           (let ((_%__splice4478144782%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4308243416%_
                                   '0)))
                             (let ((_%tl4312043250%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4478144782%_
                                       '1)))
                                   (_%target4311843247%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4478144782%_
                                       '0))))
                               (if (gx#stx-null? _%tl4312043250%_)
                                   (_%__match4486144862%_
                                    _%e4308043409%_
                                    _%hd4308143413%_
                                    _%tl4308243416%_
                                    _%e4309543321%_
                                    _%hd4309643325%_
                                    _%tl4309743328%_
                                    _%__splice4478144782%_
                                    _%target4311843247%_
                                    _%tl4312043250%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4307643146%_)))))
                           (let () (declare (not safe)) (_%g4307643146%_)))
                       (if (gx#stx-pair/null? _%tl4308243416%_)
                           (let ((_%__splice4478544786%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4308243416%_
                                   '0)))
                             (let ((_%tl4313443166%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4478544786%_
                                       '1)))
                                   (_%target4313243163%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4478544786%_
                                       '0))))
                               (if (gx#stx-null? _%tl4313443166%_)
                                   (_%__match4487544876%_
                                    _%e4308043409%_
                                    _%hd4308143413%_
                                    _%tl4308243416%_
                                    _%__splice4478544786%_
                                    _%target4313243163%_
                                    _%tl4313443166%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4307643146%_)))))
                           (let () (declare (not safe)) (_%g4307643146%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4308243416%_)
                                                       (let ((_%__splice4478544786%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4308243416%_
                                                               '0)))
                                                         (let ((_%tl4313443166%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4478544786%_ '1)))
                       (_%target4313243163%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4478544786%_ '0))))
                   (if (gx#stx-null? _%tl4313443166%_)
                       (_%__match4487544876%_
                        _%e4308043409%_
                        _%hd4308143413%_
                        _%tl4308243416%_
                        _%__splice4478544786%_
                        _%target4313243163%_
                        _%tl4313443166%_)
                       (let () (declare (not safe)) (_%g4307643146%_)))))
               (let () (declare (not safe)) (_%g4307643146%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4308143413%_)
                                           (let ((_%e4309543321%_
                                                  (gx#syntax-e
                                                   _%hd4308143413%_)))
                                             (let ((_%tl4309743328%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4309543321%_)))
                                                   (_%hd4309643325%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4309543321%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4309743328%_)
                                                   (let ((_%e4309843331%_
                                                          (gx#syntax-e
                                                           _%tl4309743328%_)))
                                                     (let ((_%tl4310043338%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4309843331%_)))
                                                           (_%hd4309943335%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4309843331%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4310043338%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4308243416%_)
                                                               (let ((_%__splice4477744778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4308243416%_
                               '0)))
                         (let ((_%tl4310343344%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4477744778%_ '1)))
                               (_%target4310143341%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4477744778%_ '0))))
                           (if (gx#stx-null? _%tl4310343344%_)
                               (_%__match4483944840%_
                                _%e4308043409%_
                                _%hd4308143413%_
                                _%tl4308243416%_
                                _%e4309543321%_
                                _%hd4309643325%_
                                _%tl4309743328%_
                                _%e4309843331%_
                                _%hd4309943335%_
                                _%tl4310043338%_
                                _%__splice4477744778%_
                                _%target4310143341%_
                                _%tl4310343344%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4307643146%_)))))
                       (let () (declare (not safe)) (_%g4307643146%_)))
                   (if (gx#stx-pair/null? _%tl4308243416%_)
                       (let ((_%__splice4478544786%_
                              (gx#syntax-split-splice->vector
                               _%tl4308243416%_
                               '0)))
                         (let ((_%tl4313443166%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4478544786%_ '1)))
                               (_%target4313243163%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4478544786%_ '0))))
                           (if (gx#stx-null? _%tl4313443166%_)
                               (_%__match4487544876%_
                                _%e4308043409%_
                                _%hd4308143413%_
                                _%tl4308243416%_
                                _%__splice4478544786%_
                                _%target4313243163%_
                                _%tl4313443166%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4307643146%_)))))
                       (let () (declare (not safe)) (_%g4307643146%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4309743328%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4308243416%_)
                                                           (let ((_%__splice4478144782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4308243416%_
                           '0)))
                     (let ((_%tl4312043250%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4478144782%_ '1)))
                           (_%target4311843247%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4478144782%_ '0))))
                       (if (gx#stx-null? _%tl4312043250%_)
                           (_%__match4486144862%_
                            _%e4308043409%_
                            _%hd4308143413%_
                            _%tl4308243416%_
                            _%e4309543321%_
                            _%hd4309643325%_
                            _%tl4309743328%_
                            _%__splice4478144782%_
                            _%target4311843247%_
                            _%tl4312043250%_)
                           (let () (declare (not safe)) (_%g4307643146%_)))))
                   (let () (declare (not safe)) (_%g4307643146%_)))
               (if (gx#stx-pair/null? _%tl4308243416%_)
                   (let ((_%__splice4478544786%_
                          (gx#syntax-split-splice->vector
                           _%tl4308243416%_
                           '0)))
                     (let ((_%tl4313443166%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4478544786%_ '1)))
                           (_%target4313243163%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4478544786%_ '0))))
                       (if (gx#stx-null? _%tl4313443166%_)
                           (_%__match4487544876%_
                            _%e4308043409%_
                            _%hd4308143413%_
                            _%tl4308243416%_
                            _%__splice4478544786%_
                            _%target4313243163%_
                            _%tl4313443166%_)
                           (let () (declare (not safe)) (_%g4307643146%_)))))
                   (let () (declare (not safe)) (_%g4307643146%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4308243416%_)
                                               (let ((_%__splice4478544786%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4308243416%_
                                                       '0)))
                                                 (let ((_%tl4313443166%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4478544786%_
                                                           '1)))
                                                       (_%target4313243163%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4478544786%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4313443166%_)
                                                       (_%__match4487544876%_
                                                        _%e4308043409%_
                                                        _%hd4308143413%_
                                                        _%tl4308243416%_
                                                        _%__splice4478544786%_
                                                        _%target4313243163%_
                                                        _%tl4313443166%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4307643146%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4307643146%_)))))
                                   (if (gx#stx-pair? _%hd4308143413%_)
                                       (let ((_%e4309543321%_
                                              (gx#syntax-e _%hd4308143413%_)))
                                         (let ((_%tl4309743328%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4309543321%_)))
                                               (_%hd4309643325%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4309543321%_))))
                                           (if (gx#stx-pair? _%tl4309743328%_)
                                               (let ((_%e4309843331%_
                                                      (gx#syntax-e
                                                       _%tl4309743328%_)))
                                                 (let ((_%tl4310043338%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4309843331%_)))
                                                       (_%hd4309943335%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4309843331%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4310043338%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4308243416%_)
                                                           (let ((_%__splice4477744778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4308243416%_
                           '0)))
                     (let ((_%tl4310343344%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4477744778%_ '1)))
                           (_%target4310143341%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4477744778%_ '0))))
                       (if (gx#stx-null? _%tl4310343344%_)
                           (_%__match4483944840%_
                            _%e4308043409%_
                            _%hd4308143413%_
                            _%tl4308243416%_
                            _%e4309543321%_
                            _%hd4309643325%_
                            _%tl4309743328%_
                            _%e4309843331%_
                            _%hd4309943335%_
                            _%tl4310043338%_
                            _%__splice4477744778%_
                            _%target4310143341%_
                            _%tl4310343344%_)
                           (let () (declare (not safe)) (_%g4307643146%_)))))
                   (let () (declare (not safe)) (_%g4307643146%_)))
               (if (gx#stx-pair/null? _%tl4308243416%_)
                   (let ((_%__splice4478544786%_
                          (gx#syntax-split-splice->vector
                           _%tl4308243416%_
                           '0)))
                     (let ((_%tl4313443166%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4478544786%_ '1)))
                           (_%target4313243163%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4478544786%_ '0))))
                       (if (gx#stx-null? _%tl4313443166%_)
                           (_%__match4487544876%_
                            _%e4308043409%_
                            _%hd4308143413%_
                            _%tl4308243416%_
                            _%__splice4478544786%_
                            _%target4313243163%_
                            _%tl4313443166%_)
                           (let () (declare (not safe)) (_%g4307643146%_)))))
                   (let () (declare (not safe)) (_%g4307643146%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4309743328%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4308243416%_)
                                                       (let ((_%__splice4478144782%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4308243416%_
                                                               '0)))
                                                         (let ((_%tl4312043250%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4478144782%_ '1)))
                       (_%target4311843247%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4478144782%_ '0))))
                   (if (gx#stx-null? _%tl4312043250%_)
                       (_%__match4486144862%_
                        _%e4308043409%_
                        _%hd4308143413%_
                        _%tl4308243416%_
                        _%e4309543321%_
                        _%hd4309643325%_
                        _%tl4309743328%_
                        _%__splice4478144782%_
                        _%target4311843247%_
                        _%tl4312043250%_)
                       (let () (declare (not safe)) (_%g4307643146%_)))))
               (let () (declare (not safe)) (_%g4307643146%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4308243416%_)
                                                       (let ((_%__splice4478544786%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4308243416%_
                                                               '0)))
                                                         (let ((_%tl4313443166%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4478544786%_ '1)))
                       (_%target4313243163%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4478544786%_ '0))))
                   (if (gx#stx-null? _%tl4313443166%_)
                       (_%__match4487544876%_
                        _%e4308043409%_
                        _%hd4308143413%_
                        _%tl4308243416%_
                        _%__splice4478544786%_
                        _%target4313243163%_
                        _%tl4313443166%_)
                       (let () (declare (not safe)) (_%g4307643146%_)))))
               (let () (declare (not safe)) (_%g4307643146%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4308243416%_)
                                           (let ((_%__splice4478544786%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4308243416%_
                                                   '0)))
                                             (let ((_%tl4313443166%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4478544786%_
                                                       '1)))
                                                   (_%target4313243163%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4478544786%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4313443166%_)
                                                   (_%__match4487544876%_
                                                    _%e4308043409%_
                                                    _%hd4308143413%_
                                                    _%tl4308243416%_
                                                    _%__splice4478544786%_
                                                    _%target4313243163%_
                                                    _%tl4313443166%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4307643146%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4307643146%_)))))
                               (if (gx#stx-pair? _%hd4308143413%_)
                                   (let ((_%e4309543321%_
                                          (gx#syntax-e _%hd4308143413%_)))
                                     (let ((_%tl4309743328%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4309543321%_)))
                                           (_%hd4309643325%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4309543321%_))))
                                       (if (gx#stx-pair? _%tl4309743328%_)
                                           (let ((_%e4309843331%_
                                                  (gx#syntax-e
                                                   _%tl4309743328%_)))
                                             (let ((_%tl4310043338%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4309843331%_)))
                                                   (_%hd4309943335%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4309843331%_))))
                                               (if (gx#stx-null?
                                                    _%tl4310043338%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4308243416%_)
                                                       (let ((_%__splice4477744778%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4308243416%_
                                                               '0)))
                                                         (let ((_%tl4310343344%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4477744778%_ '1)))
                       (_%target4310143341%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4477744778%_ '0))))
                   (if (gx#stx-null? _%tl4310343344%_)
                       (_%__match4483944840%_
                        _%e4308043409%_
                        _%hd4308143413%_
                        _%tl4308243416%_
                        _%e4309543321%_
                        _%hd4309643325%_
                        _%tl4309743328%_
                        _%e4309843331%_
                        _%hd4309943335%_
                        _%tl4310043338%_
                        _%__splice4477744778%_
                        _%target4310143341%_
                        _%tl4310343344%_)
                       (let () (declare (not safe)) (_%g4307643146%_)))))
               (let () (declare (not safe)) (_%g4307643146%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4308243416%_)
                                                       (let ((_%__splice4478544786%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4308243416%_
                                                               '0)))
                                                         (let ((_%tl4313443166%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4478544786%_ '1)))
                       (_%target4313243163%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4478544786%_ '0))))
                   (if (gx#stx-null? _%tl4313443166%_)
                       (_%__match4487544876%_
                        _%e4308043409%_
                        _%hd4308143413%_
                        _%tl4308243416%_
                        _%__splice4478544786%_
                        _%target4313243163%_
                        _%tl4313443166%_)
                       (let () (declare (not safe)) (_%g4307643146%_)))))
               (let () (declare (not safe)) (_%g4307643146%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4309743328%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4308243416%_)
                                                   (let ((_%__splice4478144782%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4308243416%_
                                                           '0)))
                                                     (let ((_%tl4312043250%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4478144782%_
                                                               '1)))
                                                           (_%target4311843247%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4478144782%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4312043250%_)
                                                           (_%__match4486144862%_
                                                            _%e4308043409%_
                                                            _%hd4308143413%_
                                                            _%tl4308243416%_
                                                            _%e4309543321%_
                                                            _%hd4309643325%_
                                                            _%tl4309743328%_
                                                            _%__splice4478144782%_
                                                            _%target4311843247%_
                                                            _%tl4312043250%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4307643146%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4307643146%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4308243416%_)
                                                   (let ((_%__splice4478544786%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4308243416%_
                                                           '0)))
                                                     (let ((_%tl4313443166%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4478544786%_
                                                               '1)))
                                                           (_%target4313243163%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4478544786%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4313443166%_)
                                                           (_%__match4487544876%_
                                                            _%e4308043409%_
                                                            _%hd4308143413%_
                                                            _%tl4308243416%_
                                                            _%__splice4478544786%_
                                                            _%target4313243163%_
                                                            _%tl4313443166%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4307643146%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4307643146%_)))))))
                                   (if (gx#stx-pair/null? _%tl4308243416%_)
                                       (let ((_%__splice4478544786%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4308243416%_
                                               '0)))
                                         (let ((_%tl4313443166%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4478544786%_
                                                   '1)))
                                               (_%target4313243163%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4478544786%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4313443166%_)
                                               (_%__match4487544876%_
                                                _%e4308043409%_
                                                _%hd4308143413%_
                                                _%tl4308243416%_
                                                _%__splice4478544786%_
                                                _%target4313243163%_
                                                _%tl4313443166%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4307643146%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4307643146%_)))))))
                       (if (gx#stx-pair? _%hd4308143413%_)
                           (let ((_%e4309543321%_
                                  (gx#syntax-e _%hd4308143413%_)))
                             (let ((_%tl4309743328%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4309543321%_)))
                                   (_%hd4309643325%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4309543321%_))))
                               (if (gx#stx-pair? _%tl4309743328%_)
                                   (let ((_%e4309843331%_
                                          (gx#syntax-e _%tl4309743328%_)))
                                     (let ((_%tl4310043338%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4309843331%_)))
                                           (_%hd4309943335%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4309843331%_))))
                                       (if (gx#stx-null? _%tl4310043338%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4308243416%_)
                                               (let ((_%__splice4477744778%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4308243416%_
                                                       '0)))
                                                 (let ((_%tl4310343344%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4477744778%_
                                                           '1)))
                                                       (_%target4310143341%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4477744778%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4310343344%_)
                                                       (_%__match4483944840%_
                                                        _%e4308043409%_
                                                        _%hd4308143413%_
                                                        _%tl4308243416%_
                                                        _%e4309543321%_
                                                        _%hd4309643325%_
                                                        _%tl4309743328%_
                                                        _%e4309843331%_
                                                        _%hd4309943335%_
                                                        _%tl4310043338%_
                                                        _%__splice4477744778%_
                                                        _%target4310143341%_
                                                        _%tl4310343344%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4307643146%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4307643146%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4308243416%_)
                                               (let ((_%__splice4478544786%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4308243416%_
                                                       '0)))
                                                 (let ((_%tl4313443166%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4478544786%_
                                                           '1)))
                                                       (_%target4313243163%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4478544786%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4313443166%_)
                                                       (_%__match4487544876%_
                                                        _%e4308043409%_
                                                        _%hd4308143413%_
                                                        _%tl4308243416%_
                                                        _%__splice4478544786%_
                                                        _%target4313243163%_
                                                        _%tl4313443166%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4307643146%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4307643146%_))))))
                                   (if (gx#stx-null? _%tl4309743328%_)
                                       (if (gx#stx-pair/null? _%tl4308243416%_)
                                           (let ((_%__splice4478144782%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4308243416%_
                                                   '0)))
                                             (let ((_%tl4312043250%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4478144782%_
                                                       '1)))
                                                   (_%target4311843247%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4478144782%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4312043250%_)
                                                   (_%__match4486144862%_
                                                    _%e4308043409%_
                                                    _%hd4308143413%_
                                                    _%tl4308243416%_
                                                    _%e4309543321%_
                                                    _%hd4309643325%_
                                                    _%tl4309743328%_
                                                    _%__splice4478144782%_
                                                    _%target4311843247%_
                                                    _%tl4312043250%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4307643146%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4307643146%_)))
                                       (if (gx#stx-pair/null? _%tl4308243416%_)
                                           (let ((_%__splice4478544786%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4308243416%_
                                                   '0)))
                                             (let ((_%tl4313443166%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4478544786%_
                                                       '1)))
                                                   (_%target4313243163%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4478544786%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4313443166%_)
                                                   (_%__match4487544876%_
                                                    _%e4308043409%_
                                                    _%hd4308143413%_
                                                    _%tl4308243416%_
                                                    _%__splice4478544786%_
                                                    _%target4313243163%_
                                                    _%tl4313443166%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4307643146%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4307643146%_)))))))
                           (if (gx#stx-pair/null? _%tl4308243416%_)
                               (let ((_%__splice4478544786%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4308243416%_
                                       '0)))
                                 (let ((_%tl4313443166%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4478544786%_
                                           '1)))
                                       (_%target4313243163%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4478544786%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4313443166%_)
                                       (_%__match4487544876%_
                                        _%e4308043409%_
                                        _%hd4308143413%_
                                        _%tl4308243416%_
                                        _%__splice4478544786%_
                                        _%target4313243163%_
                                        _%tl4313443166%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4307643146%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4307643146%_)))))))
               (let () (declare (not safe)) (_%g4307643146%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4292442932%_)
                                         (let ((_%hd4292943464%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4292442932%_)))
                                               (_%tl4293043467%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4292442932%_))))
                                           (let* ((_%hd43470%_
                                                   _%hd4292943464%_)
                                                  (_%rest43473%_
                                                   _%tl4293043467%_))
                                             (_%K4292843460%_
                                              _%rest43473%_
                                              _%hd43470%_)))
                                         (_%else4292643065%_)))))
                               _%g4289242903%_))))
                      (_%g4289043476%_ (gx#genident))))))
          (let* ((_%g4226542285%_
                  (lambda (_%g4226642281%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4226642281%_)))
                 (_%g4226442883%_
                  (lambda (_%g4226642289%_)
                    (if (gx#stx-pair? _%g4226642289%_)
                        (let ((_%e4226842292%_ (gx#syntax-e _%g4226642289%_)))
                          (let ((_%hd4226942296%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4226842292%_)))
                                (_%tl4227042299%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4226842292%_))))
                            (if (gx#stx-pair/null? _%tl4227042299%_)
                                (let ((_g45053_
                                       (gx#syntax-split-splice
                                        _%tl4227042299%_
                                        '0)))
                                  (begin
                                    (let ((_g45054_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g45053_)
                                                 (##values-length _g45053_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g45054_ 2)))
                                          (error "Context expects 2 values"
                                                 _g45054_)))
                                    (let ((_%target4227142302%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45053_ 0)))
                                          (_%tl4227342305%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45053_ 1))))
                                      (if (gx#stx-null? _%tl4227342305%_)
                                          (letrec ((_%loop4227442308%_
                                                    (lambda (_%hd4227242312%_
                                                             _%e4227842315%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4227242312%_)
                                                          (let ((_%e4227542318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4227242312%_)))
                    (let ((_%lp-hd4227642322%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4227542318%_)))
                          (_%lp-tl4227742325%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4227542318%_))))
                      (_%loop4227442308%_
                       _%lp-tl4227742325%_
                       (cons _%lp-hd4227642322%_ _%e4227842315%_))))
                  (let ((_%e4227942328%_ (reverse _%e4227842315%_)))
                    ((lambda (_%L42332%_)
                       (let _%lp42349%_ ((_%rest42352%_
                                          (foldr (lambda (_%g4287442877%_
                                                          _%g4287542880%_)
                                                   (cons _%g4287442877%_
                                                         _%g4287542880%_))
                                                 '()
                                                 _%L42332%_))
                                         (_%body42354%_ '()))
                         (let* ((_%__stx4499644997%_ _%rest42352%_)
                                (_%g4235742369%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4499644997%_))))
                           (let ((_%__kont4499945000%_
                                  (lambda (_%L42397%_ _%L42399%_)
                                    (let* ((_%__stx4494444945%_ _%L42399%_)
                                           (_%g4241642449%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4494444945%_))))
                                      (let ((_%__kont4494744948%_
                                             (lambda (_%L42844%_)
                                               (if (gx#stx-null? _%L42397%_)
                                                   (_%generate-fini42262%_
                                                    (_%generate-thunk42260%_
                                                     _%body42354%_)
                                                    (foldr (lambda (_%g4285842861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4285942864%_)
                     (cons _%g4285842861%_ _%g4285942864%_))
                   '()
                   _%L42844%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx42257%_))))
                                            (_%__kont4495144952%_
                                             (lambda (_%L42507%_)
                                               (let _%lp42524%_ ((_%rest42527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L42397%_)
                         (_%handlers42529%_
                          (cons (foldr (lambda (_%g4278842791%_
                                                _%g4278942794%_)
                                         (cons _%g4278842791%_
                                               _%g4278942794%_))
                                       '()
                                       _%L42507%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4487844879%_
                                                         _%rest42527%_)
                                                        (_%g4253342573%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4487844879%_))))
                                                   (let ((_%__kont4488144882%_
                                                          (lambda (_%L42758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L42760%_)
                    (_%lp42524%_
                     _%L42758%_
                     (cons (foldr (lambda (_%g4277642779%_ _%g4277742782%_)
                                    (cons _%g4277642779%_ _%g4277742782%_))
                                  '()
                                  _%L42760%_)
                           _%handlers42529%_))))
                 (_%__kont4488544886%_
                  (lambda (_%L42641%_)
                    (let* ((_%g4266242670%_
                            (lambda (_%g4266342666%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4266342666%_)))
                           (_%g4266142697%_
                            (lambda (_%g4266342674%_)
                              ((lambda (_%L42677%_)
                                 (_%generate-fini42262%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%L42677%_ '())))
                                  (foldr (lambda (_%g4268842691%_
                                                  _%g4268942694%_)
                                           (cons _%g4268842691%_
                                                 _%g4268942694%_))
                                         '()
                                         _%L42641%_)))
                               _%g4266342674%_))))
                      (_%g4266142697%_
                       (_%generate-catch42263%_
                        _%handlers42529%_
                        (_%generate-thunk42260%_ _%body42354%_))))))
                 (_%__kont4488944890%_
                  (lambda ()
                    (_%generate-catch42263%_
                     _%handlers42529%_
                     (_%generate-thunk42260%_ _%body42354%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4253242584%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4487844879%_)
                           (_%__kont4488944890%_)
                           (let () (declare (not safe)) (_%g4253342573%_)))))
                    (_%__match4493944940%_
                     (lambda (_%e4255342591%_
                              _%hd4255442595%_
                              _%tl4255542598%_
                              _%e4255642601%_
                              _%hd4255742605%_
                              _%tl4255842608%_
                              _%__splice4488744888%_
                              _%target4255942611%_
                              _%tl4256142614%_)
                       (letrec ((_%loop4256242617%_
                                 (lambda (_%hd4256042621%_ _%fini4256642624%_)
                                   (if (gx#stx-pair? _%hd4256042621%_)
                                       (let ((_%e4256342627%_
                                              (gx#syntax-e _%hd4256042621%_)))
                                         (let ((_%lp-tl4256542634%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4256342627%_)))
                                               (_%lp-hd4256442631%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4256342627%_))))
                                           (_%loop4256242617%_
                                            _%lp-tl4256542634%_
                                            (cons _%lp-hd4256442631%_
                                                  _%fini4256642624%_))))
                                       (let ((_%fini4256742637%_
                                              (reverse _%fini4256642624%_)))
                                         (if (gx#stx-null? _%tl4255542598%_)
                                             (_%__kont4488544886%_
                                              _%fini4256742637%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4253342573%_))))))))
                         (_%loop4256242617%_ _%target4255942611%_ '()))))
                    (_%__match4491544916%_
                     (lambda (_%e4253742708%_
                              _%hd4253842712%_
                              _%tl4253942715%_
                              _%e4254042718%_
                              _%hd4254142722%_
                              _%tl4254242725%_
                              _%__splice4488344884%_
                              _%target4254342728%_
                              _%tl4254542731%_)
                       (letrec ((_%loop4254642734%_
                                 (lambda (_%hd4254442738%_
                                          _%handler4255042741%_)
                                   (if (gx#stx-pair? _%hd4254442738%_)
                                       (let ((_%e4254742744%_
                                              (gx#syntax-e _%hd4254442738%_)))
                                         (let ((_%lp-tl4254942751%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4254742744%_)))
                                               (_%lp-hd4254842748%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4254742744%_))))
                                           (_%loop4254642734%_
                                            _%lp-tl4254942751%_
                                            (cons _%lp-hd4254842748%_
                                                  _%handler4255042741%_))))
                                       (let ((_%handler4255142754%_
                                              (reverse _%handler4255042741%_)))
                                         (_%__kont4488144882%_
                                          _%tl4253942715%_
                                          _%handler4255142754%_))))))
                         (_%loop4254642734%_ _%target4254342728%_ '())))))
               (if (gx#stx-pair? _%__stx4487844879%_)
                   (let ((_%e4253742708%_ (gx#syntax-e _%__stx4487844879%_)))
                     (let ((_%tl4253942715%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4253742708%_)))
                           (_%hd4253842712%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4253742708%_))))
                       (if (gx#stx-pair? _%hd4253842712%_)
                           (let ((_%e4254042718%_
                                  (gx#syntax-e _%hd4253842712%_)))
                             (let ((_%tl4254242725%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4254042718%_)))
                                   (_%hd4254142722%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4254042718%_))))
                               (if (gx#identifier? _%hd4254142722%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g45055_|
                                        _%hd4254142722%_)
                                       (if (gx#stx-pair/null? _%tl4254242725%_)
                                           (let ((_%__splice4488344884%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4254242725%_
                                                   '0)))
                                             (let ((_%tl4254542731%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4488344884%_
                                                       '1)))
                                                   (_%target4254342728%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4488344884%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4254542731%_)
                                                   (_%__match4491544916%_
                                                    _%e4253742708%_
                                                    _%hd4253842712%_
                                                    _%tl4253942715%_
                                                    _%e4254042718%_
                                                    _%hd4254142722%_
                                                    _%tl4254242725%_
                                                    _%__splice4488344884%_
                                                    _%target4254342728%_
                                                    _%tl4254542731%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4253342573%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4253342573%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g45056_|
                                            _%hd4254142722%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4254242725%_)
                                               (let ((_%__splice4488744888%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4254242725%_
                                                       '0)))
                                                 (let ((_%tl4256142614%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4488744888%_
                                                           '1)))
                                                       (_%target4255942611%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4488744888%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4256142614%_)
                                                       (_%__match4493944940%_
                                                        _%e4253742708%_
                                                        _%hd4253842712%_
                                                        _%tl4253942715%_
                                                        _%e4254042718%_
                                                        _%hd4254142722%_
                                                        _%tl4254242725%_
                                                        _%__splice4488744888%_
                                                        _%target4255942611%_
                                                        _%tl4256142614%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4253342573%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4253342573%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4253342573%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4253342573%_)))))
                           (let () (declare (not safe)) (_%g4253342573%_)))))
                   (let () (declare (not safe)) (_%g4253242584%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4495544956%_
                                             (lambda ()
                                               (_%lp42349%_
                                                _%L42397%_
                                                (cons _%L42399%_
                                                      _%body42354%_)))))
                                        (let* ((_%__match4499344994%_
                                                (lambda (_%e4243242467%_
                                                         _%hd4243342471%_
                                                         _%tl4243442474%_
                                                         _%__splice4495344954%_
                                                         _%target4243542477%_
                                                         _%tl4243742480%_)
                                                  (letrec ((_%loop4243842483%_
                                                            (lambda (_%hd4243642487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4244242490%_)
                      (if (gx#stx-pair? _%hd4243642487%_)
                          (let ((_%e4243942493%_
                                 (gx#syntax-e _%hd4243642487%_)))
                            (let ((_%lp-tl4244142500%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4243942493%_)))
                                  (_%lp-hd4244042497%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4243942493%_))))
                              (_%loop4243842483%_
                               _%lp-tl4244142500%_
                               (cons _%lp-hd4244042497%_
                                     _%handler4244242490%_))))
                          (let ((_%handler4244342503%_
                                 (reverse _%handler4244242490%_)))
                            (_%__kont4495144952%_ _%handler4244342503%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4243842483%_
                                                     _%target4243542477%_
                                                     '()))))
                                               (_%__match4497544976%_
                                                (lambda (_%e4241942804%_
                                                         _%hd4242042808%_
                                                         _%tl4242142811%_
                                                         _%__splice4494944950%_
                                                         _%target4242242814%_
                                                         _%tl4242442817%_)
                                                  (letrec ((_%loop4242542820%_
                                                            (lambda (_%hd4242342824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4242942827%_)
                      (if (gx#stx-pair? _%hd4242342824%_)
                          (let ((_%e4242642830%_
                                 (gx#syntax-e _%hd4242342824%_)))
                            (let ((_%lp-tl4242842837%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4242642830%_)))
                                  (_%lp-hd4242742834%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4242642830%_))))
                              (_%loop4242542820%_
                               _%lp-tl4242842837%_
                               (cons _%lp-hd4242742834%_ _%fini4242942827%_))))
                          (let ((_%fini4243042840%_
                                 (reverse _%fini4242942827%_)))
                            (_%__kont4494744948%_ _%fini4243042840%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4242542820%_
                                                     _%target4242242814%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4494444945%_)
                                              (let ((_%e4241942804%_
                                                     (gx#syntax-e
                                                      _%__stx4494444945%_)))
                                                (let ((_%tl4242142811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4241942804%_)))
                                                      (_%hd4242042808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4241942804%_))))
                                                  (if (gx#identifier?
                                                       _%hd4242042808%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g45057_|
                                                           _%hd4242042808%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4242142811%_)
                                                              (let ((_%__splice4494944950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4242142811%_
                              '0)))
                        (let ((_%tl4242442817%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4494944950%_ '1)))
                              (_%target4242242814%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4494944950%_ '0))))
                          (if (gx#stx-null? _%tl4242442817%_)
                              (_%__match4497544976%_
                               _%e4241942804%_
                               _%hd4242042808%_
                               _%tl4242142811%_
                               _%__splice4494944950%_
                               _%target4242242814%_
                               _%tl4242442817%_)
                              (_%__kont4495544956%_))))
                      (_%__kont4495544956%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g45058_|
                       _%hd4242042808%_)
                      (if (gx#stx-pair/null? _%tl4242142811%_)
                          (let ((_%__splice4495344954%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4242142811%_
                                  '0)))
                            (let ((_%tl4243742480%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4495344954%_ '1)))
                                  (_%target4243542477%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4495344954%_
                                      '0))))
                              (if (gx#stx-null? _%tl4243742480%_)
                                  (_%__match4499344994%_
                                   _%e4241942804%_
                                   _%hd4242042808%_
                                   _%tl4242142811%_
                                   _%__splice4495344954%_
                                   _%target4243542477%_
                                   _%tl4243742480%_)
                                  (_%__kont4495544956%_))))
                          (_%__kont4495544956%_))
                      (_%__kont4495544956%_)))
              (_%__kont4495544956%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4495544956%_)))))))
                                 (_%__kont4500145002%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body42354%_)))))
                             (let ((_%g4235642380%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4499644997%_)
                                          (_%__kont4500145002%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4235742369%_))))))
                               (if (gx#stx-pair? _%__stx4499644997%_)
                                   (let ((_%e4236142387%_
                                          (gx#syntax-e _%__stx4499644997%_)))
                                     (let ((_%tl4236342394%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4236142387%_)))
                                           (_%hd4236242391%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4236142387%_))))
                                       (_%__kont4499945000%_
                                        _%tl4236342394%_
                                        _%hd4236242391%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4235642380%_))))))))
                     _%e4227942328%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4227442308%_
                                             _%target4227142302%_
                                             '()))
                                          (_%g4226542285%_ _%g4226642289%_)))))
                                (_%g4226542285%_ _%g4226642289%_))))
                        (_%g4226542285%_ _%g4226642289%_)))))
            (_%g4226442883%_ _%stx42257%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx43695%_)
        (let* ((_%g4369943728%_
                (lambda (_%g4370043724%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4370043724%_)))
               (_%g4369843828%_
                (lambda (_%g4370043732%_)
                  (if (gx#stx-pair? _%g4370043732%_)
                      (let ((_%e4370343735%_ (gx#syntax-e _%g4370043732%_)))
                        (let ((_%hd4370443739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4370343735%_)))
                              (_%tl4370543742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4370343735%_))))
                          (if (gx#stx-pair/null? _%tl4370543742%_)
                              (let ((_g45059_
                                     (gx#syntax-split-splice
                                      _%tl4370543742%_
                                      '0)))
                                (begin
                                  (let ((_g45060_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45059_)
                                               (##values-length _g45059_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45060_ 2)))
                                        (error "Context expects 2 values"
                                               _g45060_)))
                                  (let ((_%target4370643745%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45059_ 0)))
                                        (_%tl4370843748%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45059_ 1))))
                                    (if (gx#stx-null? _%tl4370843748%_)
                                        (letrec ((_%loop4370943751%_
                                                  (lambda (_%hd4370743755%_
                                                           _%val4371343758%_
                                                           _%key4371443760%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4370743755%_)
                                                        (let ((_%e4371043763%_
                                                               (gx#syntax-e
                                                                _%hd4370743755%_)))
                                                          (let ((_%lp-hd4371143767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4371043763%_)))
                        (_%lp-tl4371243770%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4371043763%_))))
                    (if (gx#stx-pair? _%lp-hd4371143767%_)
                        (let ((_%e4371743773%_
                               (gx#syntax-e _%lp-hd4371143767%_)))
                          (let ((_%hd4371843777%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4371743773%_)))
                                (_%tl4371943780%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4371743773%_))))
                            (if (gx#stx-pair? _%tl4371943780%_)
                                (let ((_%e4372043783%_
                                       (gx#syntax-e _%tl4371943780%_)))
                                  (let ((_%hd4372143787%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4372043783%_)))
                                        (_%tl4372243790%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4372043783%_))))
                                    (if (gx#stx-null? _%tl4372243790%_)
                                        (_%loop4370943751%_
                                         _%lp-tl4371243770%_
                                         (cons _%hd4372143787%_
                                               _%val4371343758%_)
                                         (cons _%hd4371843777%_
                                               _%key4371443760%_))
                                        (_%g4369943728%_ _%g4370043732%_))))
                                (_%g4369943728%_ _%g4370043732%_))))
                        (_%g4369943728%_ _%g4370043732%_))))
                (let ((_%val4371543793%_ (reverse _%val4371343758%_))
                      (_%key4371643796%_ (reverse _%key4371443760%_)))
                  ((lambda (_%L43799%_ _%L43801%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L43799%_
                                    _%L43801%_)
                                   (foldr (lambda (_%g4381643820%_
                                                   _%g4381743823%_
                                                   _%g4381843825%_)
                                            (cons (cons _%g4381743823%_
                                                        (cons _%g4381643820%_
                                                              '()))
                                                  _%g4381843825%_))
                                          '()
                                          _%L43799%_
                                          _%L43801%_)))))
                   _%val4371543793%_
                   _%key4371643796%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4370943751%_
                                           _%target4370643745%_
                                           '()
                                           '()))
                                        (_%g4369943728%_ _%g4370043732%_)))))
                              (_%g4369943728%_ _%g4370043732%_))))
                      (_%g4369943728%_ _%g4370043732%_)))))
          (_%g4369843828%_ _%$stx43695%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx43833%_)
        (let* ((_%g4383743866%_
                (lambda (_%g4383843862%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4383843862%_)))
               (_%g4383643966%_
                (lambda (_%g4383843870%_)
                  (if (gx#stx-pair? _%g4383843870%_)
                      (let ((_%e4384143873%_ (gx#syntax-e _%g4383843870%_)))
                        (let ((_%hd4384243877%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4384143873%_)))
                              (_%tl4384343880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4384143873%_))))
                          (if (gx#stx-pair/null? _%tl4384343880%_)
                              (let ((_g45061_
                                     (gx#syntax-split-splice
                                      _%tl4384343880%_
                                      '0)))
                                (begin
                                  (let ((_g45062_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45061_)
                                               (##values-length _g45061_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45062_ 2)))
                                        (error "Context expects 2 values"
                                               _g45062_)))
                                  (let ((_%target4384443883%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45061_ 0)))
                                        (_%tl4384643886%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45061_ 1))))
                                    (if (gx#stx-null? _%tl4384643886%_)
                                        (letrec ((_%loop4384743889%_
                                                  (lambda (_%hd4384543893%_
                                                           _%val4385143896%_
                                                           _%key4385243898%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4384543893%_)
                                                        (let ((_%e4384843901%_
                                                               (gx#syntax-e
                                                                _%hd4384543893%_)))
                                                          (let ((_%lp-hd4384943905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4384843901%_)))
                        (_%lp-tl4385043908%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4384843901%_))))
                    (if (gx#stx-pair? _%lp-hd4384943905%_)
                        (let ((_%e4385543911%_
                               (gx#syntax-e _%lp-hd4384943905%_)))
                          (let ((_%hd4385643915%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4385543911%_)))
                                (_%tl4385743918%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4385543911%_))))
                            (if (gx#stx-pair? _%tl4385743918%_)
                                (let ((_%e4385843921%_
                                       (gx#syntax-e _%tl4385743918%_)))
                                  (let ((_%hd4385943925%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4385843921%_)))
                                        (_%tl4386043928%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4385843921%_))))
                                    (if (gx#stx-null? _%tl4386043928%_)
                                        (_%loop4384743889%_
                                         _%lp-tl4385043908%_
                                         (cons _%hd4385943925%_
                                               _%val4385143896%_)
                                         (cons _%hd4385643915%_
                                               _%key4385243898%_))
                                        (_%g4383743866%_ _%g4383843870%_))))
                                (_%g4383743866%_ _%g4383843870%_))))
                        (_%g4383743866%_ _%g4383843870%_))))
                (let ((_%val4385343931%_ (reverse _%val4385143896%_))
                      (_%key4385443934%_ (reverse _%key4385243898%_)))
                  ((lambda (_%L43937%_ _%L43939%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L43937%_
                                    _%L43939%_)
                                   (foldr (lambda (_%g4395443958%_
                                                   _%g4395543961%_
                                                   _%g4395643963%_)
                                            (cons (cons _%g4395543961%_
                                                        (cons _%g4395443958%_
                                                              '()))
                                                  _%g4395643963%_))
                                          '()
                                          _%L43937%_
                                          _%L43939%_)))))
                   _%val4385343931%_
                   _%key4385443934%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4384743889%_
                                           _%target4384443883%_
                                           '()
                                           '()))
                                        (_%g4383743866%_ _%g4383843870%_)))))
                              (_%g4383743866%_ _%g4383843870%_))))
                      (_%g4383743866%_ _%g4383843870%_)))))
          (_%g4383643966%_ _%$stx43833%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx43971%_)
        (let* ((_%g4397544004%_
                (lambda (_%g4397644000%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4397644000%_)))
               (_%g4397444104%_
                (lambda (_%g4397644008%_)
                  (if (gx#stx-pair? _%g4397644008%_)
                      (let ((_%e4397944011%_ (gx#syntax-e _%g4397644008%_)))
                        (let ((_%hd4398044015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4397944011%_)))
                              (_%tl4398144018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4397944011%_))))
                          (if (gx#stx-pair/null? _%tl4398144018%_)
                              (let ((_g45063_
                                     (gx#syntax-split-splice
                                      _%tl4398144018%_
                                      '0)))
                                (begin
                                  (let ((_g45064_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45063_)
                                               (##values-length _g45063_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45064_ 2)))
                                        (error "Context expects 2 values"
                                               _g45064_)))
                                  (let ((_%target4398244021%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45063_ 0)))
                                        (_%tl4398444024%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45063_ 1))))
                                    (if (gx#stx-null? _%tl4398444024%_)
                                        (letrec ((_%loop4398544027%_
                                                  (lambda (_%hd4398344031%_
                                                           _%val4398944034%_
                                                           _%key4399044036%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4398344031%_)
                                                        (let ((_%e4398644039%_
                                                               (gx#syntax-e
                                                                _%hd4398344031%_)))
                                                          (let ((_%lp-hd4398744043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4398644039%_)))
                        (_%lp-tl4398844046%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4398644039%_))))
                    (if (gx#stx-pair? _%lp-hd4398744043%_)
                        (let ((_%e4399344049%_
                               (gx#syntax-e _%lp-hd4398744043%_)))
                          (let ((_%hd4399444053%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4399344049%_)))
                                (_%tl4399544056%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4399344049%_))))
                            (if (gx#stx-pair? _%tl4399544056%_)
                                (let ((_%e4399644059%_
                                       (gx#syntax-e _%tl4399544056%_)))
                                  (let ((_%hd4399744063%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4399644059%_)))
                                        (_%tl4399844066%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4399644059%_))))
                                    (if (gx#stx-null? _%tl4399844066%_)
                                        (_%loop4398544027%_
                                         _%lp-tl4398844046%_
                                         (cons _%hd4399744063%_
                                               _%val4398944034%_)
                                         (cons _%hd4399444053%_
                                               _%key4399044036%_))
                                        (_%g4397544004%_ _%g4397644008%_))))
                                (_%g4397544004%_ _%g4397644008%_))))
                        (_%g4397544004%_ _%g4397644008%_))))
                (let ((_%val4399144069%_ (reverse _%val4398944034%_))
                      (_%key4399244072%_ (reverse _%key4399044036%_)))
                  ((lambda (_%L44075%_ _%L44077%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L44075%_
                                    _%L44077%_)
                                   (foldr (lambda (_%g4409244096%_
                                                   _%g4409344099%_
                                                   _%g4409444101%_)
                                            (cons (cons _%g4409344099%_
                                                        (cons _%g4409244096%_
                                                              '()))
                                                  _%g4409444101%_))
                                          '()
                                          _%L44075%_
                                          _%L44077%_)))))
                   _%val4399144069%_
                   _%key4399244072%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4398544027%_
                                           _%target4398244021%_
                                           '()
                                           '()))
                                        (_%g4397544004%_ _%g4397644008%_)))))
                              (_%g4397544004%_ _%g4397644008%_))))
                      (_%g4397544004%_ _%g4397644008%_)))))
          (_%g4397444104%_ _%$stx43971%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44109%_)
        (let* ((_%g4411244136%_
                (lambda (_%g4411344132%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4411344132%_)))
               (_%g4411144383%_
                (lambda (_%g4411344140%_)
                  (if (gx#stx-pair? _%g4411344140%_)
                      (let ((_%e4411644143%_ (gx#syntax-e _%g4411344140%_)))
                        (let ((_%hd4411744147%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4411644143%_)))
                              (_%tl4411844150%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4411644143%_))))
                          (if (gx#stx-pair? _%tl4411844150%_)
                              (let ((_%e4411944153%_
                                     (gx#syntax-e _%tl4411844150%_)))
                                (let ((_%hd4412044157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4411944153%_)))
                                      (_%tl4412144160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4411944153%_))))
                                  (if (gx#stx-pair/null? _%tl4412144160%_)
                                      (let ((_g45065_
                                             (gx#syntax-split-splice
                                              _%tl4412144160%_
                                              '0)))
                                        (begin
                                          (let ((_g45066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45065_)
                                                       (##values-length
                                                        _g45065_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45066_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45066_)))
                                          (let ((_%target4412244163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45065_ 0)))
                                                (_%tl4412444166%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45065_ 1))))
                                            (if (gx#stx-null? _%tl4412444166%_)
                                                (letrec ((_%loop4412544169%_
                                                          (lambda (_%hd4412344173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4412944176%_)
                    (if (gx#stx-pair? _%hd4412344173%_)
                        (let ((_%e4412644179%_ (gx#syntax-e _%hd4412344173%_)))
                          (let ((_%lp-hd4412744183%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4412644179%_)))
                                (_%lp-tl4412844186%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4412644179%_))))
                            (_%loop4412544169%_
                             _%lp-tl4412844186%_
                             (cons _%lp-hd4412744183%_ _%entry4412944176%_))))
                        (let ((_%entry4413044189%_
                               (reverse _%entry4412944176%_)))
                          ((lambda (_%L44193%_ _%L44195%_)
                             (let* ((_%g4421344221%_
                                     (lambda (_%g4421444217%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4421444217%_)))
                                    (_%g4421244371%_
                                     (lambda (_%g4421444225%_)
                                       ((lambda (_%L44228%_)
                                          (let* ((_%g4424044266%_
                                                  (lambda (_%g4424144262%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4424144262%_)))
                                                 (_%g4423944359%_
                                                  (lambda (_%g4424144270%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4424144270%_)
                                                        (let ((_g45067_
                                                               (gx#syntax-split-splice
                                                                _%g4424144270%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g45068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g45067_)
                                 (##values-length _g45067_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g45068_ 2)))
                          (error "Context expects 2 values" _g45068_)))
                    (let ((_%target4424444273%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45067_ 0)))
                          (_%tl4424644276%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45067_ 1))))
                      (if (gx#stx-null? _%tl4424644276%_)
                          (letrec ((_%loop4424744279%_
                                    (lambda (_%hd4424544283%_
                                             _%val4425144286%_
                                             _%key4425244288%_)
                                      (if (gx#stx-pair? _%hd4424544283%_)
                                          (let ((_%e4424844291%_
                                                 (gx#syntax-e
                                                  _%hd4424544283%_)))
                                            (let ((_%lp-hd4424944295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4424844291%_)))
                                                  (_%lp-tl4425044298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4424844291%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4424944295%_)
                                                  (let ((_%e4425544301%_
                                                         (gx#syntax-e
                                                          _%lp-hd4424944295%_)))
                                                    (let ((_%hd4425644305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4425544301%_)))
                                                          (_%tl4425744308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4425544301%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4425744308%_)
                                                          (let ((_%e4425844311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4425744308%_)))
                    (let ((_%hd4425944315%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4425844311%_)))
                          (_%tl4426044318%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4425844311%_))))
                      (if (gx#stx-null? _%tl4426044318%_)
                          (_%loop4424744279%_
                           _%lp-tl4425044298%_
                           (cons _%hd4425944315%_ _%val4425144286%_)
                           (cons _%hd4425644305%_ _%key4425244288%_))
                          (_%g4424044266%_ _%g4424144270%_))))
                  (_%g4424044266%_ _%g4424144270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4424044266%_
                                                   _%g4424144270%_))))
                                          (let ((_%val4425344321%_
                                                 (reverse _%val4425144286%_))
                                                (_%key4425444324%_
                                                 (reverse _%key4425244288%_)))
                                            ((lambda (_%L44327%_ _%L44329%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%L44195%_
                                     (cons 'size: (cons _%L44228%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets _%L44327%_ _%L44329%_)
                     (foldr (lambda (_%g4434744351%_
                                     _%g4434844354%_
                                     _%g4434944356%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4434844354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4434744351%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4434944356%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%L44327%_
                            _%L44329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4425344321%_
                                             _%key4425444324%_))))))
                            (_%loop4424744279%_ _%target4424444273%_ '() '()))
                          (_%g4424044266%_ _%g4424144270%_)))))
                (_%g4424044266%_ _%g4424144270%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4423944359%_
                                             (foldr (lambda (_%g4436244365%_
                                                             _%g4436344368%_)
                                                      (cons _%g4436244365%_
                                                            _%g4436344368%_))
                                                    '()
                                                    _%L44193%_))))
                                        _%g4421444225%_))))
                               (_%g4421244371%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4437444377%_
                                                 _%g4437544380%_)
                                          (cons _%g4437444377%_
                                                _%g4437544380%_))
                                        '()
                                        _%L44193%_)))))
                           _%entry4413044189%_
                           _%hd4412044157%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4412544169%_
                                                   _%target4412244163%_
                                                   '()))
                                                (_%g4411244136%_
                                                 _%g4411344140%_)))))
                                      (_%g4411244136%_ _%g4411344140%_))))
                              (_%g4411244136%_ _%g4411344140%_))))
                      (_%g4411244136%_ _%g4411344140%_)))))
          (_%g4411144383%_ _%stx44109%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44389%_)
        (let* ((_%g4439244406%_
                (lambda (_%g4439344402%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4439344402%_)))
               (_%g4439144478%_
                (lambda (_%g4439344410%_)
                  (if (gx#stx-pair? _%g4439344410%_)
                      (let ((_%e4439544413%_ (gx#syntax-e _%g4439344410%_)))
                        (let ((_%hd4439644417%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4439544413%_)))
                              (_%tl4439744420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4439544413%_))))
                          (if (gx#stx-pair? _%tl4439744420%_)
                              (let ((_%e4439844423%_
                                     (gx#syntax-e _%tl4439744420%_)))
                                (let ((_%hd4439944427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4439844423%_)))
                                      (_%tl4440044430%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4439844423%_))))
                                  (if (gx#stx-null? _%tl4440044430%_)
                                      ((lambda (_%L44433%_)
                                         (if (gx#stx-string? _%L44433%_)
                                             (let* ((_%g4444744455%_
                                                     (lambda (_%g4444844451%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4444844451%_)))
                                                    (_%g4444644474%_
                                                     (lambda (_%g4444844459%_)
                                                       ((lambda (_%L44462%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L44462%_ '())))
                _%g4444844459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4444644474%_
                                                (string->bytes
                                                 (gx#stx-e _%L44433%_))))
                                             (_%g4439244406%_
                                              _%g4439344410%_)))
                                       _%hd4439944427%_)
                                      (_%g4439244406%_ _%g4439344410%_))))
                              (_%g4439244406%_ _%g4439344410%_))))
                      (_%g4439244406%_ _%g4439344410%_)))))
          (_%g4439144478%_ _%stx44389%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44482%_)
        (let* ((_%g4448544499%_
                (lambda (_%g4448644495%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4448644495%_)))
               (_%g4448444540%_
                (lambda (_%g4448644503%_)
                  (if (gx#stx-pair? _%g4448644503%_)
                      (let ((_%e4448844506%_ (gx#syntax-e _%g4448644503%_)))
                        (let ((_%hd4448944510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4448844506%_)))
                              (_%tl4449044513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4448844506%_))))
                          (if (gx#stx-pair? _%tl4449044513%_)
                              (let ((_%e4449144516%_
                                     (gx#syntax-e _%tl4449044513%_)))
                                (let ((_%hd4449244520%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4449144516%_)))
                                      (_%tl4449344523%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4449144516%_))))
                                  (if (gx#stx-null? _%tl4449344523%_)
                                      ((lambda (_%L44526%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%L44526%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4449244520%_)
                                      (_%g4448544499%_ _%g4448644503%_))))
                              (_%g4448544499%_ _%g4448644503%_))))
                      (_%g4448544499%_ _%g4448644503%_)))))
          (_%g4448444540%_ _%stx44482%_))))))
