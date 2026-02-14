(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g223389_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g223390_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g223391_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g223392_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g223393_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g223394_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g223395_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g223396_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g223397_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g223398_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g223399_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g223400_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g223401_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g223402_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g223403_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g223416_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g223424_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g223425_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g223426_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g223431_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g223432_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g223433_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g223434_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g223435_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/match[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       'match-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/match[1]#match-macro?|
      (make-class-predicate |gerbil/core/match[1]#match-macro::t|))
    (define |gerbil/core/match[1]#make-match-macro|
      (lambda _%$args218710%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args218710%_)))
    (define |gerbil/core/match[1]#match-macro-macro|
      (make-class-slot-accessor |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#match-macro-macro-set!|
      (make-class-slot-mutator |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#&match-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#&match-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#syntax-local-match-macro?|
      (lambda (_%stx218707%_)
        (if (gx#identifier? _%stx218707%_)
            (let ((__tmp223388 (gx#syntax-local-value _%stx218707%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp223388))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_%stx217009%_ _%match-stx217011%_)
        (letrec ((_%parse1217013%_
                  (lambda (_%hd217372%_)
                    (let* ((_%__stx221176221177%_ _%hd217372%_)
                           (_%g217398217540%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx221176221177%_))))
                      (let ((_%__kont221179221180%_
                             (lambda (_%g217400218470%_ _%g217401218472%_)
                               (let* ((_%__stx221096221097%_ _%g217400218470%_)
                                      (_%g218489218522%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx221096221097%_))))
                                 (let ((_%__kont221099221100%_
                                        (lambda ()
                                          (cons '?:
                                                (cons _%g217401218472%_ '()))))
                                       (_%__kont221101221102%_
                                        (lambda (_%g218491218663%_)
                                          (cons '?:
                                                (cons _%g217401218472%_
                                                      (cons (_%parse1217013%_
                                                             _%g218491218663%_)
                                                            '())))))
                                       (_%__kont221103221104%_
                                        (lambda (_%g218495218633%_)
                                          (cons '?:
                                                (cons _%g217401218472%_
                                                      (cons '=>:
                                                            (cons (_%parse1217013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g218495218633%_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont221105221106%_
                                        (lambda (_%g218502218584%_
                                                 _%g218503218586%_)
                                          (cons '?:
                                                (cons _%g217401218472%_
                                                      (cons '::
                                                            (cons _%g218503218586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (_%parse1217013%_ _%g218502218584%_)
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont221107221108%_
                                        (lambda ()
                                          (_%parse-error217020%_
                                           _%hd217372%_))))
                                   (let ((_%g218485218674%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%__stx221096221097%_)
                                                (let ((_%e218492218653%_
                                                       (gx#syntax-e
                                                        _%__stx221096221097%_)))
                                                  (let ((_%tl218494218660%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e218492218653%_)))
                                                        (_%hd218493218657%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e218492218653%_))))
                                                    (if (gx#stx-null?
                                                         _%tl218494218660%_)
                                                        (_%__kont221101221102%_
                                                         _%hd218493218657%_)
                                                        (if (gx#identifier?
                                                             _%hd218493218657%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g223389_|
                         _%hd218493218657%_)
                        (if (gx#stx-pair? _%tl218494218660%_)
                            (let ((_%e218499218623%_
                                   (gx#syntax-e _%tl218494218660%_)))
                              (let ((_%tl218501218630%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e218499218623%_)))
                                    (_%hd218500218627%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e218499218623%_))))
                                (if (gx#stx-null? _%tl218501218630%_)
                                    (_%__kont221103221104%_ _%hd218500218627%_)
                                    (_%__kont221107221108%_))))
                            (_%__kont221107221108%_))
                        (_%__kont221107221108%_))
                    (if (gx#stx-datum? _%hd218493218657%_)
                        (let ((_%e218507218550%_
                               (gx#stx-e _%hd218493218657%_)))
                          (if (equal? _%e218507218550%_ '::)
                              (if (gx#stx-pair? _%tl218494218660%_)
                                  (let ((_%e218508218554%_
                                         (gx#syntax-e _%tl218494218660%_)))
                                    (let ((_%tl218510218561%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218508218554%_)))
                                          (_%hd218509218558%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218508218554%_))))
                                      (if (gx#stx-pair? _%tl218510218561%_)
                                          (let ((_%e218511218564%_
                                                 (gx#syntax-e
                                                  _%tl218510218561%_)))
                                            (let ((_%tl218513218571%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e218511218564%_)))
                                                  (_%hd218512218568%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e218511218564%_))))
                                              (if (gx#identifier?
                                                   _%hd218512218568%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g223390_|
                                                       _%hd218512218568%_)
                                                      (if (gx#stx-pair?
                                                           _%tl218513218571%_)
                                                          (let ((_%e218514218574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl218513218571%_)))
                    (let ((_%tl218516218581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218514218574%_)))
                          (_%hd218515218578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218514218574%_))))
                      (if (gx#stx-null? _%tl218516218581%_)
                          (_%__kont221105221106%_
                           _%hd218515218578%_
                           _%hd218509218558%_)
                          (_%__kont221107221108%_))))
                  (_%__kont221107221108%_))
              (_%__kont221107221108%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont221107221108%_))))
                                          (_%__kont221107221108%_))))
                                  (_%__kont221107221108%_))
                              (_%__kont221107221108%_)))
                        (_%__kont221107221108%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont221107221108%_)))))
                                     (if (gx#stx-null? _%__stx221096221097%_)
                                         (_%__kont221099221100%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g218485218674%_))))))))
                            (_%__kont221181221182%_
                             (lambda (_%g217408218375%_)
                               (let* ((_%__stx221078221079%_ _%g217408218375%_)
                                      (_%g218387218398%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx221078221079%_))))
                                 (let ((_%__kont221081221082%_
                                        (lambda (_%g218389218426%_)
                                          (_%parse1217013%_
                                           _%g218389218426%_)))
                                       (_%__kont221083221084%_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _%parse1217013%_
                                                 _%g217408218375%_)))))
                                   (if (gx#stx-pair? _%__stx221078221079%_)
                                       (let ((_%e218390218416%_
                                              (gx#syntax-e
                                               _%__stx221078221079%_)))
                                         (let ((_%tl218392218423%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e218390218416%_)))
                                               (_%hd218391218420%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e218390218416%_))))
                                           (if (gx#stx-null?
                                                _%tl218392218423%_)
                                               (_%__kont221081221082%_
                                                _%hd218391218420%_)
                                               (_%__kont221083221084%_))))
                                       (_%__kont221083221084%_))))))
                            (_%__kont221183221184%_
                             (lambda (_%g217412218290%_)
                               (let* ((_%__stx221060221061%_ _%g217412218290%_)
                                      (_%g218302218313%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx221060221061%_))))
                                 (let ((_%__kont221063221064%_
                                        (lambda (_%g218304218341%_)
                                          (_%parse1217013%_
                                           _%g218304218341%_)))
                                       (_%__kont221065221066%_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _%parse1217013%_
                                                 _%g217412218290%_)))))
                                   (if (gx#stx-pair? _%__stx221060221061%_)
                                       (let ((_%e218305218331%_
                                              (gx#syntax-e
                                               _%__stx221060221061%_)))
                                         (let ((_%tl218307218338%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e218305218331%_)))
                                               (_%hd218306218335%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e218305218331%_))))
                                           (if (gx#stx-null?
                                                _%tl218307218338%_)
                                               (_%__kont221063221064%_
                                                _%hd218306218335%_)
                                               (_%__kont221065221066%_))))
                                       (_%__kont221065221066%_))))))
                            (_%__kont221185221186%_
                             (lambda (_%g217416218260%_)
                               (cons 'not:
                                     (cons (_%parse1217013%_ _%g217416218260%_)
                                           '()))))
                            (_%__kont221187221188%_
                             (lambda (_%g217423218216%_ _%g217424218218%_)
                               (cons 'cons:
                                     (cons (_%parse1217013%_ _%g217424218218%_)
                                           (cons (_%parse1217013%_
                                                  _%g217423218216%_)
                                                 '())))))
                            (_%__kont221189221190%_
                             (lambda (_%g217434218160%_
                                      _%g217435218162%_
                                      _%g217436218163%_)
                               (if (gx#stx-null? _%g217434218160%_)
                                   (cons 'cons:
                                         (cons (_%parse1217013%_
                                                _%g217436218163%_)
                                               (cons (_%parse1217013%_
                                                      _%g217435218162%_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_%parse1217013%_
                                                _%g217436218163%_)
                                               (cons (_%parse1217013%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _%g217435218162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g217434218160%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (_%__kont221191221192%_
                             (lambda (_%g217446218112%_)
                               (_%parse-list217015%_ _%g217446218112%_)))
                            (_%__kont221193221194%_
                             (lambda (_%g217450218082%_)
                               (cons 'box:
                                     (cons (_%parse1217013%_ _%g217450218082%_)
                                           '()))))
                            (_%__kont221195221196%_
                             (lambda (_%g217457218045%_)
                               (cons 'box:
                                     (cons (_%parse1217013%_ _%g217457218045%_)
                                           '()))))
                            (_%__kont221197221198%_
                             (lambda (_%g217459218021%_)
                               (_%parse1217013%_ _%g217459218021%_)))
                            (_%__kont221199221200%_
                             (lambda (_%g217466217983%_)
                               (cons 'values:
                                     (cons (_%parse-vector217016%_
                                            _%g217466217983%_)
                                           '()))))
                            (_%__kont221201221202%_
                             (lambda (_%g217470217955%_)
                               (cons 'vector:
                                     (cons (_%parse-vector217016%_
                                            _%g217470217955%_)
                                           '()))))
                            (_%__kont221203221204%_
                             (lambda (_%g217474217916%_)
                               (cons 'vector:
                                     (cons (_%parse-vector217016%_
                                            (foldr (lambda (_%g217929217932%_
                                                            _%g217930217935%_)
                                                     (cons _%g217929217932%_
                                                           _%g217930217935%_))
                                                   '()
                                                   _%g217474217916%_))
                                           '()))))
                            (_%__kont221207221208%_
                             (lambda (_%g217485217864%_ _%g217486217866%_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value
                                            _%g217486217866%_)
                                           (cons (_%parse-vector217016%_
                                                  _%g217485217864%_)
                                                 '())))))
                            (_%__kont221209221210%_
                             (lambda (_%g217490217834%_ _%g217491217836%_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value
                                            _%g217491217836%_)
                                           (cons (_%parse-class-body217018%_
                                                  _%g217490217834%_)
                                                 '())))))
                            (_%__kont221211221212%_
                             (lambda (_%g217495217794%_ _%g217496217796%_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _%g217496217796%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _%g217495217794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (_%__kont221213221214%_
                             (lambda (_%g217503217754%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g217503217754%_) '()))))
                            (_%__kont221215221216%_
                             (lambda (_%g217510217714%_)
                               (_%parse-qq217019%_ _%g217510217714%_)))
                            (_%__kont221217221218%_
                             (lambda (_%g217517217670%_ _%g217518217672%_)
                               (cons 'apply:
                                     (cons _%g217518217672%_
                                           (cons (_%parse1217013%_
                                                  _%g217517217670%_)
                                                 '())))))
                            (_%__kont221219221220%_
                             (lambda (_%g217528217618%_)
                               (_%parse1217013%_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _%g217528217618%_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _%hd217372%_)
                                  (let ((_%$e217629%_
                                         (gx#stx-source _%hd217372%_)))
                                    (if _%$e217629%_
                                        _%$e217629%_
                                        (gx#stx-source _%stx217009%_))))))))
                            (_%__kont221221221222%_
                             (lambda (_%g217532217592%_) (cons 'any: '())))
                            (_%__kont221223221224%_
                             (lambda (_%g217533217576%_)
                               (cons 'var: (cons _%g217533217576%_ '()))))
                            (_%__kont221225221226%_
                             (lambda (_%g217534217558%_)
                               (cons 'datum:
                                     (cons (gx#stx-e _%g217534217558%_) '()))))
                            (_%__kont221227221228%_
                             (lambda () (_%parse-error217020%_ _%hd217372%_))))
                        (let* ((_%g217396217569%_
                                (lambda ()
                                  (let ((_%g217534217558%_
                                         _%__stx221176221177%_))
                                    (if (gx#stx-datum? _%g217534217558%_)
                                        (_%__kont221225221226%_
                                         _%g217534217558%_)
                                        (_%__kont221227221228%_)))))
                               (_%g217395217585%_
                                (lambda ()
                                  (let ((_%g217533217576%_
                                         _%__stx221176221177%_))
                                    (if (and (gx#identifier? _%g217533217576%_)
                                             (not (gx#ellipsis?
                                                   _%g217533217576%_)))
                                        (_%__kont221223221224%_
                                         _%g217533217576%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g217396217569%_))))))
                               (_%g217394217601%_
                                (lambda ()
                                  (let ((_%g217532217592%_
                                         _%__stx221176221177%_))
                                    (if (gx#underscore? _%g217532217592%_)
                                        (_%__kont221221221222%_
                                         _%g217532217592%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g217395217585%_))))))
                               (_%__match221503221504%_
                                (lambda (_%e217529217608%_
                                         _%hd217530217612%_
                                         _%tl217531217615%_)
                                  (let ((_%g217528217618%_ _%hd217530217612%_))
                                    (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                         _%g217528217618%_)
                                        (_%__kont221219221220%_
                                         _%g217528217618%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g217394217601%_))))))
                               (_%__match221437221438%_
                                (lambda (_%e217497217774%_
                                         _%hd217498217778%_
                                         _%tl217499217781%_
                                         _%e217500217784%_
                                         _%hd217501217788%_
                                         _%tl217502217791%_)
                                  (let ((_%g217495217794%_ _%hd217501217788%_)
                                        (_%g217496217796%_ _%hd217498217778%_))
                                    (if (and (gx#identifier? _%g217496217796%_)
                                             (or (gx#free-identifier=?
                                                  _%g217496217796%_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _%g217496217796%_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _%g217496217796%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (_%__kont221211221212%_
                                         _%g217495217794%_
                                         _%g217496217796%_)
                                        (if (gx#identifier? _%hd217498217778%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g223391_|
                                                 _%hd217498217778%_)
                                                (_%__kont221213221214%_
                                                 _%hd217501217788%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g223392_|
                                                     _%hd217498217778%_)
                                                    (_%__kont221215221216%_
                                                     _%hd217501217788%_)
                                                    (_%__match221503221504%_
                                                     _%e217497217774%_
                                                     _%hd217498217778%_
                                                     _%tl217499217781%_)))
                                            (_%__match221503221504%_
                                             _%e217497217774%_
                                             _%hd217498217778%_
                                             _%tl217499217781%_))))))
                               (_%__match221423221424%_
                                (lambda (_%e217492217824%_
                                         _%hd217493217828%_
                                         _%tl217494217831%_)
                                  (let ((_%g217490217834%_ _%tl217494217831%_)
                                        (_%g217491217836%_ _%hd217493217828%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                           _%g217491217836%_))
                                        (_%__kont221209221210%_
                                         _%g217490217834%_
                                         _%g217491217836%_)
                                        (if (gx#stx-pair? _%tl217494217831%_)
                                            (let ((_%e217500217784%_
                                                   (gx#syntax-e
                                                    _%tl217494217831%_)))
                                              (let ((_%tl217502217791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217500217784%_)))
                                                    (_%hd217501217788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217500217784%_))))
                                                (if (gx#stx-null?
                                                     _%tl217502217791%_)
                                                    (_%__match221437221438%_
                                                     _%e217492217824%_
                                                     _%hd217493217828%_
                                                     _%tl217494217831%_
                                                     _%e217500217784%_
                                                     _%hd217501217788%_
                                                     _%tl217502217791%_)
                                                    (if (gx#identifier?
                                                         _%hd217493217828%_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g223391_|
                                                             _%hd217493217828%_)
                                                            (_%__match221503221504%_
                                                             _%e217492217824%_
                                                             _%hd217493217828%_
                                                             _%tl217494217831%_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g223392_|
                         _%hd217493217828%_)
                        (_%__match221503221504%_
                         _%e217492217824%_
                         _%hd217493217828%_
                         _%tl217494217831%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g223393_|
                             _%hd217493217828%_)
                            (if (gx#stx-pair? _%tl217502217791%_)
                                (let ((_%e217525217660%_
                                       (gx#syntax-e _%tl217502217791%_)))
                                  (let ((_%tl217527217667%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217525217660%_)))
                                        (_%hd217526217664%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217525217660%_))))
                                    (if (gx#stx-null? _%tl217527217667%_)
                                        (_%__kont221217221218%_
                                         _%hd217526217664%_
                                         _%hd217501217788%_)
                                        (_%__match221503221504%_
                                         _%e217492217824%_
                                         _%hd217493217828%_
                                         _%tl217494217831%_))))
                                (_%__match221503221504%_
                                 _%e217492217824%_
                                 _%hd217493217828%_
                                 _%tl217494217831%_))
                            (_%__match221503221504%_
                             _%e217492217824%_
                             _%hd217493217828%_
                             _%tl217494217831%_))))
                (_%__match221503221504%_
                 _%e217492217824%_
                 _%hd217493217828%_
                 _%tl217494217831%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__match221503221504%_
                                             _%e217492217824%_
                                             _%hd217493217828%_
                                             _%tl217494217831%_))))))
                               (_%__match221417221418%_
                                (lambda (_%e217487217854%_
                                         _%hd217488217858%_
                                         _%tl217489217861%_)
                                  (let ((_%g217485217864%_ _%tl217489217861%_)
                                        (_%g217486217866%_ _%hd217488217858%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                                           _%g217486217866%_
                                           gerbil/core/mop~MOP-2#!class-type-struct?))
                                        (_%__kont221207221208%_
                                         _%g217485217864%_
                                         _%g217486217866%_)
                                        (_%__match221423221424%_
                                         _%e217487217854%_
                                         _%hd217488217858%_
                                         _%tl217489217861%_)))))
                               (_%__match221411221412%_
                                (lambda (_%e217475217884%_
                                         _%__splice221205221206%_
                                         _%target217476217888%_
                                         _%tl217478217891%_)
                                  (letrec ((_%loop217479217894%_
                                            (lambda (_%hd217477217898%_
                                                     _%body217483217901%_)
                                              (if (gx#stx-pair?
                                                   _%hd217477217898%_)
                                                  (let ((_%e217480217903%_
                                                         (gx#syntax-e
                                                          _%hd217477217898%_)))
                                                    (let ((_%lp-tl217482217910%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e217480217903%_)))
                                                          (_%lp-hd217481217907%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e217480217903%_))))
                                                      (_%loop217479217894%_
                                                       _%lp-tl217482217910%_
                                                       (cons _%lp-hd217481217907%_
                                                             _%body217483217901%_))))
                                                  (let ((_%body217484217913%_
                                                         (reverse _%body217483217901%_)))
                                                    (_%__kont221203221204%_
                                                     _%body217484217913%_))))))
                                    (_%loop217479217894%_
                                     _%target217476217888%_
                                     '()))))
                               (_%g217386217938%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx221176221177%_)
                                      (let ((_%e217475217884%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx221176221177%_))))
                                        (if (gx#stx-pair/null?
                                             _%e217475217884%_)
                                            (let ((_%__splice221205221206%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e217475217884%_
                                                    '0)))
                                              (let ((_%tl217478217891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice221205221206%_
                                                        '1)))
                                                    (_%target217476217888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice221205221206%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl217478217891%_)
                                                    (_%__match221411221412%_
                                                     _%e217475217884%_
                                                     _%__splice221205221206%_
                                                     _%target217476217888%_
                                                     _%tl217478217891%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g217394217601%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g217394217601%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217394217601%_)))))
                               (_%g217382218055%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx221176221177%_)
                                      (let ((_%e217458218041%_
                                             (unbox (gx#syntax-e
                                                     _%__stx221176221177%_))))
                                        (_%__kont221195221196%_
                                         _%e217458218041%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%g217386217938%_)))))
                               (_%__match221265221266%_
                                (lambda (_%e217413218280%_
                                         _%hd217414218284%_
                                         _%tl217415218287%_)
                                  (let ((_%g217412218290%_ _%tl217415218287%_))
                                    (if (gx#stx-list? _%g217412218290%_)
                                        (_%__kont221183221184%_
                                         _%g217412218290%_)
                                        (_%__match221417221418%_
                                         _%e217413218280%_
                                         _%hd217414218284%_
                                         _%tl217415218287%_)))))
                               (_%__match221255221256%_
                                (lambda (_%e217409218365%_
                                         _%hd217410218369%_
                                         _%tl217411218372%_)
                                  (let ((_%g217408218375%_ _%tl217411218372%_))
                                    (if (gx#stx-list? _%g217408218375%_)
                                        (_%__kont221181221182%_
                                         _%g217408218375%_)
                                        (_%__match221417221418%_
                                         _%e217409218365%_
                                         _%hd217410218369%_
                                         _%tl217411218372%_))))))
                          (if (gx#stx-pair? _%__stx221176221177%_)
                              (let ((_%e217402218450%_
                                     (gx#syntax-e _%__stx221176221177%_)))
                                (let ((_%tl217404218457%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217402218450%_)))
                                      (_%hd217403218454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217402218450%_))))
                                  (if (gx#identifier? _%hd217403218454%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g223394_|
                                           _%hd217403218454%_)
                                          (if (gx#stx-pair? _%tl217404218457%_)
                                              (let ((_%e217405218460%_
                                                     (gx#syntax-e
                                                      _%tl217404218457%_)))
                                                (let ((_%tl217407218467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e217405218460%_)))
                                                      (_%hd217406218464%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e217405218460%_))))
                                                  (_%__kont221179221180%_
                                                   _%tl217407218467%_
                                                   _%hd217406218464%_)))
                                              (_%__match221417221418%_
                                               _%e217402218450%_
                                               _%hd217403218454%_
                                               _%tl217404218457%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g223395_|
                                               _%hd217403218454%_)
                                              (_%__match221255221256%_
                                               _%e217402218450%_
                                               _%hd217403218454%_
                                               _%tl217404218457%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g223396_|
                                                   _%hd217403218454%_)
                                                  (_%__match221265221266%_
                                                   _%e217402218450%_
                                                   _%hd217403218454%_
                                                   _%tl217404218457%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g223397_|
                                                       _%hd217403218454%_)
                                                      (if (gx#stx-pair?
                                                           _%tl217404218457%_)
                                                          (let ((_%e217420218250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl217404218457%_)))
                    (let ((_%tl217422218257%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e217420218250%_)))
                          (_%hd217421218254%_
                           (let ()
                             (declare (not safe))
                             (##car _%e217420218250%_))))
                      (if (gx#stx-null? _%tl217422218257%_)
                          (_%__kont221185221186%_ _%hd217421218254%_)
                          (_%__match221417221418%_
                           _%e217402218450%_
                           _%hd217403218454%_
                           _%tl217404218457%_))))
                  (_%__match221417221418%_
                   _%e217402218450%_
                   _%hd217403218454%_
                   _%tl217404218457%_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g223398_|
                   _%hd217403218454%_)
                  (if (gx#stx-pair? _%tl217404218457%_)
                      (let ((_%e217428218196%_
                             (gx#syntax-e _%tl217404218457%_)))
                        (let ((_%tl217430218203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217428218196%_)))
                              (_%hd217429218200%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217428218196%_))))
                          (if (gx#stx-pair? _%tl217430218203%_)
                              (let ((_%e217431218206%_
                                     (gx#syntax-e _%tl217430218203%_)))
                                (let ((_%tl217433218213%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217431218206%_)))
                                      (_%hd217432218210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217431218206%_))))
                                  (if (gx#stx-null? _%tl217433218213%_)
                                      (_%__kont221187221188%_
                                       _%hd217432218210%_
                                       _%hd217429218200%_)
                                      (_%__match221417221418%_
                                       _%e217402218450%_
                                       _%hd217403218454%_
                                       _%tl217404218457%_))))
                              (_%__match221417221418%_
                               _%e217402218450%_
                               _%hd217403218454%_
                               _%tl217404218457%_))))
                      (_%__match221417221418%_
                       _%e217402218450%_
                       _%hd217403218454%_
                       _%tl217404218457%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g223399_|
                       _%hd217403218454%_)
                      (if (gx#stx-pair? _%tl217404218457%_)
                          (let ((_%e217440218140%_
                                 (gx#syntax-e _%tl217404218457%_)))
                            (let ((_%tl217442218147%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217440218140%_)))
                                  (_%hd217441218144%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217440218140%_))))
                              (if (gx#stx-pair? _%tl217442218147%_)
                                  (let ((_%e217443218150%_
                                         (gx#syntax-e _%tl217442218147%_)))
                                    (let ((_%tl217445218157%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217443218150%_)))
                                          (_%hd217444218154%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217443218150%_))))
                                      (_%__kont221189221190%_
                                       _%tl217445218157%_
                                       _%hd217444218154%_
                                       _%hd217441218144%_)))
                                  (_%__match221417221418%_
                                   _%e217402218450%_
                                   _%hd217403218454%_
                                   _%tl217404218457%_))))
                          (_%__match221417221418%_
                           _%e217402218450%_
                           _%hd217403218454%_
                           _%tl217404218457%_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g223400_|
                           _%hd217403218454%_)
                          (_%__kont221191221192%_ _%tl217404218457%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g223401_|
                               _%hd217403218454%_)
                              (if (gx#stx-pair? _%tl217404218457%_)
                                  (let ((_%e217454218072%_
                                         (gx#syntax-e _%tl217404218457%_)))
                                    (let ((_%tl217456218079%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217454218072%_)))
                                          (_%hd217455218076%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217454218072%_))))
                                      (if (gx#stx-null? _%tl217456218079%_)
                                          (_%__kont221193221194%_
                                           _%hd217455218076%_)
                                          (_%__match221417221418%_
                                           _%e217402218450%_
                                           _%hd217403218454%_
                                           _%tl217404218457%_))))
                                  (_%__match221417221418%_
                                   _%e217402218450%_
                                   _%hd217403218454%_
                                   _%tl217404218457%_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g223402_|
                                   _%hd217403218454%_)
                                  (if (gx#stx-pair? _%tl217404218457%_)
                                      (let ((_%e217463218011%_
                                             (gx#syntax-e _%tl217404218457%_)))
                                        (let ((_%tl217465218018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e217463218011%_)))
                                              (_%hd217464218015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e217463218011%_))))
                                          (if (gx#stx-null? _%tl217465218018%_)
                                              (_%__kont221197221198%_
                                               _%hd217464218015%_)
                                              (_%__kont221199221200%_
                                               _%tl217404218457%_))))
                                      (_%__kont221199221200%_
                                       _%tl217404218457%_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g223403_|
                                       _%hd217403218454%_)
                                      (_%__kont221201221202%_
                                       _%tl217404218457%_)
                                      (_%__match221417221418%_
                                       _%e217402218450%_
                                       _%hd217403218454%_
                                       _%tl217404218457%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%__match221417221418%_
                                       _%e217402218450%_
                                       _%hd217403218454%_
                                       _%tl217404218457%_))))
                              (let ()
                                (declare (not safe))
                                (_%g217382218055%_))))))))
                 (_%parse-list217015%_
                  (lambda (_%body217195%_)
                    (let* ((_%__stx221506221507%_ _%body217195%_)
                           (_%g217201217230%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx221506221507%_))))
                      (let ((_%__kont221509221510%_
                             (lambda (_%g217203217354%_)
                               (_%parse1217013%_ _%g217203217354%_)))
                            (_%__kont221511221512%_
                             (lambda (_%g217211217306%_
                                      _%g217212217308%_
                                      _%g217213217309%_)
                               (cons 'splice:
                                     (cons (_%parse1217013%_ _%g217213217309%_)
                                           (cons (_%parse-list217015%_
                                                  _%g217211217306%_)
                                                 '())))))
                            (_%__kont221513221514%_
                             (lambda (_%g217220217264%_ _%g217221217266%_)
                               (cons 'cons:
                                     (cons (_%parse1217013%_ _%g217221217266%_)
                                           (cons (_%parse-list217015%_
                                                  _%g217220217264%_)
                                                 '())))))
                            (_%__kont221515221516%_
                             (lambda ()
                               (if (gx#stx-null? _%body217195%_)
                                   (cons 'null: '())
                                   (if (gx#stx-pair? _%body217195%_)
                                       (_%parse-error217020%_ _%body217195%_)
                                       (_%parse1217013%_ _%body217195%_))))))
                        (let* ((_%__match221555221556%_
                                (lambda (_%e217222217254%_
                                         _%hd217223217258%_
                                         _%tl217224217261%_)
                                  (let ((_%g217220217264%_ _%tl217224217261%_)
                                        (_%g217221217266%_ _%hd217223217258%_))
                                    (if (gx#ellipsis? _%g217221217266%_)
                                        (_%__kont221515221516%_)
                                        (_%__kont221513221514%_
                                         _%g217220217264%_
                                         _%g217221217266%_)))))
                               (_%__match221549221550%_
                                (lambda (_%e217214217286%_
                                         _%hd217215217290%_
                                         _%tl217216217293%_
                                         _%e217217217296%_
                                         _%hd217218217300%_
                                         _%tl217219217303%_)
                                  (let ((_%g217211217306%_ _%tl217219217303%_)
                                        (_%g217212217308%_ _%hd217218217300%_)
                                        (_%g217213217309%_ _%hd217215217290%_))
                                    (if (gx#ellipsis? _%g217212217308%_)
                                        (_%__kont221511221512%_
                                         _%g217211217306%_
                                         _%g217212217308%_
                                         _%g217213217309%_)
                                        (_%__match221555221556%_
                                         _%e217214217286%_
                                         _%hd217215217290%_
                                         _%tl217216217293%_))))))
                          (if (gx#stx-pair? _%__stx221506221507%_)
                              (let ((_%e217204217330%_
                                     (gx#syntax-e _%__stx221506221507%_)))
                                (let ((_%tl217206217337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217204217330%_)))
                                      (_%hd217205217334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217204217330%_))))
                                  (if (gx#stx-datum? _%hd217205217334%_)
                                      (let ((_%e217207217340%_
                                             (gx#stx-e _%hd217205217334%_)))
                                        (if (equal? _%e217207217340%_ '::)
                                            (if (gx#stx-pair?
                                                 _%tl217206217337%_)
                                                (let ((_%e217208217344%_
                                                       (gx#syntax-e
                                                        _%tl217206217337%_)))
                                                  (let ((_%tl217210217351%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e217208217344%_)))
                                                        (_%hd217209217348%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e217208217344%_))))
                                                    (if (gx#stx-null?
                                                         _%tl217210217351%_)
                                                        (_%__kont221509221510%_
                                                         _%hd217209217348%_)
                                                        (_%__match221549221550%_
                                                         _%e217204217330%_
                                                         _%hd217205217334%_
                                                         _%tl217206217337%_
                                                         _%e217208217344%_
                                                         _%hd217209217348%_
                                                         _%tl217210217351%_))))
                                                (_%__match221555221556%_
                                                 _%e217204217330%_
                                                 _%hd217205217334%_
                                                 _%tl217206217337%_))
                                            (if (gx#stx-pair?
                                                 _%tl217206217337%_)
                                                (let ((_%e217217217296%_
                                                       (gx#syntax-e
                                                        _%tl217206217337%_)))
                                                  (let ((_%tl217219217303%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e217217217296%_)))
                                                        (_%hd217218217300%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e217217217296%_))))
                                                    (_%__match221549221550%_
                                                     _%e217204217330%_
                                                     _%hd217205217334%_
                                                     _%tl217206217337%_
                                                     _%e217217217296%_
                                                     _%hd217218217300%_
                                                     _%tl217219217303%_)))
                                                (_%__match221555221556%_
                                                 _%e217204217330%_
                                                 _%hd217205217334%_
                                                 _%tl217206217337%_))))
                                      (if (gx#stx-pair? _%tl217206217337%_)
                                          (let ((_%e217217217296%_
                                                 (gx#syntax-e
                                                  _%tl217206217337%_)))
                                            (let ((_%tl217219217303%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e217217217296%_)))
                                                  (_%hd217218217300%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e217217217296%_))))
                                              (_%__match221549221550%_
                                               _%e217204217330%_
                                               _%hd217205217334%_
                                               _%tl217206217337%_
                                               _%e217217217296%_
                                               _%hd217218217300%_
                                               _%tl217219217303%_)))
                                          (_%__match221555221556%_
                                           _%e217204217330%_
                                           _%hd217205217334%_
                                           _%tl217206217337%_)))))
                              (_%__kont221515221516%_)))))))
                 (_%parse-vector217016%_
                  (lambda (_%body217192%_)
                    (if (_%simple-vector?217017%_ _%body217192%_)
                        (cons 'simple:
                              (cons (gx#stx-map
                                     _%parse1217013%_
                                     _%body217192%_)
                                    '()))
                        (cons 'list:
                              (cons (_%parse-list217015%_ _%body217192%_)
                                    '())))))
                 (_%simple-vector?217017%_
                  (lambda (_%body217129%_)
                    (let* ((_%__stx221558221559%_ _%body217129%_)
                           (_%g217133217145%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx221558221559%_))))
                      (let ((_%__kont221561221562%_
                             (lambda (_%g217135217173%_ _%g217136217175%_)
                               (if (gx#ellipsis? _%g217136217175%_)
                                   '#f
                                   (_%simple-vector?217017%_
                                    _%g217135217173%_))))
                            (_%__kont221563221564%_
                             (lambda () (gx#stx-null? _%body217129%_))))
                        (if (gx#stx-pair? _%__stx221558221559%_)
                            (let ((_%e217137217163%_
                                   (gx#syntax-e _%__stx221558221559%_)))
                              (let ((_%tl217139217170%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217137217163%_)))
                                    (_%hd217138217167%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217137217163%_))))
                                (_%__kont221561221562%_
                                 _%tl217139217170%_
                                 _%hd217138217167%_)))
                            (_%__kont221563221564%_))))))
                 (_%parse-class-body217018%_
                  (lambda (_%body217038%_)
                    (let _%recur217041%_ ((_%rest217044%_ _%body217038%_))
                      (let* ((_%__stx221574221575%_ _%rest217044%_)
                             (_%g217048217064%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx221574221575%_))))
                        (let ((_%__kont221577221578%_
                               (lambda (_%g217050217102%_
                                        _%g217051217104%_
                                        _%g217052217105%_)
                                 (cons _%g217052217105%_
                                       (cons (_%parse1217013%_
                                              _%g217051217104%_)
                                             (_%recur217041%_
                                              _%g217050217102%_)))))
                              (_%__kont221579221580%_
                               (lambda ()
                                 (if (gx#stx-null? _%rest217044%_)
                                     '()
                                     (_%parse-error217020%_ _%rest217044%_)))))
                          (let ((_%__match221593221594%_
                                 (lambda (_%e217053217082%_
                                          _%hd217054217086%_
                                          _%tl217055217089%_
                                          _%e217056217092%_
                                          _%hd217057217096%_
                                          _%tl217058217099%_)
                                   (let ((_%g217050217102%_ _%tl217058217099%_)
                                         (_%g217051217104%_ _%hd217057217096%_)
                                         (_%g217052217105%_
                                          _%hd217054217086%_))
                                     (if (gx#stx-keyword? _%g217052217105%_)
                                         (_%__kont221577221578%_
                                          _%g217050217102%_
                                          _%g217051217104%_
                                          _%g217052217105%_)
                                         (_%__kont221579221580%_))))))
                            (if (gx#stx-pair? _%__stx221574221575%_)
                                (let ((_%e217053217082%_
                                       (gx#syntax-e _%__stx221574221575%_)))
                                  (let ((_%tl217055217089%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e217053217082%_)))
                                        (_%hd217054217086%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e217053217082%_))))
                                    (if (gx#stx-pair? _%tl217055217089%_)
                                        (let ((_%e217056217092%_
                                               (gx#syntax-e
                                                _%tl217055217089%_)))
                                          (let ((_%tl217058217099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e217056217092%_)))
                                                (_%hd217057217096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e217056217092%_))))
                                            (_%__match221593221594%_
                                             _%e217053217082%_
                                             _%hd217054217086%_
                                             _%tl217055217089%_
                                             _%e217056217092%_
                                             _%hd217057217096%_
                                             _%tl217058217099%_)))
                                        (_%__kont221579221580%_))))
                                (_%__kont221579221580%_))))))))
                 (_%parse-qq217019%_
                  (lambda (_%hd217025%_)
                    (let ((_%g217027217034%_
                           (lambda (_%g217028217030%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g217028217030%_))))
                      (_%g217027217034%_ _%hd217025%_))))
                 (_%parse-error217020%_
                  (lambda (_%hd217022%_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _%match-stx217011%_
                               (cons _%match-stx217011%_
                                     (cons _%stx217009%_
                                           (cons _%hd217022%_ '())))
                               (cons _%stx217009%_
                                     (cons _%hd217022%_ '())))))))
          (_%parse1217013%_ _%stx217009%_))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_%stx218697%_)
        (let ((_%match-stx218700%_ '#f))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _%stx218697%_
           _%match-stx218700%_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g223404_
        (let ((_g223405_ (let () (declare (not safe)) (##length _g223404_))))
          (cond ((let () (declare (not safe)) (##fx= _g223405_ 1))
                 (apply |gerbil/core/match[1]#parse-match-pattern__0|
                        _g223404_))
                ((let () (declare (not safe)) (##fx= _g223405_ 2))
                 (apply |gerbil/core/match[1]#parse-match-pattern__%|
                        _g223404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g223404_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx216994%_)
        (let ((__tmp223406
               (lambda (_%E216997%_)
                 (with-exception-handler
                  (let ((_%E!217000%_ (current-exception-handler)))
                    (lambda (_%e217003%_)
                      (if (syntax-error? _%e217003%_)
                          (_%E216997%_ '#f)
                          (let ()
                            (declare (not safe))
                            (_%E!217000%_ _%e217003%_)))))
                  (lambda ()
                    (|gerbil/core/match[1]#parse-match-pattern__0|
                     _%stx216994%_)
                    '#t)))))
          (declare (not safe))
          (##call-with-current-continuation __tmp223406))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree215729%_)
        (letrec ((_%loop215732%_
                  (lambda (_%ptree216019%_ _%vars216021%_ _%K216022%_)
                    (let* ((_%__stx221692221693%_ _%ptree216019%_)
                           (_%g216035216145%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx221692221693%_))))
                      (let ((_%__kont221695221696%_
                             (lambda (_%g216037216775%_)
                               (let* ((_%__stx221612221613%_ _%g216037216775%_)
                                      (_%g216792216826%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx221612221613%_))))
                                 (let ((_%__kont221615221616%_
                                        (lambda (_%g216794216975%_)
                                          (_%loop215732%_
                                           _%g216794216975%_
                                           _%vars216021%_
                                           _%K216022%_)))
                                       (_%__kont221617221618%_
                                        (lambda (_%g216798216944%_)
                                          (_%loop215732%_
                                           _%g216798216944%_
                                           _%vars216021%_
                                           _%K216022%_)))
                                       (_%__kont221619221620%_
                                        (lambda (_%g216806216892%_)
                                          (_%loop215732%_
                                           _%g216806216892%_
                                           _%vars216021%_
                                           _%K216022%_)))
                                       (_%__kont221621221622%_
                                        (lambda ()
                                          (_%K216022%_ _%vars216021%_))))
                                   (if (gx#stx-pair? _%__stx221612221613%_)
                                       (let ((_%e216795216965%_
                                              (gx#syntax-e
                                               _%__stx221612221613%_)))
                                         (let ((_%tl216797216972%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e216795216965%_)))
                                               (_%hd216796216969%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e216795216965%_))))
                                           (if (gx#stx-null?
                                                _%tl216797216972%_)
                                               (_%__kont221615221616%_
                                                _%hd216796216969%_)
                                               (if (gx#stx-datum?
                                                    _%hd216796216969%_)
                                                   (let ((_%e216802216930%_
                                                          (gx#stx-e
                                                           _%hd216796216969%_)))
                                                     (if (equal? _%e216802216930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _%tl216797216972%_)
                     (let ((_%e216803216934%_
                            (gx#syntax-e _%tl216797216972%_)))
                       (let ((_%tl216805216941%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e216803216934%_)))
                             (_%hd216804216938%_
                              (let ()
                                (declare (not safe))
                                (##car _%e216803216934%_))))
                         (if (gx#stx-null? _%tl216805216941%_)
                             (_%__kont221617221618%_ _%hd216804216938%_)
                             (_%__kont221621221622%_))))
                     (_%__kont221621221622%_))
                 (if (equal? _%e216802216930%_ '::)
                     (if (gx#stx-pair? _%tl216797216972%_)
                         (let ((_%e216811216858%_
                                (gx#syntax-e _%tl216797216972%_)))
                           (let ((_%tl216813216865%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e216811216858%_)))
                                 (_%hd216812216862%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e216811216858%_))))
                             (if (gx#stx-pair? _%tl216813216865%_)
                                 (let ((_%e216814216868%_
                                        (gx#syntax-e _%tl216813216865%_)))
                                   (let ((_%tl216816216875%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e216814216868%_)))
                                         (_%hd216815216872%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e216814216868%_))))
                                     (if (gx#stx-datum? _%hd216815216872%_)
                                         (let ((_%e216817216878%_
                                                (gx#stx-e _%hd216815216872%_)))
                                           (if (equal? _%e216817216878%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%tl216816216875%_)
                                                   (let ((_%e216818216882%_
                                                          (gx#syntax-e
                                                           _%tl216816216875%_)))
                                                     (let ((_%tl216820216889%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e216818216882%_)))
                                                           (_%hd216819216886%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e216818216882%_))))
                                                       (if (gx#stx-null?
                                                            _%tl216820216889%_)
                                                           (_%__kont221619221620%_
                                                            _%hd216819216886%_)
                                                           (_%__kont221621221622%_))))
                                                   (_%__kont221621221622%_))
                                               (_%__kont221621221622%_)))
                                         (_%__kont221621221622%_))))
                                 (_%__kont221621221622%_))))
                         (_%__kont221621221622%_))
                     (_%__kont221621221622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont221621221622%_)))))
                                       (_%__kont221621221622%_))))))
                            (_%__kont221697221698%_
                             (lambda (_%g216045216662%_ _%g216046216664%_)
                               (let* ((_%__stx221596221597%_ _%g216045216662%_)
                                      (_%g216680216692%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx221596221597%_))))
                                 (let ((_%__kont221599221600%_
                                        (lambda (_%g216682216720%_
                                                 _%g216683216722%_)
                                          (_%loop215732%_
                                           _%g216683216722%_
                                           _%vars216021%_
                                           (lambda (_%g216734216736%_)
                                             (_%loop215732%_
                                              (cons _%g216046216664%_
                                                    _%g216682216720%_)
                                              _%g216734216736%_
                                              _%K216022%_)))))
                                       (_%__kont221601221602%_
                                        (lambda ()
                                          (_%K216022%_ _%vars216021%_))))
                                   (if (gx#stx-pair? _%__stx221596221597%_)
                                       (let ((_%e216684216710%_
                                              (gx#syntax-e
                                               _%__stx221596221597%_)))
                                         (let ((_%tl216686216717%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e216684216710%_)))
                                               (_%hd216685216714%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e216684216710%_))))
                                           (_%__kont221599221600%_
                                            _%tl216686216717%_
                                            _%hd216685216714%_)))
                                       (_%__kont221601221602%_))))))
                            (_%__kont221699221700%_
                             (lambda (_%g216050216631%_)
                               (_%loop215732%_
                                _%g216050216631%_
                                _%vars216021%_
                                _%K216022%_)))
                            (_%__kont221701221702%_
                             (lambda (_%g216058216577%_ _%g216059216579%_)
                               (_%loop215732%_
                                _%g216059216579%_
                                _%vars216021%_
                                (lambda (_%g216594216596%_)
                                  (_%loop215732%_
                                   _%g216058216577%_
                                   _%g216594216596%_
                                   _%K216022%_)))))
                            (_%__kont221703221704%_
                             (lambda (_%g216070216513%_ _%g216071216515%_)
                               (_%loop215732%_
                                _%g216071216515%_
                                _%vars216021%_
                                (lambda (_%g216530216532%_)
                                  (_%loop215732%_
                                   _%g216070216513%_
                                   _%g216530216532%_
                                   _%K216022%_)))))
                            (_%__kont221705221706%_
                             (lambda (_%g216082216458%_)
                               (_%loop215732%_
                                _%g216082216458%_
                                _%vars216021%_
                                _%K216022%_)))
                            (_%__kont221707221708%_
                             (lambda (_%g216090216408%_ _%g216091216410%_)
                               (_%loop-vector215734%_
                                _%g216090216408%_
                                _%vars216021%_
                                _%K216022%_)))
                            (_%__kont221709221710%_
                             (lambda (_%g216098216365%_)
                               (_%loop-vector215734%_
                                _%g216098216365%_
                                _%vars216021%_
                                _%K216022%_)))
                            (_%__kont221711221712%_
                             (lambda (_%g216109216308%_)
                               (_%loop-class-list215736%_
                                _%g216109216308%_
                                _%vars216021%_
                                _%K216022%_)))
                            (_%__kont221713221714%_
                             (lambda (_%g216120216249%_ _%g216121216251%_)
                               (_%loop215732%_
                                _%g216120216249%_
                                _%vars216021%_
                                _%K216022%_)))
                            (_%__kont221715221716%_
                             (lambda (_%g216132216187%_)
                               (if (find (lambda (_%g216202216204%_)
                                           (gx#bound-identifier=?
                                            _%g216202216204%_
                                            _%g216132216187%_))
                                         _%vars216021%_)
                                   (_%K216022%_ _%vars216021%_)
                                   (_%K216022%_
                                    (cons _%g216132216187%_ _%vars216021%_)))))
                            (_%__kont221717221718%_
                             (lambda () (_%K216022%_ _%vars216021%_))))
                        (let* ((_%__match221849221850%_
                                (lambda (_%e216092216388%_
                                         _%hd216093216392%_
                                         _%tl216094216395%_
                                         _%e216095216398%_
                                         _%hd216096216402%_
                                         _%tl216097216405%_)
                                  (let ((_%g216090216408%_ _%hd216096216402%_)
                                        (_%g216091216410%_ _%hd216093216392%_))
                                    (if (or (gx#stx-eq?
                                             'values:
                                             _%g216091216410%_)
                                            (gx#stx-eq?
                                             'vector:
                                             _%g216091216410%_))
                                        (_%__kont221707221708%_
                                         _%g216090216408%_
                                         _%g216091216410%_)
                                        (if (gx#stx-datum? _%hd216093216392%_)
                                            (let ((_%e216102216341%_
                                                   (gx#stx-e
                                                    _%hd216093216392%_)))
                                              (if (equal? _%e216102216341%_
                                                          'struct:)
                                                  (_%__kont221717221718%_)
                                                  (if (equal? _%e216102216341%_
                                                              'class:)
                                                      (_%__kont221717221718%_)
                                                      (if (equal? _%e216102216341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (_%__kont221717221718%_)
                  (if (equal? _%e216102216341%_ 'var:)
                      (_%__kont221715221716%_ _%hd216096216402%_)
                      (_%__kont221717221718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont221717221718%_))))))
                               (_%__match221743221744%_
                                (lambda (_%e216047216652%_
                                         _%hd216048216656%_
                                         _%tl216049216659%_)
                                  (let ((_%g216045216662%_ _%tl216049216659%_)
                                        (_%g216046216664%_ _%hd216048216656%_))
                                    (if (or (gx#stx-eq?
                                             'and:
                                             _%g216046216664%_)
                                            (gx#stx-eq?
                                             'or:
                                             _%g216046216664%_))
                                        (_%__kont221697221698%_
                                         _%g216045216662%_
                                         _%g216046216664%_)
                                        (if (gx#stx-datum? _%hd216048216656%_)
                                            (let ((_%e216054216617%_
                                                   (gx#stx-e
                                                    _%hd216048216656%_)))
                                              (if (equal? _%e216054216617%_
                                                          'not:)
                                                  (if (gx#stx-pair?
                                                       _%tl216049216659%_)
                                                      (let ((_%e216055216621%_
                                                             (gx#syntax-e
                                                              _%tl216049216659%_)))
                                                        (let ((_%tl216057216628%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e216055216621%_)))
                      (_%hd216056216625%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216055216621%_))))
                  (if (gx#stx-null? _%tl216057216628%_)
                      (_%__kont221699221700%_ _%hd216056216625%_)
                      (_%__kont221717221718%_))))
              (_%__kont221717221718%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _%e216054216617%_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _%tl216049216659%_)
                                                          (let ((_%e216064216557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl216049216659%_)))
                    (let ((_%tl216066216564%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216064216557%_)))
                          (_%hd216065216561%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216064216557%_))))
                      (if (gx#stx-pair? _%tl216066216564%_)
                          (let ((_%e216067216567%_
                                 (gx#syntax-e _%tl216066216564%_)))
                            (let ((_%tl216069216574%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216067216567%_)))
                                  (_%hd216068216571%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216067216567%_))))
                              (if (gx#stx-null? _%tl216069216574%_)
                                  (_%__kont221701221702%_
                                   _%hd216068216571%_
                                   _%hd216065216561%_)
                                  (_%__kont221717221718%_))))
                          (if (gx#stx-null? _%tl216066216564%_)
                              (_%__match221849221850%_
                               _%e216047216652%_
                               _%hd216048216656%_
                               _%tl216049216659%_
                               _%e216064216557%_
                               _%hd216065216561%_
                               _%tl216066216564%_)
                              (_%__kont221717221718%_)))))
                  (_%__kont221717221718%_))
              (if (equal? _%e216054216617%_ 'splice:)
                  (if (gx#stx-pair? _%tl216049216659%_)
                      (let ((_%e216076216493%_
                             (gx#syntax-e _%tl216049216659%_)))
                        (let ((_%tl216078216500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216076216493%_)))
                              (_%hd216077216497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216076216493%_))))
                          (if (gx#stx-pair? _%tl216078216500%_)
                              (let ((_%e216079216503%_
                                     (gx#syntax-e _%tl216078216500%_)))
                                (let ((_%tl216081216510%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216079216503%_)))
                                      (_%hd216080216507%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216079216503%_))))
                                  (if (gx#stx-null? _%tl216081216510%_)
                                      (_%__kont221703221704%_
                                       _%hd216080216507%_
                                       _%hd216077216497%_)
                                      (_%__kont221717221718%_))))
                              (if (gx#stx-null? _%tl216078216500%_)
                                  (_%__match221849221850%_
                                   _%e216047216652%_
                                   _%hd216048216656%_
                                   _%tl216049216659%_
                                   _%e216076216493%_
                                   _%hd216077216497%_
                                   _%tl216078216500%_)
                                  (_%__kont221717221718%_)))))
                      (_%__kont221717221718%_))
                  (if (equal? _%e216054216617%_ 'box:)
                      (if (gx#stx-pair? _%tl216049216659%_)
                          (let ((_%e216087216448%_
                                 (gx#syntax-e _%tl216049216659%_)))
                            (let ((_%tl216089216455%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216087216448%_)))
                                  (_%hd216088216452%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216087216448%_))))
                              (if (gx#stx-null? _%tl216089216455%_)
                                  (_%__kont221705221706%_ _%hd216088216452%_)
                                  (_%__kont221717221718%_))))
                          (_%__kont221717221718%_))
                      (if (gx#stx-pair? _%tl216049216659%_)
                          (let ((_%e216095216398%_
                                 (gx#syntax-e _%tl216049216659%_)))
                            (let ((_%tl216097216405%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216095216398%_)))
                                  (_%hd216096216402%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216095216398%_))))
                              (if (gx#stx-null? _%tl216097216405%_)
                                  (_%__match221849221850%_
                                   _%e216047216652%_
                                   _%hd216048216656%_
                                   _%tl216049216659%_
                                   _%e216095216398%_
                                   _%hd216096216402%_
                                   _%tl216097216405%_)
                                  (if (equal? _%e216054216617%_ 'struct:)
                                      (if (gx#stx-pair? _%tl216097216405%_)
                                          (let ((_%e216106216355%_
                                                 (gx#syntax-e
                                                  _%tl216097216405%_)))
                                            (let ((_%tl216108216362%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216106216355%_)))
                                                  (_%hd216107216359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216106216355%_))))
                                              (if (gx#stx-null?
                                                   _%tl216108216362%_)
                                                  (_%__kont221709221710%_
                                                   _%hd216107216359%_)
                                                  (_%__kont221717221718%_))))
                                          (_%__kont221717221718%_))
                                      (if (equal? _%e216054216617%_ 'class:)
                                          (if (gx#stx-pair? _%tl216097216405%_)
                                              (let ((_%e216117216298%_
                                                     (gx#syntax-e
                                                      _%tl216097216405%_)))
                                                (let ((_%tl216119216305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216117216298%_)))
                                                      (_%hd216118216302%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216117216298%_))))
                                                  (if (gx#stx-null?
                                                       _%tl216119216305%_)
                                                      (_%__kont221711221712%_
                                                       _%hd216118216302%_)
                                                      (_%__kont221717221718%_))))
                                              (_%__kont221717221718%_))
                                          (if (equal? _%e216054216617%_
                                                      'apply:)
                                              (if (gx#stx-pair?
                                                   _%tl216097216405%_)
                                                  (let ((_%e216129216239%_
                                                         (gx#syntax-e
                                                          _%tl216097216405%_)))
                                                    (let ((_%tl216131216246%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216129216239%_)))
                                                          (_%hd216130216243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216129216239%_))))
                                                      (if (gx#stx-null?
                                                           _%tl216131216246%_)
                                                          (_%__kont221713221714%_
                                                           _%hd216130216243%_
                                                           _%hd216096216402%_)
                                                          (_%__kont221717221718%_))))
                                                  (_%__kont221717221718%_))
                                              (_%__kont221717221718%_)))))))
                          (_%__kont221717221718%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair?
                                                 _%tl216049216659%_)
                                                (let ((_%e216095216398%_
                                                       (gx#syntax-e
                                                        _%tl216049216659%_)))
                                                  (let ((_%tl216097216405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e216095216398%_)))
                                                        (_%hd216096216402%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e216095216398%_))))
                                                    (if (gx#stx-null?
                                                         _%tl216097216405%_)
                                                        (_%__match221849221850%_
                                                         _%e216047216652%_
                                                         _%hd216048216656%_
                                                         _%tl216049216659%_
                                                         _%e216095216398%_
                                                         _%hd216096216402%_
                                                         _%tl216097216405%_)
                                                        (_%__kont221717221718%_))))
                                                (_%__kont221717221718%_))))))))
                          (if (gx#stx-pair? _%__stx221692221693%_)
                              (let ((_%e216038216751%_
                                     (gx#syntax-e _%__stx221692221693%_)))
                                (let ((_%tl216040216758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216038216751%_)))
                                      (_%hd216039216755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216038216751%_))))
                                  (if (gx#stx-datum? _%hd216039216755%_)
                                      (let ((_%e216041216761%_
                                             (gx#stx-e _%hd216039216755%_)))
                                        (if (equal? _%e216041216761%_ '?:)
                                            (if (gx#stx-pair?
                                                 _%tl216040216758%_)
                                                (let ((_%e216042216765%_
                                                       (gx#syntax-e
                                                        _%tl216040216758%_)))
                                                  (let ((_%tl216044216772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e216042216765%_)))
                                                        (_%hd216043216769%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e216042216765%_))))
                                                    (_%__kont221695221696%_
                                                     _%tl216044216772%_)))
                                                (_%__match221743221744%_
                                                 _%e216038216751%_
                                                 _%hd216039216755%_
                                                 _%tl216040216758%_))
                                            (_%__match221743221744%_
                                             _%e216038216751%_
                                             _%hd216039216755%_
                                             _%tl216040216758%_)))
                                      (_%__match221743221744%_
                                       _%e216038216751%_
                                       _%hd216039216755%_
                                       _%tl216040216758%_))))
                              (_%__kont221717221718%_)))))))
                 (_%loop-vector215734%_
                  (lambda (_%body215895%_ _%vars215897%_ _%K215898%_)
                    (let* ((_%__stx221950221951%_ _%body215895%_)
                           (_%g215901215924%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx221950221951%_))))
                      (let ((_%__kont221953221954%_
                             (lambda (_%g215903216001%_)
                               (_%loop-list215735%_
                                _%g215903216001%_
                                _%vars215897%_
                                _%K215898%_)))
                            (_%__kont221955221956%_
                             (lambda (_%g215911215955%_)
                               (_%loop215732%_
                                _%g215911215955%_
                                _%vars215897%_
                                _%K215898%_))))
                        (if (gx#stx-pair? _%__stx221950221951%_)
                            (let ((_%e215904215977%_
                                   (gx#syntax-e _%__stx221950221951%_)))
                              (let ((_%tl215906215984%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e215904215977%_)))
                                    (_%hd215905215981%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e215904215977%_))))
                                (if (gx#stx-datum? _%hd215905215981%_)
                                    (let ((_%e215907215987%_
                                           (gx#stx-e _%hd215905215981%_)))
                                      (if (equal? _%e215907215987%_ 'simple:)
                                          (if (gx#stx-pair? _%tl215906215984%_)
                                              (let ((_%e215908215991%_
                                                     (gx#syntax-e
                                                      _%tl215906215984%_)))
                                                (let ((_%tl215910215998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e215908215991%_)))
                                                      (_%hd215909215995%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e215908215991%_))))
                                                  (if (gx#stx-null?
                                                       _%tl215910215998%_)
                                                      (_%__kont221953221954%_
                                                       _%hd215909215995%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g215901215924%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g215901215924%_)))
                                          (if (equal? _%e215907215987%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl215906215984%_)
                                                  (let ((_%e215916215945%_
                                                         (gx#syntax-e
                                                          _%tl215906215984%_)))
                                                    (let ((_%tl215918215952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e215916215945%_)))
                                                          (_%hd215917215949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e215916215945%_))))
                                                      (if (gx#stx-null?
                                                           _%tl215918215952%_)
                                                          (_%__kont221955221956%_
                                                           _%hd215917215949%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g215901215924%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g215901215924%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g215901215924%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g215901215924%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g215901215924%_)))))))
                 (_%loop-list215735%_
                  (lambda (_%rest215825%_ _%vars215827%_ _%K215828%_)
                    (let* ((_%__stx222000222001%_ _%rest215825%_)
                           (_%g215831215843%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx222000222001%_))))
                      (let ((_%__kont222003222004%_
                             (lambda (_%g215833215871%_ _%g215834215873%_)
                               (_%loop215732%_
                                _%g215834215873%_
                                _%vars215827%_
                                (lambda (_%g215885215887%_)
                                  (_%loop-list215735%_
                                   _%g215833215871%_
                                   _%g215885215887%_
                                   _%K215828%_)))))
                            (_%__kont222005222006%_
                             (lambda () (_%K215828%_ _%vars215827%_))))
                        (if (gx#stx-pair? _%__stx222000222001%_)
                            (let ((_%e215835215861%_
                                   (gx#syntax-e _%__stx222000222001%_)))
                              (let ((_%tl215837215868%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e215835215861%_)))
                                    (_%hd215836215865%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e215835215861%_))))
                                (_%__kont222003222004%_
                                 _%tl215837215868%_
                                 _%hd215836215865%_)))
                            (_%__kont222005222006%_))))))
                 (_%loop-class-list215736%_
                  (lambda (_%rest215738%_ _%vars215740%_ _%K215741%_)
                    (let* ((_%__stx222016222017%_ _%rest215738%_)
                           (_%g215744215759%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx222016222017%_))))
                      (let ((_%__kont222019222020%_
                             (lambda (_%g215746215797%_ _%g215747215799%_)
                               (_%loop215732%_
                                _%g215747215799%_
                                _%vars215740%_
                                (lambda (_%g215815215817%_)
                                  (_%loop-class-list215736%_
                                   _%g215746215797%_
                                   _%g215815215817%_
                                   _%K215741%_)))))
                            (_%__kont222021222022%_
                             (lambda () (_%K215741%_ _%vars215740%_))))
                        (if (gx#stx-pair? _%__stx222016222017%_)
                            (let ((_%e215748215777%_
                                   (gx#syntax-e _%__stx222016222017%_)))
                              (let ((_%tl215750215784%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e215748215777%_)))
                                    (_%hd215749215781%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e215748215777%_))))
                                (if (gx#stx-pair? _%tl215750215784%_)
                                    (let ((_%e215751215787%_
                                           (gx#syntax-e _%tl215750215784%_)))
                                      (let ((_%tl215753215794%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e215751215787%_)))
                                            (_%hd215752215791%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e215751215787%_))))
                                        (_%__kont222019222020%_
                                         _%tl215753215794%_
                                         _%hd215752215791%_)))
                                    (_%__kont222021222022%_))))
                            (_%__kont222021222022%_)))))))
          (_%loop215732%_ _%ptree215729%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx212661%_
               _%tgt212663%_
               _%ptree212664%_
               _%K212665%_
               _%E212666%_)
        (letrec ((_%generate1212668%_
                  (lambda (_%tgt213928%_
                           _%ptree213930%_
                           _%K213931%_
                           _%E213932%_)
                    (let* ((_%g213934213942%_
                            (lambda (_%g213935213938%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g213935213938%_)))
                           (_%g213933215725%_
                            (lambda (_%g213935213946%_)
                              ((lambda (_%g213936213949%_)
                                 (let* ((_%__stx222252222253%_ _%ptree213930%_)
                                        (_%g213976214118%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx222252222253%_))))
                                   (let ((_%__kont222255222256%_
                                          (lambda (_%g213978215440%_
                                                   _%g213979215442%_)
                                            (let* ((_%__stx222170222171%_
                                                    _%g213978215440%_)
                                                   (_%g215459215494%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx222170222171%_))))
                                              (let ((_%__kont222173222174%_
                                                     (lambda ()
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g213979215442%_
                                       (cons _%g213936213949%_ '())))
                           (cons _%K213931%_ (cons _%E213932%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont222175222176%_
                                                     (lambda (_%g215461215695%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '?)
                                 (cons _%g213979215442%_
                                       (cons _%g213936213949%_ '())))
                           (cons (_%generate1212668%_
                                  _%tgt213928%_
                                  _%g215461215695%_
                                  _%K213931%_
                                  _%E213932%_)
                                 (cons _%E213932%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont222177222178%_
                                                     (lambda (_%g215465215633%_)
                                                       (let* ((_%g215647215655%_
                                                               (lambda (_%g215648215651%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g215648215651%_)))
                      (_%g215646215674%_
                       (lambda (_%g215648215659%_)
                         ((lambda (_%g215649215662%_)
                            (cons 'let
                                  (cons (cons (cons _%g215649215662%_
                                                    (cons (cons _%g213979215442%_
                                                                (cons _%g213936213949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons (cons 'if
                                                    (cons _%g215649215662%_
                                                          (cons (_%generate1212668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g215649215662%_
                         _%g215465215633%_
                         _%K213931%_
                         _%E213932%_)
                        (cons _%E213932%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _%g215648215659%_))))
                 (_%g215646215674%_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont222179222180%_
                                                     (lambda (_%g215473215549%_
                                                              _%g215474215551%_)
                                                       (let* ((_%g215571215579%_
                                                               (lambda (_%g215572215575%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g215572215575%_)))
                      (_%g215570215598%_
                       (lambda (_%g215572215583%_)
                         ((lambda (_%g215573215586%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '?)
                                              (cons _%g213979215442%_
                                                    (cons _%g213936213949%_
                                                          '())))
                                        (cons (cons 'let
                                                    (cons (cons (cons _%g215573215586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons _%g215474215551%_
                                          (cons _%g213936213949%_ '()))
                                    '()))
                        '())
                  (cons (_%generate1212668%_
                         _%g215573215586%_
                         _%g215473215549%_
                         _%K213931%_
                         _%E213932%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E213932%_ '())))))
                          _%g215572215583%_))))
                 (_%g215570215598%_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%g215456215706%_
                                                       (lambda ()
                                                         (if (gx#stx-pair?
                                                              _%__stx222170222171%_)
                                                             (let ((_%e215462215685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%__stx222170222171%_)))
                       (let ((_%tl215464215692%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e215462215685%_)))
                             (_%hd215463215689%_
                              (let ()
                                (declare (not safe))
                                (##car _%e215462215685%_))))
                         (if (gx#stx-null? _%tl215464215692%_)
                             (_%__kont222175222176%_ _%hd215463215689%_)
                             (if (gx#stx-datum? _%hd215463215689%_)
                                 (let ((_%e215469215619%_
                                        (gx#stx-e _%hd215463215689%_)))
                                   (if (equal? _%e215469215619%_ '=>:)
                                       (if (gx#stx-pair? _%tl215464215692%_)
                                           (let ((_%e215470215623%_
                                                  (gx#syntax-e
                                                   _%tl215464215692%_)))
                                             (let ((_%tl215472215630%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e215470215623%_)))
                                                   (_%hd215471215627%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e215470215623%_))))
                                               (if (gx#stx-null?
                                                    _%tl215472215630%_)
                                                   (_%__kont222177222178%_
                                                    _%hd215471215627%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g215459215494%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g215459215494%_)))
                                       (if (equal? _%e215469215619%_ '::)
                                           (if (gx#stx-pair?
                                                _%tl215464215692%_)
                                               (let ((_%e215479215515%_
                                                      (gx#syntax-e
                                                       _%tl215464215692%_)))
                                                 (let ((_%tl215481215522%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e215479215515%_)))
                                                       (_%hd215480215519%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e215479215515%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl215481215522%_)
                                                       (let ((_%e215482215525%_
                                                              (gx#syntax-e
                                                               _%tl215481215522%_)))
                                                         (let ((_%tl215484215532%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e215482215525%_)))
                       (_%hd215483215529%_
                        (let ()
                          (declare (not safe))
                          (##car _%e215482215525%_))))
                   (if (gx#stx-datum? _%hd215483215529%_)
                       (let ((_%e215485215535%_ (gx#stx-e _%hd215483215529%_)))
                         (if (equal? _%e215485215535%_ '=>:)
                             (if (gx#stx-pair? _%tl215484215532%_)
                                 (let ((_%e215486215539%_
                                        (gx#syntax-e _%tl215484215532%_)))
                                   (let ((_%tl215488215546%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e215486215539%_)))
                                         (_%hd215487215543%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e215486215539%_))))
                                     (if (gx#stx-null? _%tl215488215546%_)
                                         (_%__kont222179222180%_
                                          _%hd215487215543%_
                                          _%hd215480215519%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g215459215494%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g215459215494%_)))
                             (let ()
                               (declare (not safe))
                               (_%g215459215494%_))))
                       (let () (declare (not safe)) (_%g215459215494%_)))))
               (let () (declare (not safe)) (_%g215459215494%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g215459215494%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g215459215494%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g215459215494%_))))))
                     (let () (declare (not safe)) (_%g215459215494%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%__stx222170222171%_)
                                                      (_%__kont222173222174%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g215456215706%_))))))))
                                         (_%__kont222257222258%_
                                          (lambda (_%g213987215337%_)
                                            (let* ((_%__stx222154222155%_
                                                    _%g213987215337%_)
                                                   (_%g215350215362%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx222154222155%_))))
                                              (let ((_%__kont222157222158%_
                                                     (lambda (_%g215352215390%_
                                                              _%g215353215392%_)
                                                       (_%generate1212668%_
                                                        _%tgt213928%_
                                                        _%g215353215392%_
                                                        (_%generate1212668%_
                                                         _%tgt213928%_
                                                         (cons 'and:
                                                               _%g215352215390%_)
                                                         _%K213931%_
                                                         _%E213932%_)
                                                        _%E213932%_)))
                                                    (_%__kont222159222160%_
                                                     (lambda () _%K213931%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx222154222155%_)
                                                    (let ((_%e215354215380%_
                                                           (gx#syntax-e
                                                            _%__stx222154222155%_)))
                                                      (let ((_%tl215356215387%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e215354215380%_)))
                    (_%hd215355215384%_
                     (let () (declare (not safe)) (##car _%e215354215380%_))))
                (_%__kont222157222158%_
                 _%tl215356215387%_
                 _%hd215355215384%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont222159222160%_))))))
                                         (_%__kont222259222260%_
                                          (lambda (_%g213992215244%_)
                                            (let* ((_%__stx222138222139%_
                                                    _%g213992215244%_)
                                                   (_%g215257215269%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx222138222139%_))))
                                              (let ((_%__kont222141222142%_
                                                     (lambda (_%g215259215297%_
                                                              _%g215260215299%_)
                                                       (_%generate1212668%_
                                                        _%tgt213928%_
                                                        _%g215260215299%_
                                                        _%K213931%_
                                                        (_%generate1212668%_
                                                         _%tgt213928%_
                                                         (cons 'or:
                                                               _%g215259215297%_)
                                                         _%K213931%_
                                                         _%E213932%_))))
                                                    (_%__kont222143222144%_
                                                     (lambda () _%E213932%_)))
                                                (if (gx#stx-pair?
                                                     _%__stx222138222139%_)
                                                    (let ((_%e215261215287%_
                                                           (gx#syntax-e
                                                            _%__stx222138222139%_)))
                                                      (let ((_%tl215263215294%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e215261215287%_)))
                    (_%hd215262215291%_
                     (let () (declare (not safe)) (##car _%e215261215287%_))))
                (_%__kont222141222142%_
                 _%tl215263215294%_
                 _%hd215262215291%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont222143222144%_))))))
                                         (_%__kont222261222262%_
                                          (lambda (_%g213997215209%_)
                                            (_%generate1212668%_
                                             _%tgt213928%_
                                             _%g213997215209%_
                                             _%E213932%_
                                             _%K213931%_)))
                                         (_%__kont222263222264%_
                                          (lambda (_%g214005215083%_
                                                   _%g214006215085%_)
                                            (let* ((_%g215102215117%_
                                                    (lambda (_%g215103215113%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g215103215113%_)))
                                                   (_%g215101215174%_
                                                    (lambda (_%g215103215121%_)
                                                      (if (gx#stx-pair?
                                                           _%g215103215121%_)
                                                          (let ((_%e215106215124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%g215103215121%_)))
                    (let ((_%hd215107215128%_
                           (let ()
                             (declare (not safe))
                             (##car _%e215106215124%_)))
                          (_%tl215108215131%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e215106215124%_))))
                      (if (gx#stx-pair? _%tl215108215131%_)
                          (let ((_%e215109215134%_
                                 (gx#syntax-e _%tl215108215131%_)))
                            (let ((_%hd215110215138%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e215109215134%_)))
                                  (_%tl215111215141%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e215109215134%_))))
                              (if (gx#stx-null? _%tl215111215141%_)
                                  ((lambda (_%g215104215144%_
                                            _%g215105215146%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%g213936213949%_
                                                             '()))
                                                 (cons (let ((_%hd-pat215162%_
                                                              (gx#stx-e
                                                               _%g214006215085%_))
                                                             (_%tl-pat215164%_
                                                              (gx#stx-e
                                                               _%g214005215083%_)))
                                                         (if (and (equal? _%hd-pat215162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat215164%_ '(any:)))
                     _%K213931%_
                     (if (equal? _%tl-pat215164%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%g215105215146%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g213936213949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate1212668%_
                                            _%g215105215146%_
                                            _%g214006215085%_
                                            _%K213931%_
                                            _%E213932%_)
                                           '())))
                         (if (equal? _%hd-pat215162%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%g215104215144%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%g213936213949%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate1212668%_
                                                _%g215104215144%_
                                                _%g214005215083%_
                                                _%K213931%_
                                                _%E213932%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%g215105215146%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%g213936213949%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g215104215144%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%g213936213949%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate1212668%_
                                                _%g215105215146%_
                                                _%g214006215085%_
                                                (_%generate1212668%_
                                                 _%g215104215144%_
                                                 _%g214005215083%_
                                                 _%K213931%_
                                                 _%E213932%_)
                                                _%E213932%_)
                                               '())))))))
               (cons _%E213932%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd215110215138%_
                                   _%hd215107215128%_)
                                  (_%g215102215117%_ _%g215103215121%_))))
                          (_%g215102215117%_ _%g215103215121%_))))
                  (_%g215102215117%_ _%g215103215121%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g215101215174%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl))))))
                                         (_%__kont222265222266%_
                                          (lambda ()
                                            (cons 'if
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'null?)
                                                              (cons _%g213936213949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%K213931%_ (cons _%E213932%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont222267222268%_
                                          (lambda (_%g214021214999%_
                                                   _%g214022215001%_)
                                            (_%generate-splice212670%_
                                             _%tgt213928%_
                                             _%g214022215001%_
                                             _%g214021214999%_
                                             _%K213931%_
                                             _%E213932%_)))
                                         (_%__kont222269222270%_
                                          (lambda (_%g214033214913%_)
                                            (let* ((_%g214927214935%_
                                                    (lambda (_%g214928214931%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g214928214931%_)))
                                                   (_%g214926214954%_
                                                    (lambda (_%g214928214939%_)
                                                      ((lambda (_%g214929214942%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'box?)
                                   (cons _%g213936213949%_ '()))
                             (cons (cons 'let
                                         (cons (cons (cons _%g214929214942%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##unbox)
                               (cons _%g213936213949%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (_%generate1212668%_
                                                      _%g214929214942%_
                                                      _%g214033214913%_
                                                      _%K213931%_
                                                      _%E213932%_)
                                                     '())))
                                   (cons _%E213932%_ '())))))
               _%g214928214939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g214926214954%_
                                               (gx#genident 'e)))))
                                         (_%__kont222271222272%_
                                          (lambda (_%g214041214718%_)
                                            (let* ((_%__stx222088222089%_
                                                    _%g214041214718%_)
                                                   (_%g214733214756%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx222088222089%_))))
                                              (let ((_%__kont222091222092%_
                                                     (lambda (_%g214735214833%_)
                                                       (let* ((_%g214847214855%_
                                                               (lambda (_%g214848214851%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g214848214851%_)))
                      (_%g214846214874%_
                       (lambda (_%g214848214859%_)
                         ((lambda (_%g214849214862%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'values-count)
                                                          (cons _%g213936213949%_
                                                                '()))
                                                    (cons _%g214849214862%_
                                                          '())))
                                        (cons (_%generate-simple-vector212671%_
                                               _%tgt213928%_
                                               _%g214735214833%_
                                               '0
                                               '##values-ref
                                               _%K213931%_
                                               _%E213932%_)
                                              (cons _%E213932%_ '())))))
                          _%g214848214859%_))))
                 (_%g214846214874%_ (gx#stx-length _%g214735214833%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont222093222094%_
                                                     (lambda (_%g214743214787%_)
                                                       (_%generate-list-vector212672%_
                                                        _%tgt213928%_
                                                        _%g214743214787%_
                                                        'values->list
                                                        _%K213931%_
                                                        _%E213932%_))))
                                                (if (gx#stx-pair?
                                                     _%__stx222088222089%_)
                                                    (let ((_%e214736214809%_
                                                           (gx#syntax-e
                                                            _%__stx222088222089%_)))
                                                      (let ((_%tl214738214816%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e214736214809%_)))
                    (_%hd214737214813%_
                     (let () (declare (not safe)) (##car _%e214736214809%_))))
                (if (gx#stx-datum? _%hd214737214813%_)
                    (let ((_%e214739214819%_ (gx#stx-e _%hd214737214813%_)))
                      (if (equal? _%e214739214819%_ 'simple:)
                          (if (gx#stx-pair? _%tl214738214816%_)
                              (let ((_%e214740214823%_
                                     (gx#syntax-e _%tl214738214816%_)))
                                (let ((_%tl214742214830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214740214823%_)))
                                      (_%hd214741214827%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214740214823%_))))
                                  (if (gx#stx-null? _%tl214742214830%_)
                                      (_%__kont222091222092%_
                                       _%hd214741214827%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g214733214756%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g214733214756%_)))
                          (if (equal? _%e214739214819%_ 'list:)
                              (if (gx#stx-pair? _%tl214738214816%_)
                                  (let ((_%e214748214777%_
                                         (gx#syntax-e _%tl214738214816%_)))
                                    (let ((_%tl214750214784%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214748214777%_)))
                                          (_%hd214749214781%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214748214777%_))))
                                      (if (gx#stx-null? _%tl214750214784%_)
                                          (_%__kont222093222094%_
                                           _%hd214749214781%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g214733214756%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g214733214756%_)))
                              (let ()
                                (declare (not safe))
                                (_%g214733214756%_)))))
                    (let () (declare (not safe)) (_%g214733214756%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g214733214756%_)))))))
                                         (_%__kont222273222274%_
                                          (lambda (_%g214049214523%_)
                                            (let* ((_%__stx222038222039%_
                                                    _%g214049214523%_)
                                                   (_%g214538214561%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx222038222039%_))))
                                              (let ((_%__kont222041222042%_
                                                     (lambda (_%g214540214638%_)
                                                       (let* ((_%g214652214660%_
                                                               (lambda (_%g214653214656%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g214653214656%_)))
                      (_%g214651214679%_
                       (lambda (_%g214653214664%_)
                         ((lambda (_%g214654214667%_)
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'vector?)
                                              (cons _%g213936213949%_ '()))
                                        (cons (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _%g213936213949%_ '()))
                              (cons _%g214654214667%_ '())))
                  (cons (_%generate-simple-vector212671%_
                         _%tgt213928%_
                         _%g214540214638%_
                         '0
                         '##vector-ref
                         _%K213931%_
                         _%E213932%_)
                        (cons _%E213932%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%E213932%_ '())))))
                          _%g214653214664%_))))
                 (_%g214651214679%_ (gx#stx-length _%g214540214638%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont222043222044%_
                                                     (lambda (_%g214548214592%_)
                                                       (cons 'if
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'vector?)
                                 (cons _%g213936213949%_ '()))
                           (cons (_%generate-list-vector212672%_
                                  _%tgt213928%_
                                  _%g214548214592%_
                                  'vector->list
                                  _%K213931%_
                                  _%E213932%_)
                                 (cons _%E213932%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx222038222039%_)
                                                    (let ((_%e214541214614%_
                                                           (gx#syntax-e
                                                            _%__stx222038222039%_)))
                                                      (let ((_%tl214543214621%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e214541214614%_)))
                    (_%hd214542214618%_
                     (let () (declare (not safe)) (##car _%e214541214614%_))))
                (if (gx#stx-datum? _%hd214542214618%_)
                    (let ((_%e214544214624%_ (gx#stx-e _%hd214542214618%_)))
                      (if (equal? _%e214544214624%_ 'simple:)
                          (if (gx#stx-pair? _%tl214543214621%_)
                              (let ((_%e214545214628%_
                                     (gx#syntax-e _%tl214543214621%_)))
                                (let ((_%tl214547214635%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e214545214628%_)))
                                      (_%hd214546214632%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e214545214628%_))))
                                  (if (gx#stx-null? _%tl214547214635%_)
                                      (_%__kont222041222042%_
                                       _%hd214546214632%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g214538214561%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g214538214561%_)))
                          (if (equal? _%e214544214624%_ 'list:)
                              (if (gx#stx-pair? _%tl214543214621%_)
                                  (let ((_%e214553214582%_
                                         (gx#syntax-e _%tl214543214621%_)))
                                    (let ((_%tl214555214589%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e214553214582%_)))
                                          (_%hd214554214586%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e214553214582%_))))
                                      (if (gx#stx-null? _%tl214555214589%_)
                                          (_%__kont222043222044%_
                                           _%hd214554214586%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g214538214561%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g214538214561%_)))
                              (let ()
                                (declare (not safe))
                                (_%g214538214561%_)))))
                    (let () (declare (not safe)) (_%g214538214561%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g214538214561%_)))))))
                                         (_%__kont222275222276%_
                                          (lambda (_%g214057214474%_
                                                   _%g214058214476%_)
                                            (_%generate-struct212673%_
                                             (gx#stx-e _%g214058214476%_)
                                             _%tgt213928%_
                                             _%g214057214474%_
                                             _%K213931%_
                                             _%E213932%_)))
                                         (_%__kont222277222278%_
                                          (lambda (_%g214069214415%_
                                                   _%g214070214417%_)
                                            (_%generate-class212676%_
                                             (gx#stx-e _%g214070214417%_)
                                             _%tgt213928%_
                                             _%g214069214415%_
                                             _%K213931%_
                                             _%E213932%_)))
                                         (_%__kont222279222280%_
                                          (lambda (_%g214081214312%_)
                                            (let* ((_%g214326214334%_
                                                    (lambda (_%g214327214330%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g214327214330%_)))
                                                   (_%g214325214353%_
                                                    (lambda (_%g214327214338%_)
                                                      ((lambda (_%g214328214341%_)
                                                         (cons 'if
                                                               (cons (cons _%g214328214341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%g213936213949%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g214081214312%_
                                                           '()))
                                               '())))
                             (cons _%K213931%_ (cons _%E213932%_ '())))))
               _%g214327214338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g214325214353%_
                                               (let ((_%e214357%_
                                                      (gx#stx-e
                                                       _%g214081214312%_)))
                                                 (if (or (symbol? _%e214357%_)
                                                         (keyword? _%e214357%_)
                                                         (immediate?
                                                          _%e214357%_))
                                                     '##eq?
                                                     (if (number? _%e214357%_)
                                                         'eqv?
                                                         'equal?)))))))
                                         (_%__kont222281222282%_
                                          (lambda (_%g214089214232%_
                                                   _%g214090214234%_)
                                            (let* ((_%g214250214258%_
                                                    (lambda (_%g214251214254%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g214251214254%_)))
                                                   (_%g214249214277%_
                                                    (lambda (_%g214251214262%_)
                                                      ((lambda (_%g214252214265%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%g214252214265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%g214090214234%_
                                                     (cons _%g213936213949%_
                                                           '()))
                                               '()))
                                   '())
                             (cons (_%generate1212668%_
                                    _%g214252214265%_
                                    _%g214089214232%_
                                    _%K213931%_
                                    _%E213932%_)
                                   '()))))
               _%g214251214262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g214249214277%_
                                               (gx#genident 'e)))))
                                         (_%__kont222283222284%_
                                          (lambda (_%g214101214174%_)
                                            (cons 'let
                                                  (cons (cons (cons _%g214101214174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g213936213949%_ '()))
                      '())
                (cons _%K213931%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont222285222286%_
                                          (lambda () _%K213931%_)))
                                     (if (gx#stx-pair? _%__stx222252222253%_)
                                         (let ((_%e213980215416%_
                                                (gx#syntax-e
                                                 _%__stx222252222253%_)))
                                           (let ((_%tl213982215423%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e213980215416%_)))
                                                 (_%hd213981215420%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e213980215416%_))))
                                             (if (gx#stx-datum?
                                                  _%hd213981215420%_)
                                                 (let ((_%e213983215426%_
                                                        (gx#stx-e
                                                         _%hd213981215420%_)))
                                                   (if (equal? _%e213983215426%_
                                                               '?:)
                                                       (if (gx#stx-pair?
                                                            _%tl213982215423%_)
                                                           (let ((_%e213984215430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl213982215423%_)))
                     (let ((_%tl213986215437%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e213984215430%_)))
                           (_%hd213985215434%_
                            (let ()
                              (declare (not safe))
                              (##car _%e213984215430%_))))
                       (_%__kont222255222256%_
                        _%tl213986215437%_
                        _%hd213985215434%_)))
                   (let () (declare (not safe)) (_%g213976214118%_)))
               (if (equal? _%e213983215426%_ 'and:)
                   (_%__kont222257222258%_ _%tl213982215423%_)
                   (if (equal? _%e213983215426%_ 'or:)
                       (_%__kont222259222260%_ _%tl213982215423%_)
                       (if (equal? _%e213983215426%_ 'not:)
                           (if (gx#stx-pair? _%tl213982215423%_)
                               (let ((_%e214002215199%_
                                      (gx#syntax-e _%tl213982215423%_)))
                                 (let ((_%tl214004215206%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e214002215199%_)))
                                       (_%hd214003215203%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e214002215199%_))))
                                   (if (gx#stx-null? _%tl214004215206%_)
                                       (_%__kont222261222262%_
                                        _%hd214003215203%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g213976214118%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g213976214118%_)))
                           (if (equal? _%e213983215426%_ 'cons:)
                               (if (gx#stx-pair? _%tl213982215423%_)
                                   (let ((_%e214011215063%_
                                          (gx#syntax-e _%tl213982215423%_)))
                                     (let ((_%tl214013215070%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e214011215063%_)))
                                           (_%hd214012215067%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e214011215063%_))))
                                       (if (gx#stx-pair? _%tl214013215070%_)
                                           (let ((_%e214014215073%_
                                                  (gx#syntax-e
                                                   _%tl214013215070%_)))
                                             (let ((_%tl214016215080%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e214014215073%_)))
                                                   (_%hd214015215077%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e214014215073%_))))
                                               (if (gx#stx-null?
                                                    _%tl214016215080%_)
                                                   (_%__kont222263222264%_
                                                    _%hd214015215077%_
                                                    _%hd214012215067%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g213976214118%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g213976214118%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g213976214118%_)))
                               (if (equal? _%e213983215426%_ 'null:)
                                   (if (gx#stx-null? _%tl213982215423%_)
                                       (_%__kont222265222266%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g213976214118%_)))
                                   (if (equal? _%e213983215426%_ 'splice:)
                                       (if (gx#stx-pair? _%tl213982215423%_)
                                           (let ((_%e214027214979%_
                                                  (gx#syntax-e
                                                   _%tl213982215423%_)))
                                             (let ((_%tl214029214986%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e214027214979%_)))
                                                   (_%hd214028214983%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e214027214979%_))))
                                               (if (gx#stx-pair?
                                                    _%tl214029214986%_)
                                                   (let ((_%e214030214989%_
                                                          (gx#syntax-e
                                                           _%tl214029214986%_)))
                                                     (let ((_%tl214032214996%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e214030214989%_)))
                                                           (_%hd214031214993%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e214030214989%_))))
                                                       (if (gx#stx-null?
                                                            _%tl214032214996%_)
                                                           (_%__kont222267222268%_
                                                            _%hd214031214993%_
                                                            _%hd214028214983%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g213976214118%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g213976214118%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g213976214118%_)))
                                       (if (equal? _%e213983215426%_ 'box:)
                                           (if (gx#stx-pair?
                                                _%tl213982215423%_)
                                               (let ((_%e214038214903%_
                                                      (gx#syntax-e
                                                       _%tl213982215423%_)))
                                                 (let ((_%tl214040214910%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e214038214903%_)))
                                                       (_%hd214039214907%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e214038214903%_))))
                                                   (if (gx#stx-null?
                                                        _%tl214040214910%_)
                                                       (_%__kont222269222270%_
                                                        _%hd214039214907%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g213976214118%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g213976214118%_)))
                                           (if (equal? _%e213983215426%_
                                                       'values:)
                                               (if (gx#stx-pair?
                                                    _%tl213982215423%_)
                                                   (let ((_%e214046214708%_
                                                          (gx#syntax-e
                                                           _%tl213982215423%_)))
                                                     (let ((_%tl214048214715%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e214046214708%_)))
                                                           (_%hd214047214712%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e214046214708%_))))
                                                       (if (gx#stx-null?
                                                            _%tl214048214715%_)
                                                           (_%__kont222271222272%_
                                                            _%hd214047214712%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g213976214118%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g213976214118%_)))
                                               (if (equal? _%e213983215426%_
                                                           'vector:)
                                                   (if (gx#stx-pair?
                                                        _%tl213982215423%_)
                                                       (let ((_%e214054214513%_
                                                              (gx#syntax-e
                                                               _%tl213982215423%_)))
                                                         (let ((_%tl214056214520%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e214054214513%_)))
                       (_%hd214055214517%_
                        (let ()
                          (declare (not safe))
                          (##car _%e214054214513%_))))
                   (if (gx#stx-null? _%tl214056214520%_)
                       (_%__kont222273222274%_ _%hd214055214517%_)
                       (let () (declare (not safe)) (_%g213976214118%_)))))
               (let () (declare (not safe)) (_%g213976214118%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (equal? _%e213983215426%_
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _%tl213982215423%_)
                                                           (let ((_%e214063214454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl213982215423%_)))
                     (let ((_%tl214065214461%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e214063214454%_)))
                           (_%hd214064214458%_
                            (let ()
                              (declare (not safe))
                              (##car _%e214063214454%_))))
                       (if (gx#stx-pair? _%tl214065214461%_)
                           (let ((_%e214066214464%_
                                  (gx#syntax-e _%tl214065214461%_)))
                             (let ((_%tl214068214471%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e214066214464%_)))
                                   (_%hd214067214468%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e214066214464%_))))
                               (if (gx#stx-null? _%tl214068214471%_)
                                   (_%__kont222275222276%_
                                    _%hd214067214468%_
                                    _%hd214064214458%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g213976214118%_)))))
                           (let () (declare (not safe)) (_%g213976214118%_)))))
                   (let () (declare (not safe)) (_%g213976214118%_)))
               (if (equal? _%e213983215426%_ 'class:)
                   (if (gx#stx-pair? _%tl213982215423%_)
                       (let ((_%e214075214395%_
                              (gx#syntax-e _%tl213982215423%_)))
                         (let ((_%tl214077214402%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e214075214395%_)))
                               (_%hd214076214399%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e214075214395%_))))
                           (if (gx#stx-pair? _%tl214077214402%_)
                               (let ((_%e214078214405%_
                                      (gx#syntax-e _%tl214077214402%_)))
                                 (let ((_%tl214080214412%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e214078214405%_)))
                                       (_%hd214079214409%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e214078214405%_))))
                                   (if (gx#stx-null? _%tl214080214412%_)
                                       (_%__kont222277222278%_
                                        _%hd214079214409%_
                                        _%hd214076214399%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g213976214118%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g213976214118%_)))))
                       (let () (declare (not safe)) (_%g213976214118%_)))
                   (if (equal? _%e213983215426%_ 'datum:)
                       (if (gx#stx-pair? _%tl213982215423%_)
                           (let ((_%e214086214302%_
                                  (gx#syntax-e _%tl213982215423%_)))
                             (let ((_%tl214088214309%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e214086214302%_)))
                                   (_%hd214087214306%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e214086214302%_))))
                               (if (gx#stx-null? _%tl214088214309%_)
                                   (_%__kont222279222280%_ _%hd214087214306%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g213976214118%_)))))
                           (let () (declare (not safe)) (_%g213976214118%_)))
                       (if (equal? _%e213983215426%_ 'apply:)
                           (if (gx#stx-pair? _%tl213982215423%_)
                               (let ((_%e214095214212%_
                                      (gx#syntax-e _%tl213982215423%_)))
                                 (let ((_%tl214097214219%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e214095214212%_)))
                                       (_%hd214096214216%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e214095214212%_))))
                                   (if (gx#stx-pair? _%tl214097214219%_)
                                       (let ((_%e214098214222%_
                                              (gx#syntax-e
                                               _%tl214097214219%_)))
                                         (let ((_%tl214100214229%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e214098214222%_)))
                                               (_%hd214099214226%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e214098214222%_))))
                                           (if (gx#stx-null?
                                                _%tl214100214229%_)
                                               (_%__kont222281222282%_
                                                _%hd214099214226%_
                                                _%hd214096214216%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g213976214118%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g213976214118%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g213976214118%_)))
                           (if (equal? _%e213983215426%_ 'var:)
                               (if (gx#stx-pair? _%tl213982215423%_)
                                   (let ((_%e214106214164%_
                                          (gx#syntax-e _%tl213982215423%_)))
                                     (let ((_%tl214108214171%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e214106214164%_)))
                                           (_%hd214107214168%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e214106214164%_))))
                                       (if (gx#stx-null? _%tl214108214171%_)
                                           (_%__kont222283222284%_
                                            _%hd214107214168%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g213976214118%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g213976214118%_)))
                               (if (equal? _%e213983215426%_ 'any:)
                                   (if (gx#stx-null? _%tl213982215423%_)
                                       (_%__kont222285222286%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g213976214118%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g213976214118%_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g213976214118%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g213976214118%_))))))
                               _%g213935213946%_))))
                      (_%g213933215725%_ _%tgt213928%_))))
                 (_%generate-splice212670%_
                  (lambda (_%tgt213306%_
                           _%hd213308%_
                           _%rest213309%_
                           _%K213310%_
                           _%E213311%_)
                    (let* ((_%g213313213330%_
                            (lambda (_%g213314213326%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g213314213326%_)))
                           (_%g213312213924%_
                            (lambda (_%g213314213334%_)
                              (if (gx#stx-pair/null? _%g213314213334%_)
                                  (let ((_g223407_
                                         (gx#syntax-split-splice
                                          _%g213314213334%_
                                          '0)))
                                    (begin
                                      (let ((_g223408_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g223407_)
                                                   (##values-length _g223407_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g223408_ 2)))
                                            (error "Context expects 2 values"
                                                   _g223408_)))
                                      (let ((_%target213316213337%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g223407_ 0)))
                                            (_%tl213318213340%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g223407_ 1))))
                                        (if (gx#stx-null? _%tl213318213340%_)
                                            (letrec ((_%loop213319213343%_
                                                      (lambda (_%hd213317213347%_
                                                               _%var213323213350%_)
                                                        (if (gx#stx-pair?
                                                             _%hd213317213347%_)
                                                            (let ((_%e213320213352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd213317213347%_)))
                      (let ((_%lp-hd213321213356%_
                             (let ()
                               (declare (not safe))
                               (##car _%e213320213352%_)))
                            (_%lp-tl213322213359%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e213320213352%_))))
                        (_%loop213319213343%_
                         _%lp-tl213322213359%_
                         (cons _%lp-hd213321213356%_ _%var213323213350%_))))
                    (let ((_%var213324213362%_ (reverse _%var213323213350%_)))
                      ((lambda (_%g213315213365%_)
                         (let* ((_%g213381213398%_
                                 (lambda (_%g213382213394%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g213382213394%_)))
                                (_%g213380213912%_
                                 (lambda (_%g213382213402%_)
                                   (if (gx#stx-pair/null? _%g213382213402%_)
                                       (let ((_g223409_
                                              (gx#syntax-split-splice
                                               _%g213382213402%_
                                               '0)))
                                         (begin
                                           (let ((_g223410_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g223409_)
                                                        (##values-length
                                                         _g223409_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g223410_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g223410_)))
                                           (let ((_%target213384213405%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g223409_
                                                     0)))
                                                 (_%tl213386213408%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g223409_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl213386213408%_)
                                                 (letrec ((_%loop213387213411%_
                                                           (lambda (_%hd213385213415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%var-r213391213418%_)
                     (if (gx#stx-pair? _%hd213385213415%_)
                         (let ((_%e213388213420%_
                                (gx#syntax-e _%hd213385213415%_)))
                           (let ((_%lp-hd213389213424%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e213388213420%_)))
                                 (_%lp-tl213390213427%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e213388213420%_))))
                             (_%loop213387213411%_
                              _%lp-tl213390213427%_
                              (cons _%lp-hd213389213424%_
                                    _%var-r213391213418%_))))
                         (let ((_%var-r213392213430%_
                                (reverse _%var-r213391213418%_)))
                           ((lambda (_%g213383213433%_)
                              (let* ((_%g213450213467%_
                                      (lambda (_%g213451213463%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g213451213463%_)))
                                     (_%g213449213900%_
                                      (lambda (_%g213451213471%_)
                                        (if (gx#stx-pair/null?
                                             _%g213451213471%_)
                                            (let ((_g223411_
                                                   (gx#syntax-split-splice
                                                    _%g213451213471%_
                                                    '0)))
                                              (begin
                                                (let ((_g223412_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g223411_)
                                                             (##values-length
                                                              _g223411_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g223412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g223412_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target213453213474%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g223411_
                                                          0)))
                                                      (_%tl213455213477%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g223411_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl213455213477%_)
                                                      (letrec ((_%loop213456213480%_
                                                                (lambda (_%hd213454213484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%init213460213487%_)
                          (if (gx#stx-pair? _%hd213454213484%_)
                              (let ((_%e213457213489%_
                                     (gx#syntax-e _%hd213454213484%_)))
                                (let ((_%lp-hd213458213493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213457213489%_)))
                                      (_%lp-tl213459213496%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213457213489%_))))
                                  (_%loop213456213480%_
                                   _%lp-tl213459213496%_
                                   (cons _%lp-hd213458213493%_
                                         _%init213460213487%_))))
                              (let ((_%init213461213499%_
                                     (reverse _%init213460213487%_)))
                                ((lambda (_%g213452213502%_)
                                   (let* ((_%g213519213527%_
                                           (lambda (_%g213520213523%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g213520213523%_)))
                                          (_%g213518213896%_
                                           (lambda (_%g213520213531%_)
                                             ((lambda (_%g213521213534%_)
                                                (let* ((_%g213547213555%_
                                                        (lambda (_%g213548213551%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g213548213551%_)))
                                                       (_%g213546213892%_
                                                        (lambda (_%g213548213559%_)
                                                          ((lambda (_%g213549213562%_)
                                                             (let* ((_%g213575213583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g213576213579%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g213576213579%_)))
                            (_%g213574213888%_
                             (lambda (_%g213576213587%_)
                               ((lambda (_%g213577213590%_)
                                  (let* ((_%g213603213611%_
                                          (lambda (_%g213604213607%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g213604213607%_)))
                                         (_%g213602213884%_
                                          (lambda (_%g213604213615%_)
                                            ((lambda (_%g213605213618%_)
                                               (let* ((_%g213631213639%_
                                                       (lambda (_%g213632213635%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g213632213635%_)))
                                                      (_%g213630213880%_
                                                       (lambda (_%g213632213643%_)
                                                         ((lambda (_%g213633213646%_)
                                                            (let* ((_%g213659213667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g213660213663%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g213660213663%_)))
                           (_%g213658213876%_
                            (lambda (_%g213660213671%_)
                              ((lambda (_%g213661213674%_)
                                 (let* ((_%g213687213695%_
                                         (lambda (_%g213688213691%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g213688213691%_)))
                                        (_%g213686213872%_
                                         (lambda (_%g213688213699%_)
                                           ((lambda (_%g213689213702%_)
                                              (let* ((_%g213715213723%_
                                                      (lambda (_%g213716213719%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g213716213719%_)))
                                                     (_%g213714213857%_
                                                      (lambda (_%g213716213727%_)
                                                        ((lambda (_%g213717213730%_)
                                                           (let* ((_%g213743213751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g213744213747%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g213744213747%_)))
                          (_%g213742213845%_
                           (lambda (_%g213744213755%_)
                             ((lambda (_%g213745213758%_)
                                (let* ((_%g213771213779%_
                                        (lambda (_%g213772213775%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g213772213775%_)))
                                       (_%g213770213841%_
                                        (lambda (_%g213772213783%_)
                                          ((lambda (_%g213773213786%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%g213549213562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%g213661213674%_
                                                     (foldr (lambda (_%g213800213811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g213801213814%_)
                      (cons _%g213800213811%_ _%g213801213814%_))
                    '()
                    _%g213315213365%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g213689213702%_ '())))
                                   '()))
                       (cons (cons _%g213605213618%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%g213633213646%_
                                                           (cons _%g213661213674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g213802213817%_ _%g213803213820%_)
                                  (cons _%g213802213817%_ _%g213803213820%_))
                                '()
                                _%g213383213433%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g213773213786%_
                                                           '())))
                                         '()))
                             (cons (cons _%g213577213590%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%g213661213674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g213804213823%_ _%g213805213826%_)
                                  (cons _%g213804213823%_ _%g213805213826%_))
                                '()
                                _%g213383213433%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%g213661213674%_ '()))
                                     (cons (cons _%g213605213618%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%g213661213674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%g213661213674%_
                     (foldr (lambda (_%g213806213829%_ _%g213807213832%_)
                              (cons _%g213806213829%_ _%g213807213832%_))
                            '()
                            _%g213383213433%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g213745213758%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%g213577213590%_
                             (cons _%g213521213534%_
                                   (foldr (lambda (_%g213808213835%_
                                                   _%g213809213838%_)
                                            (cons _%g213808213835%_
                                                  _%g213809213838%_))
                                          '()
                                          _%g213452213502%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g213772213783%_))))
                                  (_%g213770213841%_
                                   (_%generate1212668%_
                                    _%g213633213646%_
                                    _%hd213308%_
                                    _%g213717213730%_
                                    _%g213745213758%_))))
                              _%g213744213755%_))))
                     (_%g213742213845%_
                      (cons _%g213549213562%_
                            (cons _%g213661213674%_
                                  (foldr (lambda (_%g213848213851%_
                                                  _%g213849213854%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%g213848213851%_
                                                             '()))
                                                 _%g213849213854%_))
                                         '()
                                         _%g213383213433%_))))))
                 _%g213716213727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g213714213857%_
                                                 (cons _%g213577213590%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%g213661213674%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets
                        _%g213383213433%_
                        _%g213315213365%_)
                       (foldr (lambda (_%g213860213864%_
                                       _%g213861213867%_
                                       _%g213862213869%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%g213861213867%_
                                                  (cons _%g213860213864%_
                                                        '())))
                                      _%g213862213869%_))
                              '()
                              _%g213383213433%_
                              _%g213315213365%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g213688213699%_))))
                                   (_%g213686213872%_
                                    (_%generate1212668%_
                                     _%g213661213674%_
                                     _%rest213309%_
                                     _%K213310%_
                                     _%E213311%_))))
                               _%g213660213671%_))))
                      (_%g213658213876%_ (gx#genident 'rest))))
                  _%g213632213643%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g213630213880%_
                                                  (gx#genident 'hd))))
                                             _%g213604213615%_))))
                                    (_%g213602213884%_
                                     (gx#genident 'splice-try))))
                                _%g213576213587%_))))
                       (_%g213574213888%_ (gx#genident 'splice-loop))))
                   _%g213548213559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g213546213892%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%g213520213531%_))))
                                     (_%g213518213896%_ _%tgt213306%_)))
                                 _%init213461213499%_))))))
                (_%loop213456213480%_ _%target213453213474%_ '()))
              (_%g213450213467%_ _%g213451213471%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g213450213467%_
                                             _%g213451213471%_)))))
                                (_%g213449213900%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%g213903213906%_
                                                   _%g213904213909%_)
                                            (cons _%g213903213906%_
                                                  _%g213904213909%_))
                                          '()
                                          _%g213315213365%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%var-r213392213430%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop213387213411%_
                                                    _%target213384213405%_
                                                    '()))
                                                 (_%g213381213398%_
                                                  _%g213382213402%_)))))
                                       (_%g213381213398%_
                                        _%g213382213402%_)))))
                           (_%g213380213912%_
                            (gx#gentemps
                             (foldr (lambda (_%g213915213918%_
                                             _%g213916213921%_)
                                      (cons _%g213915213918%_
                                            _%g213916213921%_))
                                    '()
                                    _%g213315213365%_)))))
                       _%var213324213362%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop213319213343%_
                                               _%target213316213337%_
                                               '()))
                                            (_%g213313213330%_
                                             _%g213314213334%_)))))
                                  (_%g213313213330%_ _%g213314213334%_)))))
                      (_%g213312213924%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd213308%_)))))
                 (_%generate-simple-vector212671%_
                  (lambda (_%tgt213129%_
                           _%body213131%_
                           _%start213132%_
                           _%ref213133%_
                           _%K213134%_
                           _%E213135%_)
                    (let _%recur213137%_ ((_%rest213140%_ _%body213131%_)
                                          (_%off213142%_ _%start213132%_))
                      (let* ((_%__stx222610222611%_ _%rest213140%_)
                             (_%g213145213157%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx222610222611%_))))
                        (let ((_%__kont222613222614%_
                               (lambda (_%g213147213185%_ _%g213148213187%_)
                                 (let* ((_%g213202213225%_
                                         (lambda (_%g213203213221%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g213203213221%_)))
                                        (_%g213201213298%_
                                         (lambda (_%g213203213229%_)
                                           (if (gx#stx-pair? _%g213203213229%_)
                                               (let ((_%e213208213232%_
                                                      (gx#syntax-e
                                                       _%g213203213229%_)))
                                                 (let ((_%hd213209213236%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e213208213232%_)))
                                                       (_%tl213210213239%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e213208213232%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl213210213239%_)
                                                       (let ((_%e213211213242%_
                                                              (gx#syntax-e
                                                               _%tl213210213239%_)))
                                                         (let ((_%hd213212213246%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e213211213242%_)))
                       (_%tl213213213249%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e213211213242%_))))
                   (if (gx#stx-pair? _%tl213213213249%_)
                       (let ((_%e213214213252%_
                              (gx#syntax-e _%tl213213213249%_)))
                         (let ((_%hd213215213256%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e213214213252%_)))
                               (_%tl213216213259%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e213214213252%_))))
                           (if (gx#stx-pair? _%tl213216213259%_)
                               (let ((_%e213217213262%_
                                      (gx#syntax-e _%tl213216213259%_)))
                                 (let ((_%hd213218213266%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e213217213262%_)))
                                       (_%tl213219213269%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e213217213262%_))))
                                   (if (gx#stx-null? _%tl213219213269%_)
                                       ((lambda (_%g213204213272%_
                                                 _%g213205213274%_
                                                 _%g213206213275%_
                                                 _%g213207213276%_)
                                          (cons 'let
                                                (cons (cons (cons _%g213207213276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _%g213204213272%_
                                      (cons _%g213206213275%_
                                            (cons _%g213205213274%_ '())))
                                '()))
                    '())
              (cons (_%generate1212668%_
                     _%g213207213276%_
                     _%g213148213187%_
                     (_%recur213137%_ _%g213147213185%_ (fx1+ _%off213142%_))
                     _%E213135%_)
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%hd213218213266%_
                                        _%hd213215213256%_
                                        _%hd213212213246%_
                                        _%hd213209213236%_)
                                       (_%g213202213225%_ _%g213203213229%_))))
                               (_%g213202213225%_ _%g213203213229%_))))
                       (_%g213202213225%_ _%g213203213229%_))))
               (_%g213202213225%_ _%g213203213229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g213202213225%_
                                                _%g213203213229%_)))))
                                   (_%g213201213298%_
                                    (list (gx#genident 'e)
                                          _%tgt213129%_
                                          _%off213142%_
                                          _%ref213133%_)))))
                              (_%__kont222615222616%_ (lambda () _%K213134%_)))
                          (if (gx#stx-pair? _%__stx222610222611%_)
                              (let ((_%e213149213175%_
                                     (gx#syntax-e _%__stx222610222611%_)))
                                (let ((_%tl213151213182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e213149213175%_)))
                                      (_%hd213150213179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e213149213175%_))))
                                  (_%__kont222613222614%_
                                   _%tl213151213182%_
                                   _%hd213150213179%_)))
                              (_%__kont222615222616%_)))))))
                 (_%generate-list-vector212672%_
                  (lambda (_%tgt213021%_
                           _%body213023%_
                           _%->list213024%_
                           _%K213025%_
                           _%E213026%_)
                    (let* ((_%g213028213036%_
                            (lambda (_%g213029213032%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g213029213032%_)))
                           (_%g213027213125%_
                            (lambda (_%g213029213040%_)
                              ((lambda (_%g213030213043%_)
                                 (let* ((_%g213055213063%_
                                         (lambda (_%g213056213059%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g213056213059%_)))
                                        (_%g213054213121%_
                                         (lambda (_%g213056213067%_)
                                           ((lambda (_%g213057213070%_)
                                              (let* ((_%g213083213091%_
                                                      (lambda (_%g213084213087%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g213084213087%_)))
                                                     (_%g213082213113%_
                                                      (lambda (_%g213084213095%_)
                                                        ((lambda (_%g213085213098%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%g213030213043%_
                                           (cons _%g213085213098%_ '()))
                                     '())
                               (cons (_%generate1212668%_
                                      _%g213030213043%_
                                      _%body213023%_
                                      _%K213025%_
                                      _%E213026%_)
                                     '()))))
                 _%g213084213095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g213082213113%_
                                                 (let ((_%$e213117%_
                                                        _%->list213024%_))
                                                   (if (eq? 'values->list
                                                            _%$e213117%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%g213057213070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e213117%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%g213057213070%_ '()))
                   (if (eq? 'struct->list _%$e213117%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%g213057213070%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx212661%_
                        _%->list213024%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g213056213067%_))))
                                   (_%g213054213121%_ _%tgt213021%_)))
                               _%g213029213040%_))))
                      (_%g213027213125%_ (gx#genident 'e)))))
                 (_%generate-struct212673%_
                  (lambda (_%info212892%_
                           _%tgt212894%_
                           _%body212895%_
                           _%K212896%_
                           _%E212897%_)
                    (let* ((_%__stx222626222627%_ _%body212895%_)
                           (_%g212900212923%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx222626222627%_))))
                      (let ((_%__kont222629222630%_
                             (lambda (_%g212902213000%_)
                               (let ((_%fields213014%_
                                      (_%struct-field-accessors212675%_
                                       _%info212892%_)))
                                 (cons 'if
                                       (cons (cons (let ((__obj223380
                                                          _%info212892%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj223380
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj223380
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj223380
                                                          'predicate)))
                                                   (cons _%tgt212894%_ '()))
                                             (cons (_%generate-simple-struct-body212674%_
                                                    _%info212892%_
                                                    _%tgt212894%_
                                                    _%g212902213000%_
                                                    _%K212896%_
                                                    _%E212897%_)
                                                   (cons _%E212897%_ '())))))))
                            (_%__kont222631222632%_
                             (lambda (_%g212910212954%_)
                               (cons 'if
                                     (cons (cons (let ((__obj223381
                                                        _%info212892%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj223381
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj223381
                                                          '14
                                                          '#f
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop~MOP-2#class-type-info::t
                                                        __obj223381
                                                        'predicate)))
                                                 (cons _%tgt212894%_ '()))
                                           (cons (_%generate-list-vector212672%_
                                                  _%tgt212894%_
                                                  _%g212910212954%_
                                                  'struct->list
                                                  _%K212896%_
                                                  _%E212897%_)
                                                 (cons _%E212897%_ '())))))))
                        (if (gx#stx-pair? _%__stx222626222627%_)
                            (let ((_%e212903212976%_
                                   (gx#syntax-e _%__stx222626222627%_)))
                              (let ((_%tl212905212983%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e212903212976%_)))
                                    (_%hd212904212980%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e212903212976%_))))
                                (if (gx#stx-datum? _%hd212904212980%_)
                                    (let ((_%e212906212986%_
                                           (gx#stx-e _%hd212904212980%_)))
                                      (if (equal? _%e212906212986%_ 'simple:)
                                          (if (gx#stx-pair? _%tl212905212983%_)
                                              (let ((_%e212907212990%_
                                                     (gx#syntax-e
                                                      _%tl212905212983%_)))
                                                (let ((_%tl212909212997%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e212907212990%_)))
                                                      (_%hd212908212994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e212907212990%_))))
                                                  (if (gx#stx-null?
                                                       _%tl212909212997%_)
                                                      (_%__kont222629222630%_
                                                       _%hd212908212994%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g212900212923%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g212900212923%_)))
                                          (if (equal? _%e212906212986%_ 'list:)
                                              (if (gx#stx-pair?
                                                   _%tl212905212983%_)
                                                  (let ((_%e212915212944%_
                                                         (gx#syntax-e
                                                          _%tl212905212983%_)))
                                                    (let ((_%tl212917212951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e212915212944%_)))
                                                          (_%hd212916212948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e212915212944%_))))
                                                      (if (gx#stx-null?
                                                           _%tl212917212951%_)
                                                          (_%__kont222631222632%_
                                                           _%hd212916212948%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g212900212923%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g212900212923%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g212900212923%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g212900212923%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g212900212923%_)))))))
                 (_%generate-simple-struct-body212674%_
                  (lambda (_%info212812%_
                           _%tgt212814%_
                           _%body212815%_
                           _%K212816%_
                           _%E212817%_)
                    (let _%recur212819%_ ((_%rest212822%_ _%body212815%_)
                                          (_%fields212824%_
                                           (_%struct-field-accessors212675%_
                                            _%info212812%_)))
                      (let* ((_%__stx222676222677%_ _%rest212822%_)
                             (_%g212827212839%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx222676222677%_))))
                        (let ((_%__kont222679222680%_
                               (lambda (_%g212829212867%_ _%g212830212869%_)
                                 (if (null? _%fields212824%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _%stx212661%_
                                      _%info212812%_
                                      (let ((__obj223382 _%info212812%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj223382
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj223382
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj223382
                                             'name))))
                                     (let ((_%$tgt212884%_ (gx#genident 'e))
                                           (_%getf212886%_
                                            (car _%fields212824%_)))
                                       (cons 'let
                                             (cons (cons (cons _%$tgt212884%_
                                                               (cons (cons _%getf212886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%tgt212814%_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_%generate1212668%_
                                                          _%$tgt212884%_
                                                          _%g212830212869%_
                                                          (_%recur212819%_
                                                           _%g212829212867%_
                                                           (cdr _%fields212824%_))
                                                          _%E212817%_)
                                                         '())))))))
                              (_%__kont222681222682%_ (lambda () _%K212816%_)))
                          (if (gx#stx-pair? _%__stx222676222677%_)
                              (let ((_%e212831212857%_
                                     (gx#syntax-e _%__stx222676222677%_)))
                                (let ((_%tl212833212864%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212831212857%_)))
                                      (_%hd212832212861%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212831212857%_))))
                                  (_%__kont222679222680%_
                                   _%tl212833212864%_
                                   _%hd212832212861%_)))
                              (_%__kont222681222682%_)))))))
                 (_%struct-field-accessors212675%_
                  (lambda (_%info212793%_)
                    (let _%recur212796%_ ((_%next212799%_
                                           (cons _%info212793%_ '())))
                      (if (null? _%next212799%_)
                          '()
                          (let ((_%ti212802%_ (car _%next212799%_)))
                            (let ((__tmp223414
                                   (_%recur212796%_
                                    (map gx#syntax-local-value
                                         (let ((__obj223383 _%ti212802%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj223383
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj223383
                                                  '4
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj223383
                                                'super))))))
                                  (__tmp223413
                                   (map (lambda (_%slot212805%_)
                                          (let ((_%$e212808%_
                                                 (agetq _%slot212805%_
                                                        (let ((__obj223384
                                                               _%ti212802%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj223384
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj223384 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj223384
                       'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%$e212808%_
                                                _%$e212808%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"no accessor for struct slot"
                                                 _%stx212661%_
                                                 _%info212793%_
                                                 _%slot212805%_))))
                                        (let ((__obj223385 _%ti212802%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj223385
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj223385
                                                 '5
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj223385
                                               'slots))))))
                              (declare (not safe))
                              (##append __tmp223414 __tmp223413)))))))
                 (_%generate-class212676%_
                  (lambda (_%info212786%_
                           _%tgt212788%_
                           _%body212789%_
                           _%K212790%_
                           _%E212791%_)
                    (cons 'if
                          (cons (cons (let ((__obj223386 _%info212786%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj223386
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj223386
                                               '14
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj223386
                                             'predicate)))
                                      (cons _%tgt212788%_ '()))
                                (cons (_%generate-class-body212677%_
                                       _%info212786%_
                                       _%tgt212788%_
                                       _%body212789%_
                                       _%K212790%_
                                       _%E212791%_)
                                      (cons _%E212791%_ '()))))))
                 (_%generate-class-body212677%_
                  (lambda (_%info212679%_
                           _%tgt212681%_
                           _%body212682%_
                           _%K212683%_
                           _%E212684%_)
                    (let _%recur212686%_ ((_%rest212689%_ _%body212682%_))
                      (let* ((_%__stx222692222693%_ _%rest212689%_)
                             (_%g212693212709%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx222692222693%_))))
                        (let ((_%__kont222695222696%_
                               (lambda (_%g212695212747%_
                                        _%g212696212749%_
                                        _%g212697212750%_)
                                 (let ((_%$e212770%_
                                        (agetq (let ((__tmp223415
                                                      (keyword->string
                                                       (gx#stx-e
                                                        _%g212697212750%_))))
                                                 (declare (not safe))
                                                 (##string->symbol
                                                  __tmp223415))
                                               (let ((__obj223387
                                                      _%info212679%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj223387
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj223387
                                                        '17
                                                        '#f
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core/mop~MOP-2#class-type-info::t
                                                      __obj223387
                                                      'unchecked-accessors))))))
                                   (if _%$e212770%_
                                       ((lambda (_%getf212774%_)
                                          (let ((_%$tgt212777%_
                                                 (gx#genident 'e)))
                                            (cons 'let
                                                  (cons (cons (cons _%$tgt212777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _%getf212774%_
                                        (cons _%tgt212681%_ '()))
                                  '()))
                      '())
                (cons (_%generate1212668%_
                       _%$tgt212777%_
                       _%g212696212749%_
                       (_%recur212686%_ _%g212695212747%_)
                       _%E212684%_)
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$e212770%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _%stx212661%_
                                        _%info212679%_
                                        _%g212697212750%_)))))
                              (_%__kont222697222698%_ (lambda () _%K212683%_)))
                          (if (gx#stx-pair? _%__stx222692222693%_)
                              (let ((_%e212698212727%_
                                     (gx#syntax-e _%__stx222692222693%_)))
                                (let ((_%tl212700212734%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212698212727%_)))
                                      (_%hd212699212731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212698212727%_))))
                                  (if (gx#stx-pair? _%tl212700212734%_)
                                      (let ((_%e212701212737%_
                                             (gx#syntax-e _%tl212700212734%_)))
                                        (let ((_%tl212703212744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212701212737%_)))
                                              (_%hd212702212741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212701212737%_))))
                                          (_%__kont222695222696%_
                                           _%tl212703212744%_
                                           _%hd212702212741%_
                                           _%hd212699212731%_)))
                                      (_%__kont222697222698%_))))
                              (_%__kont222697222698%_))))))))
          (_%generate1212668%_
           _%tgt212663%_
           _%ptree212664%_
           _%K212665%_
           _%E212666%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx211480%_ _%tgt-lst211482%_ _%clauses211483%_)
        (letrec ((_%parse-body211485%_
                  (lambda (_%hd-len212483%_)
                    (let _%lp212486%_ ((_%rest212489%_ _%clauses211483%_)
                                       (_%r212491%_ '()))
                      (let* ((_%__stx222742222743%_ _%rest212489%_)
                             (_%g212494212506%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx222742222743%_))))
                        (let ((_%__kont222745222746%_
                               (lambda (_%g212496212534%_ _%g212497212536%_)
                                 (let* ((_%__stx222714222715%_
                                         _%g212497212536%_)
                                        (_%g212553212569%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx222714222715%_))))
                                   (let ((_%__kont222717222718%_
                                          (lambda (_%g212555212638%_)
                                            (if (gx#stx-null?
                                                 _%g212496212534%_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin)
                                       _%g212555212638%_)
                                 (let ((_%$e212649%_
                                        (gx#stx-source _%g212497212536%_)))
                                   (if _%$e212649%_
                                       _%$e212649%_
                                       (gx#stx-source _%stx211480%_))))
                                '())))
              _%r212491%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _%stx211480%_
                                                 _%g212497212536%_))))
                                         (_%__kont222719222720%_
                                          (lambda (_%g212559212597%_
                                                   _%g212560212599%_)
                                            (_%lp212486%_
                                             _%g212496212534%_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_%g212611212613%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core/match[1]#parse-match-pattern__%|
                           _%g212611212613%_
                           _%stx211480%_))
                        _%g212560212599%_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin)
                                    _%g212559212597%_)
                              (let ((_%$e212617%_
                                     (gx#stx-source _%g212497212536%_)))
                                (if _%$e212617%_
                                    _%$e212617%_
                                    (gx#stx-source _%stx211480%_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%r212491%_))))
                                         (_%__kont222721222722%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _%stx211480%_
                                             _%g212497212536%_))))
                                     (let* ((_%__match222739222740%_
                                             (lambda (_%e212561212587%_
                                                      _%hd212562212591%_
                                                      _%tl212563212594%_)
                                               (let ((_%g212559212597%_
                                                      _%tl212563212594%_)
                                                     (_%g212560212599%_
                                                      _%hd212562212591%_))
                                                 (if (and (gx#stx-list?
                                                           _%g212560212599%_)
                                                          (fx= (gx#stx-length
                                                                _%g212560212599%_)
                                                               _%hd-len212483%_)
                                                          (gx#stx-list?
                                                           _%g212559212597%_)
                                                          (not (gx#stx-null?
                                                                _%g212559212597%_)))
                                                     (_%__kont222719222720%_
                                                      _%g212559212597%_
                                                      _%g212560212599%_)
                                                     (_%__kont222721222722%_)))))
                                            (_%__match222733222734%_
                                             (lambda (_%e212556212628%_
                                                      _%hd212557212632%_
                                                      _%tl212558212635%_)
                                               (let ((_%g212555212638%_
                                                      _%tl212558212635%_))
                                                 (if (and (gx#stx-list?
                                                           _%g212555212638%_)
                                                          (not (gx#stx-null?
                                                                _%g212555212638%_)))
                                                     (_%__kont222717222718%_
                                                      _%g212555212638%_)
                                                     (_%__match222739222740%_
                                                      _%e212556212628%_
                                                      _%hd212557212632%_
                                                      _%tl212558212635%_))))))
                                       (if (gx#stx-pair? _%__stx222714222715%_)
                                           (let ((_%e212556212628%_
                                                  (gx#syntax-e
                                                   _%__stx222714222715%_)))
                                             (let ((_%tl212558212635%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e212556212628%_)))
                                                   (_%hd212557212632%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e212556212628%_))))
                                               (if (gx#identifier?
                                                    _%hd212557212632%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g223416_|
                                                        _%hd212557212632%_)
                                                       (_%__match222733222734%_
                                                        _%e212556212628%_
                                                        _%hd212557212632%_
                                                        _%tl212558212635%_)
                                                       (_%__match222739222740%_
                                                        _%e212556212628%_
                                                        _%hd212557212632%_
                                                        _%tl212558212635%_))
                                                   (_%__match222739222740%_
                                                    _%e212556212628%_
                                                    _%hd212557212632%_
                                                    _%tl212558212635%_))))
                                           (_%__kont222721222722%_)))))))
                              (_%__kont222747222748%_ (lambda () _%r212491%_)))
                          (if (gx#stx-pair? _%__stx222742222743%_)
                              (let ((_%e212498212524%_
                                     (gx#syntax-e _%__stx222742222743%_)))
                                (let ((_%tl212500212531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212498212524%_)))
                                      (_%hd212499212528%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212498212524%_))))
                                  (_%__kont222745222746%_
                                   _%tl212500212531%_
                                   _%hd212499212528%_)))
                              (_%__kont222747222748%_)))))))
                 (_%generate-body211487%_
                  (lambda (_%body212189%_)
                    (let* ((_%g212192212200%_
                            (lambda (_%g212193212196%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g212193212196%_)))
                           (_%g212191212479%_
                            (lambda (_%g212193212204%_)
                              ((lambda (_%g212194212207%_)
                                 (let* ((_%g212219212236%_
                                         (lambda (_%g212220212232%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g212220212232%_)))
                                        (_%g212218212475%_
                                         (lambda (_%g212220212240%_)
                                           (if (gx#stx-pair/null?
                                                _%g212220212240%_)
                                               (let ((_g223417_
                                                      (gx#syntax-split-splice
                                                       _%g212220212240%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g223418_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g223417_)
                        (##values-length _g223417_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g223418_ 2)))
                 (error "Context expects 2 values" _g223418_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target212222212243%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g223417_
                                                             0)))
                                                         (_%tl212224212246%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g223417_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl212224212246%_)
                                                         (letrec ((_%loop212225212249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd212223212253%_ _%target212229212256%_)
                             (if (gx#stx-pair? _%hd212223212253%_)
                                 (let ((_%e212226212258%_
                                        (gx#syntax-e _%hd212223212253%_)))
                                   (let ((_%lp-hd212227212262%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e212226212258%_)))
                                         (_%lp-tl212228212265%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e212226212258%_))))
                                     (_%loop212225212249%_
                                      _%lp-tl212228212265%_
                                      (cons _%lp-hd212227212262%_
                                            _%target212229212256%_))))
                                 (let ((_%target212230212268%_
                                        (reverse _%target212229212256%_)))
                                   ((lambda (_%g212221212271%_)
                                      (let* ((_%g212288212305%_
                                              (lambda (_%g212289212301%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g212289212301%_)))
                                             (_%g212287212471%_
                                              (lambda (_%g212289212309%_)
                                                (if (gx#stx-pair/null?
                                                     _%g212289212309%_)
                                                    (let ((_g223419_
                                                           (gx#syntax-split-splice
                                                            _%g212289212309%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g223420_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g223419_)
                             (##values-length _g223419_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g223420_ 2)))
                      (error "Context expects 2 values" _g223420_)))
                (let ((_%target212291212312%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g223419_ 0)))
                      (_%tl212293212315%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g223419_ 1))))
                  (if (gx#stx-null? _%tl212293212315%_)
                      (letrec ((_%loop212294212318%_
                                (lambda (_%hd212292212322%_
                                         _%fail-diagnostic212298212325%_)
                                  (if (gx#stx-pair? _%hd212292212322%_)
                                      (let ((_%e212295212327%_
                                             (gx#syntax-e _%hd212292212322%_)))
                                        (let ((_%lp-hd212296212331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212295212327%_)))
                                              (_%lp-tl212297212334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212295212327%_))))
                                          (_%loop212294212318%_
                                           _%lp-tl212297212334%_
                                           (cons _%lp-hd212296212331%_
                                                 _%fail-diagnostic212298212325%_))))
                                      (let ((_%fail-diagnostic212299212337%_
                                             (reverse _%fail-diagnostic212298212325%_)))
                                        ((lambda (_%g212290212340%_)
                                           (let* ((_%g212357212365%_
                                                   (lambda (_%g212358212361%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g212358212361%_)))
                                                  (_%g212356212451%_
                                                   (lambda (_%g212358212369%_)
                                                     ((lambda (_%g212359212372%_)
                                                        (let* ((_%g212385212393%_
                                                                (lambda (_%g212386212389%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g212386212389%_)))
                       (_%g212384212447%_
                        (lambda (_%g212386212397%_)
                          ((lambda (_%g212387212400%_)
                             (let* ((_%g212413212421%_
                                     (lambda (_%g212414212417%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g212414212417%_)))
                                    (_%g212412212443%_
                                     (lambda (_%g212414212425%_)
                                       ((lambda (_%g212415212428%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%g212415212428%_
                                                            '()))))
                                        _%g212414212425%_))))
                               (_%g212412212443%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%g212194212207%_
                                                         (cons _%g212359212372%_
                                                               '()))
                                                   '())
                                             (cons _%g212387212400%_ '())))
                                 (gx#stx-source _%stx211480%_)))))
                           _%g212386212397%_))))
                  (_%g212384212447%_
                   (_%generate-clauses211488%_
                    _%body212189%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%g212194212207%_ '()) '())))))))
              _%g212358212369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g212356212451%_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'error)
                               (cons '"No clause matching"
                                     (foldr (lambda (_%g212454212459%_
                                                     _%g212455212462%_)
                                              (cons _%g212454212459%_
                                                    _%g212455212462%_))
                                            (foldr (lambda (_%g212456212465%_
                                                            _%g212457212468%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g212456212465%_ '()))
                   _%g212457212468%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%g212290212340%_)
                                            _%g212221212271%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source
                                                _%stx211480%_)))))
                                         _%fail-diagnostic212299212337%_))))))
                        (_%loop212294212318%_ _%target212291212312%_ '()))
                      (_%g212288212305%_ _%g212289212309%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g212288212305%_
                                                     _%g212289212309%_)))))
                                        (_%g212287212471%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses211483%_))))
                                    _%target212230212268%_))))))
                   (_%loop212225212249%_ _%target212222212243%_ '()))
                 (_%g212219212236%_ _%g212220212240%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g212219212236%_
                                                _%g212220212240%_)))))
                                   (_%g212218212475%_ _%tgt-lst211482%_)))
                               _%g212193212204%_))))
                      (_%g212191212479%_ (gx#genident 'E)))))
                 (_%generate-clauses211488%_
                  (lambda (_%rest211841%_ _%E211843%_)
                    (let* ((_%__stx222758222759%_ _%rest211841%_)
                           (_%g211847211863%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx222758222759%_))))
                      (let ((_%__kont222761222762%_
                             (lambda (_%g211849212097%_)
                               (let* ((_%g212108212126%_
                                       (lambda (_%g212109212122%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g212109212122%_)))
                                      (_%g212107212181%_
                                       (lambda (_%g212109212130%_)
                                         (if (gx#stx-pair? _%g212109212130%_)
                                             (let ((_%e212112212133%_
                                                    (gx#syntax-e
                                                     _%g212109212130%_)))
                                               (let ((_%hd212113212137%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e212112212133%_)))
                                                     (_%tl212114212140%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e212112212133%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl212114212140%_)
                                                     (let ((_%e212115212143%_
                                                            (gx#syntax-e
                                                             _%tl212114212140%_)))
                                                       (let ((_%hd212116212147%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e212115212143%_)))
                     (_%tl212117212150%_
                      (let () (declare (not safe)) (##cdr _%e212115212143%_))))
                 (if (gx#stx-pair? _%tl212117212150%_)
                     (let ((_%e212118212153%_
                            (gx#syntax-e _%tl212117212150%_)))
                       (let ((_%hd212119212157%_
                              (let ()
                                (declare (not safe))
                                (##car _%e212118212153%_)))
                             (_%tl212120212160%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e212118212153%_))))
                         (if (gx#stx-null? _%tl212120212160%_)
                             ((lambda (_%g212110212163%_ _%g212111212165%_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e
                                                       _%g212111212165%_)
                                                      (_%generate1211489%_
                                                       _%g212111212165%_
                                                       _%g212110212163%_
                                                       _%E211843%_)
                                                      _%g212110212163%_)
                                                  '()))))
                              _%hd212119212157%_
                              _%hd212116212147%_)
                             (_%g212108212126%_ _%g212109212130%_))))
                     (_%g212108212126%_ _%g212109212130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g212108212126%_
                                                      _%g212109212130%_))))
                                             (_%g212108212126%_
                                              _%g212109212130%_)))))
                                 (_%g212107212181%_ _%g211849212097%_))))
                            (_%__kont222763222764%_
                             (lambda (_%g211853211891%_ _%g211854211893%_)
                               (let* ((_%g211906211925%_
                                       (lambda (_%g211907211921%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g211907211921%_)))
                                      (_%g211905212076%_
                                       (lambda (_%g211907211929%_)
                                         (if (gx#stx-pair? _%g211907211929%_)
                                             (let ((_%e211911211932%_
                                                    (gx#syntax-e
                                                     _%g211907211929%_)))
                                               (let ((_%hd211912211936%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e211911211932%_)))
                                                     (_%tl211913211939%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e211911211932%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl211913211939%_)
                                                     (let ((_%e211914211942%_
                                                            (gx#syntax-e
                                                             _%tl211913211939%_)))
                                                       (let ((_%hd211915211946%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e211914211942%_)))
                     (_%tl211916211949%_
                      (let () (declare (not safe)) (##cdr _%e211914211942%_))))
                 (if (gx#stx-pair? _%tl211916211949%_)
                     (let ((_%e211917211952%_
                            (gx#syntax-e _%tl211916211949%_)))
                       (let ((_%hd211918211956%_
                              (let ()
                                (declare (not safe))
                                (##car _%e211917211952%_)))
                             (_%tl211919211959%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e211917211952%_))))
                         (if (gx#stx-null? _%tl211919211959%_)
                             ((lambda (_%g211908211962%_
                                       _%g211909211964%_
                                       _%g211910211965%_)
                                (if (gx#stx-e _%g211909211964%_)
                                    (let* ((_%g211982211997%_
                                            (lambda (_%g211983211993%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g211983211993%_)))
                                           (_%g211981212042%_
                                            (lambda (_%g211983212001%_)
                                              (if (gx#stx-pair?
                                                   _%g211983212001%_)
                                                  (let ((_%e211986212004%_
                                                         (gx#syntax-e
                                                          _%g211983212001%_)))
                                                    (let ((_%hd211987212008%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211986212004%_)))
                                                          (_%tl211988212011%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211986212004%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl211988212011%_)
                                                          (let ((_%e211989212014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl211988212011%_)))
                    (let ((_%hd211990212018%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211989212014%_)))
                          (_%tl211991212021%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211989212014%_))))
                      (if (gx#stx-null? _%tl211991212021%_)
                          ((lambda (_%g211984212024%_ _%g211985212026%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _%g211910211965%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _%g211985212026%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%g211984212024%_ '()))))
                           _%hd211990212018%_
                           _%hd211987212008%_)
                          (_%g211982211997%_ _%g211983212001%_))))
                  (_%g211982211997%_ _%g211983212001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g211982211997%_
                                                   _%g211983212001%_)))))
                                      (_%g211981212042%_
                                       (list (_%generate1211489%_
                                              _%g211909211964%_
                                              _%g211908211962%_
                                              _%E211843%_)
                                             (_%generate-clauses211488%_
                                              _%g211853211891%_
                                              (cons _%g211910211965%_ '())))))
                                    (let* ((_%g212046212054%_
                                            (lambda (_%g212047212050%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g212047212050%_)))
                                           (_%g212045212072%_
                                            (lambda (_%g212047212058%_)
                                              ((lambda (_%g212048212061%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g211910211965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'begin-annotation)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '@match-else)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g211908211962%_ '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons _%g212048212061%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g212047212058%_))))
                                      (_%g212045212072%_
                                       (_%generate-clauses211488%_
                                        _%g211853211891%_
                                        (cons _%g211910211965%_ '()))))))
                              _%hd211918211956%_
                              _%hd211915211946%_
                              _%hd211912211936%_)
                             (_%g211906211925%_ _%g211907211929%_))))
                     (_%g211906211925%_ _%g211907211929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g211906211925%_
                                                      _%g211907211929%_))))
                                             (_%g211906211925%_
                                              _%g211907211929%_)))))
                                 (_%g211905212076%_ _%g211854211893%_))))
                            (_%__kont222765222766%_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _%E211843%_ '()))))))
                        (if (gx#stx-pair? _%__stx222758222759%_)
                            (let ((_%e211850212087%_
                                   (gx#syntax-e _%__stx222758222759%_)))
                              (let ((_%tl211852212094%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211850212087%_)))
                                    (_%hd211851212091%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211850212087%_))))
                                (if (gx#stx-null? _%tl211852212094%_)
                                    (_%__kont222761222762%_ _%hd211851212091%_)
                                    (_%__kont222763222764%_
                                     _%tl211852212094%_
                                     _%hd211851212091%_))))
                            (_%__kont222765222766%_))))))
                 (_%generate1211489%_
                  (lambda (_%clause211491%_ _%body211493%_ _%E211494%_)
                    (let* ((_%g211496211520%_
                            (lambda (_%g211497211516%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g211497211516%_)))
                           (_%g211495211837%_
                            (lambda (_%g211497211524%_)
                              (if (gx#stx-pair? _%g211497211524%_)
                                  (let ((_%e211500211527%_
                                         (gx#syntax-e _%g211497211524%_)))
                                    (let ((_%hd211501211531%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211500211527%_)))
                                          (_%tl211502211534%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211500211527%_))))
                                      (if (gx#stx-pair? _%tl211502211534%_)
                                          (let ((_%e211503211537%_
                                                 (gx#syntax-e
                                                  _%tl211502211534%_)))
                                            (let ((_%hd211504211541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e211503211537%_)))
                                                  (_%tl211505211544%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e211503211537%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd211504211541%_)
                                                  (let ((_g223421_
                                                         (gx#syntax-split-splice
                                                          _%hd211504211541%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g223422_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g223421_)
                           (##values-length _g223421_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g223422_ 2)))
                    (error "Context expects 2 values" _g223422_)))
              (let ((_%target211506211547%_
                     (let () (declare (not safe)) (##values-ref _g223421_ 0)))
                    (_%tl211508211550%_
                     (let () (declare (not safe)) (##values-ref _g223421_ 1))))
                (if (gx#stx-null? _%tl211508211550%_)
                    (letrec ((_%loop211509211553%_
                              (lambda (_%hd211507211557%_ _%var211513211560%_)
                                (if (gx#stx-pair? _%hd211507211557%_)
                                    (let ((_%e211510211562%_
                                           (gx#syntax-e _%hd211507211557%_)))
                                      (let ((_%lp-hd211511211566%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e211510211562%_)))
                                            (_%lp-tl211512211569%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e211510211562%_))))
                                        (_%loop211509211553%_
                                         _%lp-tl211512211569%_
                                         (cons _%lp-hd211511211566%_
                                               _%var211513211560%_))))
                                    (let ((_%var211514211572%_
                                           (reverse _%var211513211560%_)))
                                      (if (gx#stx-null? _%tl211505211544%_)
                                          ((lambda (_%g211498211575%_
                                                    _%g211499211577%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%g211598211601%_
                                                                _%g211599211604%_)
                                                         (cons _%g211598211601%_
                                                               _%g211599211604%_))
                                                       '()
                                                       _%g211498211575%_)
                                                _%stx211480%_)
                                               (let* ((_%g211607211615%_
                                                       (lambda (_%g211608211611%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g211608211611%_)))
                                                      (_%g211606211709%_
                                                       (lambda (_%g211608211619%_)
                                                         ((lambda (_%g211609211622%_)
                                                            (let* ((_%g211635211643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g211636211639%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g211636211639%_)))
                           (_%g211634211705%_
                            (lambda (_%g211636211647%_)
                              ((lambda (_%g211637211650%_)
                                 (let* ((_%g211663211671%_
                                         (lambda (_%g211664211667%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g211664211667%_)))
                                        (_%g211662211693%_
                                         (lambda (_%g211664211675%_)
                                           ((lambda (_%g211665211678%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%g211499211577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g211665211678%_ '()))
                   (cons _%g211609211622%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx211480%_)))
                                            _%g211664211675%_))))
                                   (_%g211662211693%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%g211696211699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g211697211702%_)
                  (cons _%g211696211699%_ _%g211697211702%_))
                '()
                _%g211498211575%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g211637211650%_ '())))
                                     (gx#stx-source _%stx211480%_)))))
                               _%g211636211647%_))))
                      (_%g211634211705%_ _%body211493%_)))
                  _%g211608211619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g211606211709%_
                                                  (let _%recur211713%_ ((_%rest211716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause211491%_)
                                (_%rest-targets211718%_ _%tgt-lst211482%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%__stx222784222785%_
                                                            _%rest211716%_)
                                                           (_%g211721211733%_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%__stx222784222785%_))))
                                                      (let ((_%__kont222787222788%_
                                                             (lambda (_%g211723211769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g211724211771%_)
                       (let* ((_%g211786211798%_
                               (lambda (_%g211787211794%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g211787211794%_)))
                              (_%g211785211829%_
                               (lambda (_%g211787211802%_)
                                 (if (gx#stx-pair? _%g211787211802%_)
                                     (let ((_%e211790211805%_
                                            (gx#syntax-e _%g211787211802%_)))
                                       (let ((_%hd211791211809%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e211790211805%_)))
                                             (_%tl211792211812%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e211790211805%_))))
                                         ((lambda (_%g211788211815%_
                                                   _%g211789211817%_)
                                            (|gerbil/core/match[1]#generate-match1|
                                             _%stx211480%_
                                             _%g211789211817%_
                                             _%g211724211771%_
                                             (_%recur211713%_
                                              _%g211723211769%_
                                              _%g211788211815%_)
                                             _%E211494%_))
                                          _%tl211792211812%_
                                          _%hd211791211809%_)))
                                     (_%g211786211798%_ _%g211787211802%_)))))
                         (_%g211785211829%_ _%rest-targets211718%_))))
                    (_%__kont222789222790%_
                     (lambda ()
                       (cons _%g211499211577%_
                             (foldr (lambda (_%g211743211746%_
                                             _%g211744211749%_)
                                      (cons _%g211743211746%_
                                            _%g211744211749%_))
                                    '()
                                    _%g211498211575%_)))))
                (if (gx#stx-pair? _%__stx222784222785%_)
                    (let ((_%e211725211759%_
                           (gx#syntax-e _%__stx222784222785%_)))
                      (let ((_%tl211727211766%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211725211759%_)))
                            (_%hd211726211763%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211725211759%_))))
                        (_%__kont222787222788%_
                         _%tl211727211766%_
                         _%hd211726211763%_)))
                    (_%__kont222789222790%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%var211514211572%_
                                           _%hd211501211531%_)
                                          (_%g211496211520%_
                                           _%g211497211524%_)))))))
                      (_%loop211509211553%_ _%target211506211547%_ '()))
                    (_%g211496211520%_ _%g211497211524%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g211496211520%_
                                                   _%g211497211524%_))))
                                          (_%g211496211520%_
                                           _%g211497211524%_))))
                                  (_%g211496211520%_ _%g211497211524%_)))))
                      (_%g211495211837%_
                       (list (gx#genident 'K)
                             (let ((__tmp223423
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause211491%_)))
                               (declare (not safe))
                               (##apply append __tmp223423))))))))
          (_%generate-body211487%_
           (_%parse-body211485%_ (gx#stx-length _%tgt-lst211482%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx211382%_ _%tgt211384%_ _%clauses211385%_)
        (letrec ((_%reclause211387%_
                  (lambda (_%clause211390%_)
                    (let* ((_%__stx222800222801%_ _%clause211390%_)
                           (_%g211395211410%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx222800222801%_))))
                      (let ((_%__kont222803222804%_
                             (lambda () _%clause211390%_))
                            (_%__kont222805222806%_
                             (lambda (_%g211400211438%_ _%g211401211440%_)
                               (gx#stx-wrap-source
                                (cons (cons _%g211401211440%_ '())
                                      _%g211400211438%_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (_%__kont222807222808%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _%stx211382%_
                                _%clause211390%_))))
                        (if (gx#stx-pair? _%__stx222800222801%_)
                            (let ((_%e211397211462%_
                                   (gx#syntax-e _%__stx222800222801%_)))
                              (let ((_%tl211399211469%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211397211462%_)))
                                    (_%hd211398211466%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211397211462%_))))
                                (if (gx#identifier? _%hd211398211466%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g223424_|
                                         _%hd211398211466%_)
                                        (_%__kont222803222804%_)
                                        (_%__kont222805222806%_
                                         _%tl211399211469%_
                                         _%hd211398211466%_))
                                    (_%__kont222805222806%_
                                     _%tl211399211469%_
                                     _%hd211398211466%_))))
                            (_%__kont222807222808%_)))))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx211382%_
           (cons _%tgt211384%_ '())
           (gx#stx-map _%reclause211387%_ _%clauses211385%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx218723%_)
        (let* ((_%__stx222828222829%_ _%stx218723%_)
               (_%g218728218757%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx222828222829%_))))
          (let ((_%__kont222831222832%_
                 (lambda (_%g218730218997%_)
                   (let* ((_%g219010219018%_
                           (lambda (_%g219011219014%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g219011219014%_)))
                          (_%g219009219071%_
                           (lambda (_%g219011219022%_)
                             ((lambda (_%g219012219025%_)
                                (let* ((_%g219037219045%_
                                        (lambda (_%g219038219041%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g219038219041%_)))
                                       (_%g219036219067%_
                                        (lambda (_%g219038219049%_)
                                          ((lambda (_%g219039219052%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g219012219025%_
                                                               '())
                                                         (cons _%g219039219052%_
                                                               '()))))
                                           _%g219038219049%_))))
                                  (_%g219036219067%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g219012219025%_
                                                _%g218730218997%_))
                                    (gx#stx-source _%stx218723%_)))))
                              _%g219011219022%_))))
                     (_%g219009219071%_ (gx#genident 'e)))))
                (_%__kont222833222834%_
                 (lambda (_%g218737218892%_)
                   (let* ((_%g218905218913%_
                           (lambda (_%g218906218909%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g218906218909%_)))
                          (_%g218904218966%_
                           (lambda (_%g218906218917%_)
                             ((lambda (_%g218907218920%_)
                                (let* ((_%g218932218940%_
                                        (lambda (_%g218933218936%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g218933218936%_)))
                                       (_%g218931218962%_
                                        (lambda (_%g218933218944%_)
                                          ((lambda (_%g218934218947%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%g218907218920%_
                                                         (cons _%g218934218947%_
                                                               '()))))
                                           _%g218933218944%_))))
                                  (_%g218931218962%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _%g218907218920%_
                                                _%g218737218892%_))
                                    (gx#stx-source _%stx218723%_)))))
                              _%g218906218917%_))))
                     (_%g218904218966%_ (gx#genident 'args)))))
                (_%__kont222835222836%_
                 (lambda (_%g218744218784%_ _%g218745218786%_)
                   (let* ((_%g218800218808%_
                           (lambda (_%g218801218804%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g218801218804%_)))
                          (_%g218799218861%_
                           (lambda (_%g218801218812%_)
                             ((lambda (_%g218802218815%_)
                                (let* ((_%g218827218835%_
                                        (lambda (_%g218828218831%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g218828218831%_)))
                                       (_%g218826218857%_
                                        (lambda (_%g218828218839%_)
                                          ((lambda (_%g218829218842%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g218802218815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g218745218786%_ '()))
                       '())
                 (cons _%g218829218842%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g218828218839%_))))
                                  (_%g218826218857%_
                                   (|gerbil/core/match[1]#generate-match|
                                    _%stx218723%_
                                    _%g218802218815%_
                                    _%g218744218784%_))))
                              _%g218801218812%_))))
                     (_%g218799218861%_ (gx#genident _%g218745218786%_))))))
            (let* ((_%__match222881222882%_
                    (lambda (_%e218746218764%_
                             _%hd218747218768%_
                             _%tl218748218771%_
                             _%e218749218774%_
                             _%hd218750218778%_
                             _%tl218751218781%_)
                      (let ((_%g218744218784%_ _%tl218751218781%_)
                            (_%g218745218786%_ _%hd218750218778%_))
                        (if (gx#stx-list? _%g218744218784%_)
                            (_%__kont222835222836%_
                             _%g218744218784%_
                             _%g218745218786%_)
                            (let ()
                              (declare (not safe))
                              (_%g218728218757%_))))))
                   (_%__match222869222870%_
                    (lambda (_%e218738218872%_
                             _%hd218739218876%_
                             _%tl218740218879%_
                             _%e218741218882%_
                             _%hd218742218886%_
                             _%tl218743218889%_)
                      (let ((_%g218737218892%_ _%tl218743218889%_))
                        (if (gx#stx-list? _%g218737218892%_)
                            (_%__kont222833222834%_ _%g218737218892%_)
                            (_%__match222881222882%_
                             _%e218738218872%_
                             _%hd218739218876%_
                             _%tl218740218879%_
                             _%e218741218882%_
                             _%hd218742218886%_
                             _%tl218743218889%_)))))
                   (_%__match222853222854%_
                    (lambda (_%e218731218977%_
                             _%hd218732218981%_
                             _%tl218733218984%_
                             _%e218734218987%_
                             _%hd218735218991%_
                             _%tl218736218994%_)
                      (let ((_%g218730218997%_ _%tl218736218994%_))
                        (if (gx#stx-list? _%g218730218997%_)
                            (_%__kont222831222832%_ _%g218730218997%_)
                            (_%__match222881222882%_
                             _%e218731218977%_
                             _%hd218732218981%_
                             _%tl218733218984%_
                             _%e218734218987%_
                             _%hd218735218991%_
                             _%tl218736218994%_))))))
              (if (gx#stx-pair? _%__stx222828222829%_)
                  (let ((_%e218731218977%_
                         (gx#syntax-e _%__stx222828222829%_)))
                    (let ((_%tl218733218984%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218731218977%_)))
                          (_%hd218732218981%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218731218977%_))))
                      (if (gx#stx-pair? _%tl218733218984%_)
                          (let ((_%e218734218987%_
                                 (gx#syntax-e _%tl218733218984%_)))
                            (let ((_%tl218736218994%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218734218987%_)))
                                  (_%hd218735218991%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218734218987%_))))
                              (if (gx#identifier? _%hd218735218991%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g223425_|
                                       _%hd218735218991%_)
                                      (_%__match222853222854%_
                                       _%e218731218977%_
                                       _%hd218732218981%_
                                       _%tl218733218984%_
                                       _%e218734218987%_
                                       _%hd218735218991%_
                                       _%tl218736218994%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g223426_|
                                           _%hd218735218991%_)
                                          (_%__match222869222870%_
                                           _%e218731218977%_
                                           _%hd218732218981%_
                                           _%tl218733218984%_
                                           _%e218734218987%_
                                           _%hd218735218991%_
                                           _%tl218736218994%_)
                                          (_%__match222881222882%_
                                           _%e218731218977%_
                                           _%hd218732218981%_
                                           _%tl218733218984%_
                                           _%e218734218987%_
                                           _%hd218735218991%_
                                           _%tl218736218994%_)))
                                  (_%__match222881222882%_
                                   _%e218731218977%_
                                   _%hd218732218981%_
                                   _%tl218733218984%_
                                   _%e218734218987%_
                                   _%hd218735218991%_
                                   _%tl218736218994%_))))
                          (let () (declare (not safe)) (_%g218728218757%_)))))
                  (let () (declare (not safe)) (_%g218728218757%_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx219079%_)
        (let* ((_%g219082219106%_
                (lambda (_%g219083219102%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g219083219102%_)))
               (_%g219081219314%_
                (lambda (_%g219083219110%_)
                  (if (gx#stx-pair? _%g219083219110%_)
                      (let ((_%e219086219113%_
                             (gx#syntax-e _%g219083219110%_)))
                        (let ((_%hd219087219117%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219086219113%_)))
                              (_%tl219088219120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219086219113%_))))
                          (if (gx#stx-pair? _%tl219088219120%_)
                              (let ((_%e219089219123%_
                                     (gx#syntax-e _%tl219088219120%_)))
                                (let ((_%hd219090219127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219089219123%_)))
                                      (_%tl219091219130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219089219123%_))))
                                  (if (gx#stx-pair/null? _%hd219090219127%_)
                                      (let ((_g223427_
                                             (gx#syntax-split-splice
                                              _%hd219090219127%_
                                              '0)))
                                        (begin
                                          (let ((_g223428_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g223427_)
                                                       (##values-length
                                                        _g223427_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g223428_ 2)))
                                                (error "Context expects 2 values"
                                                       _g223428_)))
                                          (let ((_%target219092219133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g223427_ 0)))
                                                (_%tl219094219136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g223427_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%tl219094219136%_)
                                                (letrec ((_%loop219095219139%_
                                                          (lambda (_%hd219093219143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e219099219146%_)
                    (if (gx#stx-pair? _%hd219093219143%_)
                        (let ((_%e219096219148%_
                               (gx#syntax-e _%hd219093219143%_)))
                          (let ((_%lp-hd219097219152%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e219096219148%_)))
                                (_%lp-tl219098219155%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e219096219148%_))))
                            (_%loop219095219139%_
                             _%lp-tl219098219155%_
                             (cons _%lp-hd219097219152%_ _%e219099219146%_))))
                        (let ((_%e219100219158%_ (reverse _%e219099219146%_)))
                          ((lambda (_%g219084219161%_ _%g219085219163%_)
                             (if (gx#stx-list? _%g219084219161%_)
                                 (let* ((_%g219181219198%_
                                         (lambda (_%g219182219194%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g219182219194%_)))
                                        (_%g219180219302%_
                                         (lambda (_%g219182219202%_)
                                           (if (gx#stx-pair/null?
                                                _%g219182219202%_)
                                               (let ((_g223429_
                                                      (gx#syntax-split-splice
                                                       _%g219182219202%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g223430_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g223429_)
                        (##values-length _g223429_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g223430_ 2)))
                 (error "Context expects 2 values" _g223430_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target219184219205%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g223429_
                                                             0)))
                                                         (_%tl219186219208%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g223429_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl219186219208%_)
                                                         (letrec ((_%loop219187219211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd219185219215%_ _%$e219191219218%_)
                             (if (gx#stx-pair? _%hd219185219215%_)
                                 (let ((_%e219188219220%_
                                        (gx#syntax-e _%hd219185219215%_)))
                                   (let ((_%lp-hd219189219224%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e219188219220%_)))
                                         (_%lp-tl219190219227%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e219188219220%_))))
                                     (_%loop219187219211%_
                                      _%lp-tl219190219227%_
                                      (cons _%lp-hd219189219224%_
                                            _%$e219191219218%_))))
                                 (let ((_%$e219192219230%_
                                        (reverse _%$e219191219218%_)))
                                   ((lambda (_%g219183219233%_)
                                      (let* ((_%g219249219257%_
                                              (lambda (_%g219250219253%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g219250219253%_)))
                                             (_%g219248219290%_
                                              (lambda (_%g219250219261%_)
                                                ((lambda (_%g219251219264%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%g219085219163%_
                          _%g219183219233%_)
                         (foldr (lambda (_%g219278219282%_
                                         _%g219279219285%_
                                         _%g219280219287%_)
                                  (cons (cons _%g219279219285%_
                                              (cons _%g219278219282%_ '()))
                                        _%g219280219287%_))
                                '()
                                _%g219085219163%_
                                _%g219183219233%_))
                       (cons _%g219251219264%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g219250219261%_))))
                                        (_%g219248219290%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx219079%_
                                          (foldr (lambda (_%g219293219296%_
                                                          _%g219294219299%_)
                                                   (cons _%g219293219296%_
                                                         _%g219294219299%_))
                                                 '()
                                                 _%g219183219233%_)
                                          _%g219084219161%_))))
                                    _%$e219192219230%_))))))
                   (_%loop219187219211%_ _%target219184219205%_ '()))
                 (_%g219181219198%_ _%g219182219202%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g219181219198%_
                                                _%g219182219202%_)))))
                                   (_%g219180219302%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g219305219308%_
                                                     _%g219306219311%_)
                                              (cons _%g219305219308%_
                                                    _%g219306219311%_))
                                            '()
                                            _%g219085219163%_))))
                                 (_%g219082219106%_ _%g219083219110%_)))
                           _%tl219091219130%_
                           _%e219100219158%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop219095219139%_
                                                   _%target219092219133%_
                                                   '()))
                                                (_%g219082219106%_
                                                 _%g219083219110%_)))))
                                      (_%g219082219106%_ _%g219083219110%_))))
                              (_%g219082219106%_ _%g219083219110%_))))
                      (_%g219082219106%_ _%g219083219110%_)))))
          (_%g219081219314%_ _%stx219079%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx219320%_)
        (let* ((_%__stx222884222885%_ _%$stx219320%_)
               (_%g219326219409%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx222884222885%_))))
          (let ((_%__kont222887222888%_
                 (lambda (_%g219328219729%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g219745219748%_
                                               _%g219746219751%_)
                                        (cons _%g219745219748%_
                                              _%g219746219751%_))
                                      '()
                                      _%g219328219729%_)))))
                (_%__kont222891222892%_
                 (lambda (_%g219344219639%_
                          _%g219345219641%_
                          _%g219346219642%_
                          _%g219347219643%_)
                   (cons _%g219347219643%_
                         (cons (cons (cons _%g219346219642%_
                                           (cons _%g219345219641%_ '()))
                                     '())
                               (foldr (lambda (_%g219665219668%_
                                               _%g219666219671%_)
                                        (cons _%g219665219668%_
                                              _%g219666219671%_))
                                      '()
                                      _%g219344219639%_)))))
                (_%__kont222895222896%_
                 (lambda (_%g219369219514%_
                          _%g219370219516%_
                          _%g219371219517%_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_%g219539219546%_
                                               _%g219540219549%_)
                                        (cons _%g219539219546%_
                                              _%g219540219549%_))
                                      '()
                                      _%g219370219516%_)
                               (cons (cons (foldr (lambda (_%g219541219552%_
                                                           _%g219542219555%_)
                                                    (cons _%g219541219552%_
                                                          _%g219542219555%_))
                                                  '()
                                                  _%g219371219517%_)
                                           (foldr (lambda (_%g219543219558%_
                                                           _%g219544219561%_)
                                                    (cons _%g219543219558%_
                                                          _%g219544219561%_))
                                                  '()
                                                  _%g219369219514%_))
                                     '()))))))
            (let* ((_%__match222977222978%_
                    (lambda (_%e219372219416%_
                             _%hd219373219420%_
                             _%tl219374219423%_
                             _%e219375219426%_
                             _%hd219376219430%_
                             _%tl219377219433%_
                             _%__splice222897222898%_
                             _%target219378219436%_
                             _%tl219380219439%_)
                      (letrec ((_%loop219381219442%_
                                (lambda (_%hd219379219446%_
                                         _%expr219385219449%_
                                         _%hd219386219450%_)
                                  (if (gx#stx-pair? _%hd219379219446%_)
                                      (let ((_%e219382219452%_
                                             (gx#syntax-e _%hd219379219446%_)))
                                        (let ((_%lp-tl219384219459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219382219452%_)))
                                              (_%lp-hd219383219456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219382219452%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd219383219456%_)
                                              (let ((_%e219389219462%_
                                                     (gx#syntax-e
                                                      _%lp-hd219383219456%_)))
                                                (let ((_%tl219391219469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e219389219462%_)))
                                                      (_%hd219390219466%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e219389219462%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl219391219469%_)
                                                      (let ((_%e219392219472%_
                                                             (gx#syntax-e
                                                              _%tl219391219469%_)))
                                                        (let ((_%tl219394219479%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e219392219472%_)))
                      (_%hd219393219476%_
                       (let ()
                         (declare (not safe))
                         (##car _%e219392219472%_))))
                  (if (gx#stx-null? _%tl219394219479%_)
                      (_%loop219381219442%_
                       _%lp-tl219384219459%_
                       (cons _%hd219393219476%_ _%expr219385219449%_)
                       (cons _%hd219390219466%_ _%hd219386219450%_))
                      (let () (declare (not safe)) (_%g219326219409%_)))))
              (let () (declare (not safe)) (_%g219326219409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g219326219409%_)))))
                                      (let ((_%hd219388219484%_
                                             (reverse _%hd219386219450%_))
                                            (_%expr219387219482%_
                                             (reverse _%expr219385219449%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl219377219433%_)
                                            (let ((_%__splice222899222900%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl219377219433%_
                                                    '0)))
                                              (let ((_%tl219397219489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice222899222900%_
                                                        '1)))
                                                    (_%target219395219486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice222899222900%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl219397219489%_)
                                                    (letrec ((_%loop219398219492%_
                                                              (lambda (_%hd219396219496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body219402219499%_)
                        (if (gx#stx-pair? _%hd219396219496%_)
                            (let ((_%e219399219501%_
                                   (gx#syntax-e _%hd219396219496%_)))
                              (let ((_%lp-tl219401219508%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e219399219501%_)))
                                    (_%lp-hd219400219505%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e219399219501%_))))
                                (_%loop219398219492%_
                                 _%lp-tl219401219508%_
                                 (cons _%lp-hd219400219505%_
                                       _%body219402219499%_))))
                            (let ((_%body219403219511%_
                                   (reverse _%body219402219499%_)))
                              (_%__kont222895222896%_
                               _%body219403219511%_
                               _%expr219387219482%_
                               _%hd219388219484%_))))))
              (_%loop219398219492%_ _%target219395219486%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g219326219409%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g219326219409%_))))))))
                        (_%loop219381219442%_
                         _%target219378219436%_
                         '()
                         '()))))
                   (_%__match222969222970%_
                    (lambda (_%e219372219416%_
                             _%hd219373219420%_
                             _%tl219374219423%_
                             _%e219375219426%_
                             _%hd219376219430%_
                             _%tl219377219433%_)
                      (if (gx#stx-pair/null? _%hd219376219430%_)
                          (let ((_%__splice222897222898%_
                                 (gx#syntax-split-splice->vector
                                  _%hd219376219430%_
                                  '0)))
                            (let ((_%tl219380219439%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice222897222898%_
                                      '1)))
                                  (_%target219378219436%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice222897222898%_
                                      '0))))
                              (if (gx#stx-null? _%tl219380219439%_)
                                  (_%__match222977222978%_
                                   _%e219372219416%_
                                   _%hd219373219420%_
                                   _%tl219374219423%_
                                   _%e219375219426%_
                                   _%hd219376219430%_
                                   _%tl219377219433%_
                                   _%__splice222897222898%_
                                   _%target219378219436%_
                                   _%tl219380219439%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g219326219409%_)))))
                          (let () (declare (not safe)) (_%g219326219409%_)))))
                   (_%__match222957222958%_
                    (lambda (_%e219348219571%_
                             _%hd219349219575%_
                             _%tl219350219578%_
                             _%e219351219581%_
                             _%hd219352219585%_
                             _%tl219353219588%_
                             _%e219354219591%_
                             _%hd219355219595%_
                             _%tl219356219598%_
                             _%e219357219601%_
                             _%hd219358219605%_
                             _%tl219359219608%_
                             _%__splice222893222894%_
                             _%target219360219611%_
                             _%tl219362219614%_)
                      (letrec ((_%loop219363219617%_
                                (lambda (_%hd219361219621%_
                                         _%body219367219624%_)
                                  (if (gx#stx-pair? _%hd219361219621%_)
                                      (let ((_%e219364219626%_
                                             (gx#syntax-e _%hd219361219621%_)))
                                        (let ((_%lp-tl219366219633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219364219626%_)))
                                              (_%lp-hd219365219630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219364219626%_))))
                                          (_%loop219363219617%_
                                           _%lp-tl219366219633%_
                                           (cons _%lp-hd219365219630%_
                                                 _%body219367219624%_))))
                                      (let ((_%body219368219636%_
                                             (reverse _%body219367219624%_)))
                                        (let ((_%g219344219639%_
                                               _%body219368219636%_)
                                              (_%g219345219641%_
                                               _%hd219358219605%_)
                                              (_%g219346219642%_
                                               _%hd219355219595%_)
                                              (_%g219347219643%_
                                               _%hd219349219575%_))
                                          (if (|gerbil/core/match[1]#match-pattern?|
                                               _%g219346219642%_)
                                              (_%__kont222891222892%_
                                               _%g219344219639%_
                                               _%g219345219641%_
                                               _%g219346219642%_
                                               _%g219347219643%_)
                                              (_%__match222969222970%_
                                               _%e219348219571%_
                                               _%hd219349219575%_
                                               _%tl219350219578%_
                                               _%e219351219581%_
                                               _%hd219352219585%_
                                               _%tl219353219588%_))))))))
                        (_%loop219363219617%_ _%target219360219611%_ '()))))
                   (_%__match222923222924%_
                    (lambda (_%e219329219681%_
                             _%hd219330219685%_
                             _%tl219331219688%_
                             _%e219332219691%_
                             _%hd219333219695%_
                             _%tl219334219698%_
                             _%__splice222889222890%_
                             _%target219335219701%_
                             _%tl219337219704%_)
                      (letrec ((_%loop219338219707%_
                                (lambda (_%hd219336219711%_
                                         _%body219342219714%_)
                                  (if (gx#stx-pair? _%hd219336219711%_)
                                      (let ((_%e219339219716%_
                                             (gx#syntax-e _%hd219336219711%_)))
                                        (let ((_%lp-tl219341219723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219339219716%_)))
                                              (_%lp-hd219340219720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219339219716%_))))
                                          (_%loop219338219707%_
                                           _%lp-tl219341219723%_
                                           (cons _%lp-hd219340219720%_
                                                 _%body219342219714%_))))
                                      (let ((_%body219343219726%_
                                             (reverse _%body219342219714%_)))
                                        (_%__kont222887222888%_
                                         _%body219343219726%_))))))
                        (_%loop219338219707%_ _%target219335219701%_ '())))))
              (if (gx#stx-pair? _%__stx222884222885%_)
                  (let ((_%e219329219681%_
                         (gx#syntax-e _%__stx222884222885%_)))
                    (let ((_%tl219331219688%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e219329219681%_)))
                          (_%hd219330219685%_
                           (let ()
                             (declare (not safe))
                             (##car _%e219329219681%_))))
                      (if (gx#stx-pair? _%tl219331219688%_)
                          (let ((_%e219332219691%_
                                 (gx#syntax-e _%tl219331219688%_)))
                            (let ((_%tl219334219698%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219332219691%_)))
                                  (_%hd219333219695%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219332219691%_))))
                              (if (gx#stx-null? _%hd219333219695%_)
                                  (if (gx#stx-pair/null? _%tl219334219698%_)
                                      (let ((_%__splice222889222890%_
                                             (gx#syntax-split-splice->vector
                                              _%tl219334219698%_
                                              '0)))
                                        (let ((_%tl219337219704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice222889222890%_
                                                  '1)))
                                              (_%target219335219701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice222889222890%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl219337219704%_)
                                              (_%__match222923222924%_
                                               _%e219329219681%_
                                               _%hd219330219685%_
                                               _%tl219331219688%_
                                               _%e219332219691%_
                                               _%hd219333219695%_
                                               _%tl219334219698%_
                                               _%__splice222889222890%_
                                               _%target219335219701%_
                                               _%tl219337219704%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd219333219695%_)
                                                  (let ((_%__splice222897222898%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd219333219695%_
                                                          '0)))
                                                    (let ((_%tl219380219439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice222897222898%_
                                                              '1)))
                                                          (_%target219378219436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice222897222898%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl219380219439%_)
                                                          (_%__match222977222978%_
                                                           _%e219329219681%_
                                                           _%hd219330219685%_
                                                           _%tl219331219688%_
                                                           _%e219332219691%_
                                                           _%hd219333219695%_
                                                           _%tl219334219698%_
                                                           _%__splice222897222898%_
                                                           _%target219378219436%_
                                                           _%tl219380219439%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g219326219409%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219326219409%_))))))
                                      (if (gx#stx-pair/null?
                                           _%hd219333219695%_)
                                          (let ((_%__splice222897222898%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd219333219695%_
                                                  '0)))
                                            (let ((_%tl219380219439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice222897222898%_
                                                      '1)))
                                                  (_%target219378219436%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice222897222898%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl219380219439%_)
                                                  (_%__match222977222978%_
                                                   _%e219329219681%_
                                                   _%hd219330219685%_
                                                   _%tl219331219688%_
                                                   _%e219332219691%_
                                                   _%hd219333219695%_
                                                   _%tl219334219698%_
                                                   _%__splice222897222898%_
                                                   _%target219378219436%_
                                                   _%tl219380219439%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219326219409%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g219326219409%_))))
                                  (if (gx#stx-pair? _%hd219333219695%_)
                                      (let ((_%e219354219591%_
                                             (gx#syntax-e _%hd219333219695%_)))
                                        (let ((_%tl219356219598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219354219591%_)))
                                              (_%hd219355219595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219354219591%_))))
                                          (if (gx#stx-pair? _%tl219356219598%_)
                                              (let ((_%e219357219601%_
                                                     (gx#syntax-e
                                                      _%tl219356219598%_)))
                                                (let ((_%tl219359219608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e219357219601%_)))
                                                      (_%hd219358219605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e219357219601%_))))
                                                  (if (gx#stx-null?
                                                       _%tl219359219608%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl219334219698%_)
                                                          (let ((_%__splice222893222894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%tl219334219698%_
                          '0)))
                    (let ((_%tl219362219614%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice222893222894%_ '1)))
                          (_%target219360219611%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice222893222894%_ '0))))
                      (if (gx#stx-null? _%tl219362219614%_)
                          (_%__match222957222958%_
                           _%e219329219681%_
                           _%hd219330219685%_
                           _%tl219331219688%_
                           _%e219332219691%_
                           _%hd219333219695%_
                           _%tl219334219698%_
                           _%e219354219591%_
                           _%hd219355219595%_
                           _%tl219356219598%_
                           _%e219357219601%_
                           _%hd219358219605%_
                           _%tl219359219608%_
                           _%__splice222893222894%_
                           _%target219360219611%_
                           _%tl219362219614%_)
                          (if (gx#stx-pair/null? _%hd219333219695%_)
                              (let ((_%__splice222897222898%_
                                     (gx#syntax-split-splice->vector
                                      _%hd219333219695%_
                                      '0)))
                                (let ((_%tl219380219439%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice222897222898%_
                                          '1)))
                                      (_%target219378219436%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice222897222898%_
                                          '0))))
                                  (if (gx#stx-null? _%tl219380219439%_)
                                      (_%__match222977222978%_
                                       _%e219329219681%_
                                       _%hd219330219685%_
                                       _%tl219331219688%_
                                       _%e219332219691%_
                                       _%hd219333219695%_
                                       _%tl219334219698%_
                                       _%__splice222897222898%_
                                       _%target219378219436%_
                                       _%tl219380219439%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g219326219409%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g219326219409%_))))))
                  (if (gx#stx-pair/null? _%hd219333219695%_)
                      (let ((_%__splice222897222898%_
                             (gx#syntax-split-splice->vector
                              _%hd219333219695%_
                              '0)))
                        (let ((_%tl219380219439%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice222897222898%_ '1)))
                              (_%target219378219436%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice222897222898%_ '0))))
                          (if (gx#stx-null? _%tl219380219439%_)
                              (_%__match222977222978%_
                               _%e219329219681%_
                               _%hd219330219685%_
                               _%tl219331219688%_
                               _%e219332219691%_
                               _%hd219333219695%_
                               _%tl219334219698%_
                               _%__splice222897222898%_
                               _%target219378219436%_
                               _%tl219380219439%_)
                              (let ()
                                (declare (not safe))
                                (_%g219326219409%_)))))
                      (let () (declare (not safe)) (_%g219326219409%_))))
              (if (gx#stx-pair/null? _%hd219333219695%_)
                  (let ((_%__splice222897222898%_
                         (gx#syntax-split-splice->vector
                          _%hd219333219695%_
                          '0)))
                    (let ((_%tl219380219439%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice222897222898%_ '1)))
                          (_%target219378219436%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice222897222898%_ '0))))
                      (if (gx#stx-null? _%tl219380219439%_)
                          (_%__match222977222978%_
                           _%e219329219681%_
                           _%hd219330219685%_
                           _%tl219331219688%_
                           _%e219332219691%_
                           _%hd219333219695%_
                           _%tl219334219698%_
                           _%__splice222897222898%_
                           _%target219378219436%_
                           _%tl219380219439%_)
                          (let () (declare (not safe)) (_%g219326219409%_)))))
                  (let () (declare (not safe)) (_%g219326219409%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd219333219695%_)
                                                  (let ((_%__splice222897222898%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd219333219695%_
                                                          '0)))
                                                    (let ((_%tl219380219439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice222897222898%_
                                                              '1)))
                                                          (_%target219378219436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice222897222898%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl219380219439%_)
                                                          (_%__match222977222978%_
                                                           _%e219329219681%_
                                                           _%hd219330219685%_
                                                           _%tl219331219688%_
                                                           _%e219332219691%_
                                                           _%hd219333219695%_
                                                           _%tl219334219698%_
                                                           _%__splice222897222898%_
                                                           _%target219378219436%_
                                                           _%tl219380219439%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g219326219409%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219326219409%_))))))
                                      (if (gx#stx-pair/null?
                                           _%hd219333219695%_)
                                          (let ((_%__splice222897222898%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd219333219695%_
                                                  '0)))
                                            (let ((_%tl219380219439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice222897222898%_
                                                      '1)))
                                                  (_%target219378219436%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice222897222898%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl219380219439%_)
                                                  (_%__match222977222978%_
                                                   _%e219329219681%_
                                                   _%hd219330219685%_
                                                   _%tl219331219688%_
                                                   _%e219332219691%_
                                                   _%hd219333219695%_
                                                   _%tl219334219698%_
                                                   _%__splice222897222898%_
                                                   _%target219378219436%_
                                                   _%tl219380219439%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219326219409%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g219326219409%_)))))))
                          (let () (declare (not safe)) (_%g219326219409%_)))))
                  (let () (declare (not safe)) (_%g219326219409%_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx219762%_)
        (let* ((_%__stx222980222981%_ _%$stx219762%_)
               (_%g219767219819%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx222980222981%_))))
          (let ((_%__kont222983222984%_
                 (lambda (_%g219769219985%_
                          _%g219770219987%_
                          _%g219771219988%_
                          _%g219772219989%_
                          _%g219773219990%_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _%g219772219989%_
                                           (cons _%g219771219988%_ '()))
                                     '())
                               (cons (cons _%g219773219990%_
                                           (cons _%g219770219987%_
                                                 (foldr (lambda (_%g220015220018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g220016220021%_)
                  (cons _%g220015220018%_ _%g220016220021%_))
                '()
                _%g219769219985%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont222987222988%_
                 (lambda (_%g219798219874%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g219891219894%_
                                               _%g219892219897%_)
                                        (cons _%g219891219894%_
                                              _%g219892219897%_))
                                      '()
                                      _%g219798219874%_))))))
            (let* ((_%__match223053223054%_
                    (lambda (_%e219799219826%_
                             _%hd219800219830%_
                             _%tl219801219833%_
                             _%e219802219836%_
                             _%hd219803219840%_
                             _%tl219804219843%_
                             _%__splice222989222990%_
                             _%target219805219846%_
                             _%tl219807219849%_)
                      (letrec ((_%loop219808219852%_
                                (lambda (_%hd219806219856%_
                                         _%body219812219859%_)
                                  (if (gx#stx-pair? _%hd219806219856%_)
                                      (let ((_%e219809219861%_
                                             (gx#syntax-e _%hd219806219856%_)))
                                        (let ((_%lp-tl219811219868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219809219861%_)))
                                              (_%lp-hd219810219865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219809219861%_))))
                                          (_%loop219808219852%_
                                           _%lp-tl219811219868%_
                                           (cons _%lp-hd219810219865%_
                                                 _%body219812219859%_))))
                                      (let ((_%body219813219871%_
                                             (reverse _%body219812219859%_)))
                                        (_%__kont222987222988%_
                                         _%body219813219871%_))))))
                        (_%loop219808219852%_ _%target219805219846%_ '()))))
                   (_%__match223031223032%_
                    (lambda (_%e219774219907%_
                             _%hd219775219911%_
                             _%tl219776219914%_
                             _%e219777219917%_
                             _%hd219778219921%_
                             _%tl219779219924%_
                             _%e219780219927%_
                             _%hd219781219931%_
                             _%tl219782219934%_
                             _%e219783219937%_
                             _%hd219784219941%_
                             _%tl219785219944%_
                             _%e219786219947%_
                             _%hd219787219951%_
                             _%tl219788219954%_
                             _%__splice222985222986%_
                             _%target219789219957%_
                             _%tl219791219960%_)
                      (letrec ((_%loop219792219963%_
                                (lambda (_%hd219790219967%_
                                         _%body219796219970%_)
                                  (if (gx#stx-pair? _%hd219790219967%_)
                                      (let ((_%e219793219972%_
                                             (gx#syntax-e _%hd219790219967%_)))
                                        (let ((_%lp-tl219795219979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219793219972%_)))
                                              (_%lp-hd219794219976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219793219972%_))))
                                          (_%loop219792219963%_
                                           _%lp-tl219795219979%_
                                           (cons _%lp-hd219794219976%_
                                                 _%body219796219970%_))))
                                      (let ((_%body219797219982%_
                                             (reverse _%body219796219970%_)))
                                        (_%__kont222983222984%_
                                         _%body219797219982%_
                                         _%tl219782219934%_
                                         _%hd219787219951%_
                                         _%hd219784219941%_
                                         _%hd219775219911%_))))))
                        (_%loop219792219963%_ _%target219789219957%_ '())))))
              (if (gx#stx-pair? _%__stx222980222981%_)
                  (let ((_%e219774219907%_
                         (gx#syntax-e _%__stx222980222981%_)))
                    (let ((_%tl219776219914%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e219774219907%_)))
                          (_%hd219775219911%_
                           (let ()
                             (declare (not safe))
                             (##car _%e219774219907%_))))
                      (if (gx#stx-pair? _%tl219776219914%_)
                          (let ((_%e219777219917%_
                                 (gx#syntax-e _%tl219776219914%_)))
                            (let ((_%tl219779219924%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219777219917%_)))
                                  (_%hd219778219921%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219777219917%_))))
                              (if (gx#stx-pair? _%hd219778219921%_)
                                  (let ((_%e219780219927%_
                                         (gx#syntax-e _%hd219778219921%_)))
                                    (let ((_%tl219782219934%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e219780219927%_)))
                                          (_%hd219781219931%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e219780219927%_))))
                                      (if (gx#stx-pair? _%hd219781219931%_)
                                          (let ((_%e219783219937%_
                                                 (gx#syntax-e
                                                  _%hd219781219931%_)))
                                            (let ((_%tl219785219944%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e219783219937%_)))
                                                  (_%hd219784219941%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e219783219937%_))))
                                              (if (gx#stx-pair?
                                                   _%tl219785219944%_)
                                                  (let ((_%e219786219947%_
                                                         (gx#syntax-e
                                                          _%tl219785219944%_)))
                                                    (let ((_%tl219788219954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e219786219947%_)))
                                                          (_%hd219787219951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e219786219947%_))))
                                                      (if (gx#stx-null?
                                                           _%tl219788219954%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl219779219924%_)
                                                              (let ((_%__splice222985222986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl219779219924%_
                              '0)))
                        (let ((_%tl219791219960%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice222985222986%_ '1)))
                              (_%target219789219957%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice222985222986%_ '0))))
                          (if (gx#stx-null? _%tl219791219960%_)
                              (_%__match223031223032%_
                               _%e219774219907%_
                               _%hd219775219911%_
                               _%tl219776219914%_
                               _%e219777219917%_
                               _%hd219778219921%_
                               _%tl219779219924%_
                               _%e219780219927%_
                               _%hd219781219931%_
                               _%tl219782219934%_
                               _%e219783219937%_
                               _%hd219784219941%_
                               _%tl219785219944%_
                               _%e219786219947%_
                               _%hd219787219951%_
                               _%tl219788219954%_
                               _%__splice222985222986%_
                               _%target219789219957%_
                               _%tl219791219960%_)
                              (let ()
                                (declare (not safe))
                                (_%g219767219819%_)))))
                      (let () (declare (not safe)) (_%g219767219819%_)))
                  (let () (declare (not safe)) (_%g219767219819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219767219819%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g219767219819%_)))))
                                  (if (gx#stx-null? _%hd219778219921%_)
                                      (if (gx#stx-pair/null?
                                           _%tl219779219924%_)
                                          (let ((_%__splice222989222990%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl219779219924%_
                                                  '0)))
                                            (let ((_%tl219807219849%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice222989222990%_
                                                      '1)))
                                                  (_%target219805219846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice222989222990%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl219807219849%_)
                                                  (_%__match223053223054%_
                                                   _%e219774219907%_
                                                   _%hd219775219911%_
                                                   _%tl219776219914%_
                                                   _%e219777219917%_
                                                   _%hd219778219921%_
                                                   _%tl219779219924%_
                                                   _%__splice222989222990%_
                                                   _%target219805219846%_
                                                   _%tl219807219849%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219767219819%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g219767219819%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g219767219819%_))))))
                          (let () (declare (not safe)) (_%g219767219819%_)))))
                  (let () (declare (not safe)) (_%g219767219819%_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx220030%_)
        (let* ((_%__stx223056223057%_ _%$stx220030%_)
               (_%g220041220187%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx223056223057%_))))
          (let ((_%__kont223059223060%_
                 (lambda (_%g220043220787%_
                          _%g220044220789%_
                          _%g220045220790%_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_%g220811220814%_ _%g220812220817%_)
                                  (cons (cons _%g220045220790%_
                                              (cons _%g220811220814%_
                                                    (cons _%g220043220787%_
                                                          '())))
                                        _%g220812220817%_))
                                '()
                                _%g220044220789%_))))
                (_%__kont223063223064%_
                 (lambda (_%g220067220679%_
                          _%g220068220681%_
                          _%g220069220682%_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_%g220703220706%_ _%g220704220709%_)
                                  (cons (cons _%g220069220682%_
                                              (cons _%g220703220706%_
                                                    (cons _%g220067220679%_
                                                          '())))
                                        _%g220704220709%_))
                                '()
                                _%g220068220681%_))))
                (_%__kont223067223068%_
                 (lambda (_%g220091220581%_
                          _%g220092220583%_
                          _%g220093220584%_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _%g220093220584%_
                                     (cons _%g220092220583%_
                                           (cons _%g220091220581%_ '())))
                               '()))))
                (_%__kont223069223070%_
                 (lambda (_%g220109220507%_ _%g220110220509%_)
                   (cons _%g220110220509%_ (cons _%g220109220507%_ '()))))
                (_%__kont223071223072%_
                 (lambda (_%g220120220455%_ _%g220121220457%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _%g220121220457%_
                                           (cons _%g220120220455%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (_%__kont223073223074%_
                 (lambda (_%g220128220407%_
                          _%g220129220409%_
                          _%g220130220410%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _%g220130220410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g220129220409%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g220128220407%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont223075223076%_
                 (lambda (_%g220143220338%_
                          _%g220144220340%_
                          _%g220145220341%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g220145220341%_
                                                       (cons _%g220144220340%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g220143220338%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont223077223078%_
                 (lambda (_%g220159220258%_
                          _%g220160220260%_
                          _%g220161220261%_
                          _%g220162220262%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _%g220162220262%_
                                                       (cons _%g220161220261%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g220159220258%_
                                                             (cons (cons _%g220160220260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match223229223230%_
                    (lambda (_%e220131220367%_
                             _%hd220132220371%_
                             _%tl220133220374%_
                             _%e220134220377%_
                             _%hd220135220381%_
                             _%tl220136220384%_
                             _%e220137220387%_
                             _%hd220138220391%_
                             _%tl220139220394%_)
                      (if (gx#identifier? _%hd220138220391%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g223431_|
                               _%hd220138220391%_)
                              (if (gx#stx-pair? _%tl220139220394%_)
                                  (let ((_%e220140220397%_
                                         (gx#syntax-e _%tl220139220394%_)))
                                    (let ((_%tl220142220404%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e220140220397%_)))
                                          (_%hd220141220401%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e220140220397%_))))
                                      (if (gx#stx-null? _%tl220142220404%_)
                                          (_%__kont223073223074%_
                                           _%hd220141220401%_
                                           _%hd220135220381%_
                                           _%hd220132220371%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g220041220187%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g220041220187%_)))
                              (let ()
                                (declare (not safe))
                                (_%g220041220187%_)))
                          (if (gx#stx-datum? _%hd220138220391%_)
                              (let ((_%e220155220324%_
                                     (gx#stx-e _%hd220138220391%_)))
                                (if (equal? _%e220155220324%_ '::)
                                    (if (gx#stx-pair? _%tl220139220394%_)
                                        (let ((_%e220156220328%_
                                               (gx#syntax-e
                                                _%tl220139220394%_)))
                                          (let ((_%tl220158220335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e220156220328%_)))
                                                (_%hd220157220332%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e220156220328%_))))
                                            (if (gx#stx-null?
                                                 _%tl220158220335%_)
                                                (_%__kont223075223076%_
                                                 _%hd220157220332%_
                                                 _%hd220135220381%_
                                                 _%hd220132220371%_)
                                                (if (gx#stx-pair?
                                                     _%tl220158220335%_)
                                                    (let ((_%e220176220238%_
                                                           (gx#syntax-e
                                                            _%tl220158220335%_)))
                                                      (let ((_%tl220178220245%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e220176220238%_)))
                    (_%hd220177220242%_
                     (let () (declare (not safe)) (##car _%e220176220238%_))))
                (if (gx#identifier? _%hd220177220242%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g223432_|
                         _%hd220177220242%_)
                        (if (gx#stx-pair? _%tl220178220245%_)
                            (let ((_%e220179220248%_
                                   (gx#syntax-e _%tl220178220245%_)))
                              (let ((_%tl220181220255%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e220179220248%_)))
                                    (_%hd220180220252%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e220179220248%_))))
                                (if (gx#stx-null? _%tl220181220255%_)
                                    (_%__kont223077223078%_
                                     _%hd220180220252%_
                                     _%hd220157220332%_
                                     _%hd220135220381%_
                                     _%hd220132220371%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g220041220187%_)))))
                            (let () (declare (not safe)) (_%g220041220187%_)))
                        (let () (declare (not safe)) (_%g220041220187%_)))
                    (let () (declare (not safe)) (_%g220041220187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g220041220187%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g220041220187%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g220041220187%_))))
                              (let ()
                                (declare (not safe))
                                (_%g220041220187%_))))))
                   (_%__match223209223210%_
                    (lambda (_%e220122220435%_
                             _%hd220123220439%_
                             _%tl220124220442%_
                             _%e220125220445%_
                             _%hd220126220449%_
                             _%tl220127220452%_)
                      (if (gx#stx-null? _%tl220127220452%_)
                          (_%__kont223071223072%_
                           _%hd220126220449%_
                           _%hd220123220439%_)
                          (if (gx#stx-pair? _%tl220127220452%_)
                              (let ((_%e220137220387%_
                                     (gx#syntax-e _%tl220127220452%_)))
                                (let ((_%tl220139220394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e220137220387%_)))
                                      (_%hd220138220391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e220137220387%_))))
                                  (if (gx#identifier? _%hd220138220391%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g223431_|
                                           _%hd220138220391%_)
                                          (if (gx#stx-pair? _%tl220139220394%_)
                                              (let ((_%e220140220397%_
                                                     (gx#syntax-e
                                                      _%tl220139220394%_)))
                                                (let ((_%tl220142220404%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220140220397%_)))
                                                      (_%hd220141220401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220140220397%_))))
                                                  (if (gx#stx-null?
                                                       _%tl220142220404%_)
                                                      (_%__kont223073223074%_
                                                       _%hd220141220401%_
                                                       _%hd220126220449%_
                                                       _%hd220123220439%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g220041220187%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g220041220187%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g220041220187%_)))
                                      (if (gx#stx-datum? _%hd220138220391%_)
                                          (let ((_%e220155220324%_
                                                 (gx#stx-e
                                                  _%hd220138220391%_)))
                                            (if (equal? _%e220155220324%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl220139220394%_)
                                                    (let ((_%e220156220328%_
                                                           (gx#syntax-e
                                                            _%tl220139220394%_)))
                                                      (let ((_%tl220158220335%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e220156220328%_)))
                    (_%hd220157220332%_
                     (let () (declare (not safe)) (##car _%e220156220328%_))))
                (if (gx#stx-null? _%tl220158220335%_)
                    (_%__kont223075223076%_
                     _%hd220157220332%_
                     _%hd220126220449%_
                     _%hd220123220439%_)
                    (if (gx#stx-pair? _%tl220158220335%_)
                        (let ((_%e220176220238%_
                               (gx#syntax-e _%tl220158220335%_)))
                          (let ((_%tl220178220245%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e220176220238%_)))
                                (_%hd220177220242%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e220176220238%_))))
                            (if (gx#identifier? _%hd220177220242%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g223432_|
                                     _%hd220177220242%_)
                                    (if (gx#stx-pair? _%tl220178220245%_)
                                        (let ((_%e220179220248%_
                                               (gx#syntax-e
                                                _%tl220178220245%_)))
                                          (let ((_%tl220181220255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e220179220248%_)))
                                                (_%hd220180220252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e220179220248%_))))
                                            (if (gx#stx-null?
                                                 _%tl220181220255%_)
                                                (_%__kont223077223078%_
                                                 _%hd220180220252%_
                                                 _%hd220157220332%_
                                                 _%hd220126220449%_
                                                 _%hd220123220439%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g220041220187%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g220041220187%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g220041220187%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g220041220187%_)))))
                        (let () (declare (not safe)) (_%g220041220187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g220041220187%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g220041220187%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g220041220187%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g220041220187%_))))))
                   (_%__match223139223140%_
                    (lambda (_%e220070220611%_
                             _%hd220071220615%_
                             _%tl220072220618%_
                             _%e220073220621%_
                             _%hd220074220625%_
                             _%tl220075220628%_
                             _%e220076220631%_
                             _%hd220077220635%_
                             _%tl220078220638%_
                             _%__splice223065223066%_
                             _%target220079220641%_
                             _%tl220081220644%_)
                      (letrec ((_%loop220082220647%_
                                (lambda (_%hd220080220651%_
                                         _%pred220086220654%_)
                                  (if (gx#stx-pair? _%hd220080220651%_)
                                      (let ((_%e220083220656%_
                                             (gx#syntax-e _%hd220080220651%_)))
                                        (let ((_%lp-tl220085220663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e220083220656%_)))
                                              (_%lp-hd220084220660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e220083220656%_))))
                                          (_%loop220082220647%_
                                           _%lp-tl220085220663%_
                                           (cons _%lp-hd220084220660%_
                                                 _%pred220086220654%_))))
                                      (let ((_%pred220087220666%_
                                             (reverse _%pred220086220654%_)))
                                        (if (gx#stx-pair? _%tl220075220628%_)
                                            (let ((_%e220088220669%_
                                                   (gx#syntax-e
                                                    _%tl220075220628%_)))
                                              (let ((_%tl220090220676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e220088220669%_)))
                                                    (_%hd220089220673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e220088220669%_))))
                                                (if (gx#stx-null?
                                                     _%tl220090220676%_)
                                                    (_%__kont223063223064%_
                                                     _%hd220089220673%_
                                                     _%pred220087220666%_
                                                     _%hd220071220615%_)
                                                    (_%__match223229223230%_
                                                     _%e220070220611%_
                                                     _%hd220071220615%_
                                                     _%tl220072220618%_
                                                     _%e220073220621%_
                                                     _%hd220074220625%_
                                                     _%tl220075220628%_
                                                     _%e220088220669%_
                                                     _%hd220089220673%_
                                                     _%tl220090220676%_))))
                                            (_%__match223209223210%_
                                             _%e220070220611%_
                                             _%hd220071220615%_
                                             _%tl220072220618%_
                                             _%e220073220621%_
                                             _%hd220074220625%_
                                             _%tl220075220628%_)))))))
                        (_%loop220082220647%_ _%target220079220641%_ '()))))
                   (_%__match223109223110%_
                    (lambda (_%e220046220719%_
                             _%hd220047220723%_
                             _%tl220048220726%_
                             _%e220049220729%_
                             _%hd220050220733%_
                             _%tl220051220736%_
                             _%e220052220739%_
                             _%hd220053220743%_
                             _%tl220054220746%_
                             _%__splice223061223062%_
                             _%target220055220749%_
                             _%tl220057220752%_)
                      (letrec ((_%loop220058220755%_
                                (lambda (_%hd220056220759%_
                                         _%pred220062220762%_)
                                  (if (gx#stx-pair? _%hd220056220759%_)
                                      (let ((_%e220059220764%_
                                             (gx#syntax-e _%hd220056220759%_)))
                                        (let ((_%lp-tl220061220771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e220059220764%_)))
                                              (_%lp-hd220060220768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e220059220764%_))))
                                          (_%loop220058220755%_
                                           _%lp-tl220061220771%_
                                           (cons _%lp-hd220060220768%_
                                                 _%pred220062220762%_))))
                                      (let ((_%pred220063220774%_
                                             (reverse _%pred220062220762%_)))
                                        (if (gx#stx-pair? _%tl220051220736%_)
                                            (let ((_%e220064220777%_
                                                   (gx#syntax-e
                                                    _%tl220051220736%_)))
                                              (let ((_%tl220066220784%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e220064220777%_)))
                                                    (_%hd220065220781%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e220064220777%_))))
                                                (if (gx#stx-null?
                                                     _%tl220066220784%_)
                                                    (_%__kont223059223060%_
                                                     _%hd220065220781%_
                                                     _%pred220063220774%_
                                                     _%hd220047220723%_)
                                                    (_%__match223229223230%_
                                                     _%e220046220719%_
                                                     _%hd220047220723%_
                                                     _%tl220048220726%_
                                                     _%e220049220729%_
                                                     _%hd220050220733%_
                                                     _%tl220051220736%_
                                                     _%e220064220777%_
                                                     _%hd220065220781%_
                                                     _%tl220066220784%_))))
                                            (_%__match223209223210%_
                                             _%e220046220719%_
                                             _%hd220047220723%_
                                             _%tl220048220726%_
                                             _%e220049220729%_
                                             _%hd220050220733%_
                                             _%tl220051220736%_)))))))
                        (_%loop220058220755%_ _%target220055220749%_ '())))))
              (if (gx#stx-pair? _%__stx223056223057%_)
                  (let ((_%e220046220719%_
                         (gx#syntax-e _%__stx223056223057%_)))
                    (let ((_%tl220048220726%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e220046220719%_)))
                          (_%hd220047220723%_
                           (let ()
                             (declare (not safe))
                             (##car _%e220046220719%_))))
                      (if (gx#stx-pair? _%tl220048220726%_)
                          (let ((_%e220049220729%_
                                 (gx#syntax-e _%tl220048220726%_)))
                            (let ((_%tl220051220736%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e220049220729%_)))
                                  (_%hd220050220733%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e220049220729%_))))
                              (if (gx#stx-pair? _%hd220050220733%_)
                                  (let ((_%e220052220739%_
                                         (gx#syntax-e _%hd220050220733%_)))
                                    (let ((_%tl220054220746%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e220052220739%_)))
                                          (_%hd220053220743%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e220052220739%_))))
                                      (if (gx#identifier? _%hd220053220743%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g223433_|
                                               _%hd220053220743%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl220054220746%_)
                                                  (let ((_%__splice223061223062%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl220054220746%_
                                                          '0)))
                                                    (let ((_%tl220057220752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice223061223062%_
                                                              '1)))
                                                          (_%target220055220749%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice223061223062%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl220057220752%_)
                                                          (_%__match223109223110%_
                                                           _%e220046220719%_
                                                           _%hd220047220723%_
                                                           _%tl220048220726%_
                                                           _%e220049220729%_
                                                           _%hd220050220733%_
                                                           _%tl220051220736%_
                                                           _%e220052220739%_
                                                           _%hd220053220743%_
                                                           _%tl220054220746%_
                                                           _%__splice223061223062%_
                                                           _%target220055220749%_
                                                           _%tl220057220752%_)
                                                          (if (gx#stx-pair?
                                                               _%tl220051220736%_)
                                                              (let ((_%e220117220497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl220051220736%_)))
                        (let ((_%tl220119220504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220117220497%_)))
                              (_%hd220118220501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220117220497%_))))
                          (if (gx#stx-null? _%tl220119220504%_)
                              (_%__kont223069223070%_
                               _%hd220118220501%_
                               _%hd220050220733%_)
                              (if (gx#identifier? _%hd220118220501%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g223431_|
                                       _%hd220118220501%_)
                                      (if (gx#stx-pair? _%tl220119220504%_)
                                          (let ((_%e220140220397%_
                                                 (gx#syntax-e
                                                  _%tl220119220504%_)))
                                            (let ((_%tl220142220404%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e220140220397%_)))
                                                  (_%hd220141220401%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e220140220397%_))))
                                              (if (gx#stx-null?
                                                   _%tl220142220404%_)
                                                  (_%__kont223073223074%_
                                                   _%hd220141220401%_
                                                   _%hd220050220733%_
                                                   _%hd220047220723%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220041220187%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g220041220187%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g220041220187%_)))
                                  (if (gx#stx-datum? _%hd220118220501%_)
                                      (let ((_%e220155220324%_
                                             (gx#stx-e _%hd220118220501%_)))
                                        (if (equal? _%e220155220324%_ '::)
                                            (if (gx#stx-pair?
                                                 _%tl220119220504%_)
                                                (let ((_%e220156220328%_
                                                       (gx#syntax-e
                                                        _%tl220119220504%_)))
                                                  (let ((_%tl220158220335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e220156220328%_)))
                                                        (_%hd220157220332%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e220156220328%_))))
                                                    (if (gx#stx-null?
                                                         _%tl220158220335%_)
                                                        (_%__kont223075223076%_
                                                         _%hd220157220332%_
                                                         _%hd220050220733%_
                                                         _%hd220047220723%_)
                                                        (if (gx#stx-pair?
                                                             _%tl220158220335%_)
                                                            (let ((_%e220176220238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl220158220335%_)))
                      (let ((_%tl220178220245%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e220176220238%_)))
                            (_%hd220177220242%_
                             (let ()
                               (declare (not safe))
                               (##car _%e220176220238%_))))
                        (if (gx#identifier? _%hd220177220242%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g223432_|
                                 _%hd220177220242%_)
                                (if (gx#stx-pair? _%tl220178220245%_)
                                    (let ((_%e220179220248%_
                                           (gx#syntax-e _%tl220178220245%_)))
                                      (let ((_%tl220181220255%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e220179220248%_)))
                                            (_%hd220180220252%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e220179220248%_))))
                                        (if (gx#stx-null? _%tl220181220255%_)
                                            (_%__kont223077223078%_
                                             _%hd220180220252%_
                                             _%hd220157220332%_
                                             _%hd220050220733%_
                                             _%hd220047220723%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g220041220187%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g220041220187%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g220041220187%_)))
                            (let ()
                              (declare (not safe))
                              (_%g220041220187%_)))))
                    (let () (declare (not safe)) (_%g220041220187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g220041220187%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g220041220187%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g220041220187%_)))))))
                      (if (gx#stx-null? _%tl220051220736%_)
                          (_%__kont223071223072%_
                           _%hd220050220733%_
                           _%hd220047220723%_)
                          (let ()
                            (declare (not safe))
                            (_%g220041220187%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl220051220736%_)
                                                      (let ((_%e220117220497%_
                                                             (gx#syntax-e
                                                              _%tl220051220736%_)))
                                                        (let ((_%tl220119220504%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e220117220497%_)))
                      (_%hd220118220501%_
                       (let ()
                         (declare (not safe))
                         (##car _%e220117220497%_))))
                  (if (gx#stx-null? _%tl220119220504%_)
                      (_%__kont223069223070%_
                       _%hd220118220501%_
                       _%hd220050220733%_)
                      (if (gx#identifier? _%hd220118220501%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g223431_|
                               _%hd220118220501%_)
                              (if (gx#stx-pair? _%tl220119220504%_)
                                  (let ((_%e220140220397%_
                                         (gx#syntax-e _%tl220119220504%_)))
                                    (let ((_%tl220142220404%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e220140220397%_)))
                                          (_%hd220141220401%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e220140220397%_))))
                                      (if (gx#stx-null? _%tl220142220404%_)
                                          (_%__kont223073223074%_
                                           _%hd220141220401%_
                                           _%hd220050220733%_
                                           _%hd220047220723%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g220041220187%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g220041220187%_)))
                              (let ()
                                (declare (not safe))
                                (_%g220041220187%_)))
                          (if (gx#stx-datum? _%hd220118220501%_)
                              (let ((_%e220155220324%_
                                     (gx#stx-e _%hd220118220501%_)))
                                (if (equal? _%e220155220324%_ '::)
                                    (if (gx#stx-pair? _%tl220119220504%_)
                                        (let ((_%e220156220328%_
                                               (gx#syntax-e
                                                _%tl220119220504%_)))
                                          (let ((_%tl220158220335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e220156220328%_)))
                                                (_%hd220157220332%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e220156220328%_))))
                                            (if (gx#stx-null?
                                                 _%tl220158220335%_)
                                                (_%__kont223075223076%_
                                                 _%hd220157220332%_
                                                 _%hd220050220733%_
                                                 _%hd220047220723%_)
                                                (if (gx#stx-pair?
                                                     _%tl220158220335%_)
                                                    (let ((_%e220176220238%_
                                                           (gx#syntax-e
                                                            _%tl220158220335%_)))
                                                      (let ((_%tl220178220245%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e220176220238%_)))
                    (_%hd220177220242%_
                     (let () (declare (not safe)) (##car _%e220176220238%_))))
                (if (gx#identifier? _%hd220177220242%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g223432_|
                         _%hd220177220242%_)
                        (if (gx#stx-pair? _%tl220178220245%_)
                            (let ((_%e220179220248%_
                                   (gx#syntax-e _%tl220178220245%_)))
                              (let ((_%tl220181220255%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e220179220248%_)))
                                    (_%hd220180220252%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e220179220248%_))))
                                (if (gx#stx-null? _%tl220181220255%_)
                                    (_%__kont223077223078%_
                                     _%hd220180220252%_
                                     _%hd220157220332%_
                                     _%hd220050220733%_
                                     _%hd220047220723%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g220041220187%_)))))
                            (let () (declare (not safe)) (_%g220041220187%_)))
                        (let () (declare (not safe)) (_%g220041220187%_)))
                    (let () (declare (not safe)) (_%g220041220187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g220041220187%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g220041220187%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g220041220187%_))))
                              (let ()
                                (declare (not safe))
                                (_%g220041220187%_)))))))
              (if (gx#stx-null? _%tl220051220736%_)
                  (_%__kont223071223072%_
                   _%hd220050220733%_
                   _%hd220047220723%_)
                  (let () (declare (not safe)) (_%g220041220187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g223434_|
                                                   _%hd220053220743%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl220054220746%_)
                                                      (let ((_%__splice223065223066%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl220054220746%_
                                                              '0)))
                                                        (let ((_%tl220081220644%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice223065223066%_ '1)))
                      (_%target220079220641%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice223065223066%_ '0))))
                  (if (gx#stx-null? _%tl220081220644%_)
                      (_%__match223139223140%_
                       _%e220046220719%_
                       _%hd220047220723%_
                       _%tl220048220726%_
                       _%e220049220729%_
                       _%hd220050220733%_
                       _%tl220051220736%_
                       _%e220052220739%_
                       _%hd220053220743%_
                       _%tl220054220746%_
                       _%__splice223065223066%_
                       _%target220079220641%_
                       _%tl220081220644%_)
                      (if (gx#stx-pair? _%tl220051220736%_)
                          (let ((_%e220117220497%_
                                 (gx#syntax-e _%tl220051220736%_)))
                            (let ((_%tl220119220504%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e220117220497%_)))
                                  (_%hd220118220501%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e220117220497%_))))
                              (if (gx#stx-null? _%tl220119220504%_)
                                  (_%__kont223069223070%_
                                   _%hd220118220501%_
                                   _%hd220050220733%_)
                                  (if (gx#identifier? _%hd220118220501%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g223431_|
                                           _%hd220118220501%_)
                                          (if (gx#stx-pair? _%tl220119220504%_)
                                              (let ((_%e220140220397%_
                                                     (gx#syntax-e
                                                      _%tl220119220504%_)))
                                                (let ((_%tl220142220404%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220140220397%_)))
                                                      (_%hd220141220401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220140220397%_))))
                                                  (if (gx#stx-null?
                                                       _%tl220142220404%_)
                                                      (_%__kont223073223074%_
                                                       _%hd220141220401%_
                                                       _%hd220050220733%_
                                                       _%hd220047220723%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g220041220187%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g220041220187%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g220041220187%_)))
                                      (if (gx#stx-datum? _%hd220118220501%_)
                                          (let ((_%e220155220324%_
                                                 (gx#stx-e
                                                  _%hd220118220501%_)))
                                            (if (equal? _%e220155220324%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl220119220504%_)
                                                    (let ((_%e220156220328%_
                                                           (gx#syntax-e
                                                            _%tl220119220504%_)))
                                                      (let ((_%tl220158220335%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e220156220328%_)))
                    (_%hd220157220332%_
                     (let () (declare (not safe)) (##car _%e220156220328%_))))
                (if (gx#stx-null? _%tl220158220335%_)
                    (_%__kont223075223076%_
                     _%hd220157220332%_
                     _%hd220050220733%_
                     _%hd220047220723%_)
                    (if (gx#stx-pair? _%tl220158220335%_)
                        (let ((_%e220176220238%_
                               (gx#syntax-e _%tl220158220335%_)))
                          (let ((_%tl220178220245%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e220176220238%_)))
                                (_%hd220177220242%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e220176220238%_))))
                            (if (gx#identifier? _%hd220177220242%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g223432_|
                                     _%hd220177220242%_)
                                    (if (gx#stx-pair? _%tl220178220245%_)
                                        (let ((_%e220179220248%_
                                               (gx#syntax-e
                                                _%tl220178220245%_)))
                                          (let ((_%tl220181220255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e220179220248%_)))
                                                (_%hd220180220252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e220179220248%_))))
                                            (if (gx#stx-null?
                                                 _%tl220181220255%_)
                                                (_%__kont223077223078%_
                                                 _%hd220180220252%_
                                                 _%hd220157220332%_
                                                 _%hd220050220733%_
                                                 _%hd220047220723%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g220041220187%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g220041220187%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g220041220187%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g220041220187%_)))))
                        (let () (declare (not safe)) (_%g220041220187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g220041220187%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g220041220187%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g220041220187%_)))))))
                          (if (gx#stx-null? _%tl220051220736%_)
                              (_%__kont223071223072%_
                               _%hd220050220733%_
                               _%hd220047220723%_)
                              (let ()
                                (declare (not safe))
                                (_%g220041220187%_)))))))
              (if (gx#stx-pair? _%tl220051220736%_)
                  (let ((_%e220117220497%_ (gx#syntax-e _%tl220051220736%_)))
                    (let ((_%tl220119220504%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e220117220497%_)))
                          (_%hd220118220501%_
                           (let ()
                             (declare (not safe))
                             (##car _%e220117220497%_))))
                      (if (gx#stx-null? _%tl220119220504%_)
                          (_%__kont223069223070%_
                           _%hd220118220501%_
                           _%hd220050220733%_)
                          (if (gx#identifier? _%hd220118220501%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g223431_|
                                   _%hd220118220501%_)
                                  (if (gx#stx-pair? _%tl220119220504%_)
                                      (let ((_%e220140220397%_
                                             (gx#syntax-e _%tl220119220504%_)))
                                        (let ((_%tl220142220404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e220140220397%_)))
                                              (_%hd220141220401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e220140220397%_))))
                                          (if (gx#stx-null? _%tl220142220404%_)
                                              (_%__kont223073223074%_
                                               _%hd220141220401%_
                                               _%hd220050220733%_
                                               _%hd220047220723%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g220041220187%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g220041220187%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g220041220187%_)))
                              (if (gx#stx-datum? _%hd220118220501%_)
                                  (let ((_%e220155220324%_
                                         (gx#stx-e _%hd220118220501%_)))
                                    (if (equal? _%e220155220324%_ '::)
                                        (if (gx#stx-pair? _%tl220119220504%_)
                                            (let ((_%e220156220328%_
                                                   (gx#syntax-e
                                                    _%tl220119220504%_)))
                                              (let ((_%tl220158220335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e220156220328%_)))
                                                    (_%hd220157220332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e220156220328%_))))
                                                (if (gx#stx-null?
                                                     _%tl220158220335%_)
                                                    (_%__kont223075223076%_
                                                     _%hd220157220332%_
                                                     _%hd220050220733%_
                                                     _%hd220047220723%_)
                                                    (if (gx#stx-pair?
                                                         _%tl220158220335%_)
                                                        (let ((_%e220176220238%_
                                                               (gx#syntax-e
                                                                _%tl220158220335%_)))
                                                          (let ((_%tl220178220245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220176220238%_)))
                        (_%hd220177220242%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220176220238%_))))
                    (if (gx#identifier? _%hd220177220242%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g223432_|
                             _%hd220177220242%_)
                            (if (gx#stx-pair? _%tl220178220245%_)
                                (let ((_%e220179220248%_
                                       (gx#syntax-e _%tl220178220245%_)))
                                  (let ((_%tl220181220255%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e220179220248%_)))
                                        (_%hd220180220252%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e220179220248%_))))
                                    (if (gx#stx-null? _%tl220181220255%_)
                                        (_%__kont223077223078%_
                                         _%hd220180220252%_
                                         _%hd220157220332%_
                                         _%hd220050220733%_
                                         _%hd220047220723%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g220041220187%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g220041220187%_)))
                            (let () (declare (not safe)) (_%g220041220187%_)))
                        (let () (declare (not safe)) (_%g220041220187%_)))))
                (let () (declare (not safe)) (_%g220041220187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g220041220187%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g220041220187%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g220041220187%_)))))))
                  (if (gx#stx-null? _%tl220051220736%_)
                      (_%__kont223071223072%_
                       _%hd220050220733%_
                       _%hd220047220723%_)
                      (let () (declare (not safe)) (_%g220041220187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g223435_|
                                                       _%hd220053220743%_)
                                                      (if (gx#stx-pair?
                                                           _%tl220054220746%_)
                                                          (let ((_%e220103220561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl220054220746%_)))
                    (let ((_%tl220105220568%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e220103220561%_)))
                          (_%hd220104220565%_
                           (let ()
                             (declare (not safe))
                             (##car _%e220103220561%_))))
                      (if (gx#stx-null? _%tl220105220568%_)
                          (if (gx#stx-pair? _%tl220051220736%_)
                              (let ((_%e220106220571%_
                                     (gx#syntax-e _%tl220051220736%_)))
                                (let ((_%tl220108220578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e220106220571%_)))
                                      (_%hd220107220575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e220106220571%_))))
                                  (if (gx#stx-null? _%tl220108220578%_)
                                      (_%__kont223067223068%_
                                       _%hd220107220575%_
                                       _%hd220104220565%_
                                       _%hd220047220723%_)
                                      (if (gx#identifier? _%hd220107220575%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g223431_|
                                               _%hd220107220575%_)
                                              (if (gx#stx-pair?
                                                   _%tl220108220578%_)
                                                  (let ((_%e220140220397%_
                                                         (gx#syntax-e
                                                          _%tl220108220578%_)))
                                                    (let ((_%tl220142220404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e220140220397%_)))
                                                          (_%hd220141220401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e220140220397%_))))
                                                      (if (gx#stx-null?
                                                           _%tl220142220404%_)
                                                          (_%__kont223073223074%_
                                                           _%hd220141220401%_
                                                           _%hd220050220733%_
                                                           _%hd220047220723%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g220041220187%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220041220187%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g220041220187%_)))
                                          (if (gx#stx-datum?
                                               _%hd220107220575%_)
                                              (let ((_%e220155220324%_
                                                     (gx#stx-e
                                                      _%hd220107220575%_)))
                                                (if (equal? _%e220155220324%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl220108220578%_)
                                                        (let ((_%e220156220328%_
                                                               (gx#syntax-e
                                                                _%tl220108220578%_)))
                                                          (let ((_%tl220158220335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220156220328%_)))
                        (_%hd220157220332%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220156220328%_))))
                    (if (gx#stx-null? _%tl220158220335%_)
                        (_%__kont223075223076%_
                         _%hd220157220332%_
                         _%hd220050220733%_
                         _%hd220047220723%_)
                        (if (gx#stx-pair? _%tl220158220335%_)
                            (let ((_%e220176220238%_
                                   (gx#syntax-e _%tl220158220335%_)))
                              (let ((_%tl220178220245%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e220176220238%_)))
                                    (_%hd220177220242%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e220176220238%_))))
                                (if (gx#identifier? _%hd220177220242%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g223432_|
                                         _%hd220177220242%_)
                                        (if (gx#stx-pair? _%tl220178220245%_)
                                            (let ((_%e220179220248%_
                                                   (gx#syntax-e
                                                    _%tl220178220245%_)))
                                              (let ((_%tl220181220255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e220179220248%_)))
                                                    (_%hd220180220252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e220179220248%_))))
                                                (if (gx#stx-null?
                                                     _%tl220181220255%_)
                                                    (_%__kont223077223078%_
                                                     _%hd220180220252%_
                                                     _%hd220157220332%_
                                                     _%hd220050220733%_
                                                     _%hd220047220723%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g220041220187%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g220041220187%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g220041220187%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g220041220187%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g220041220187%_))))))
                (let () (declare (not safe)) (_%g220041220187%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g220041220187%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g220041220187%_)))))))
                              (if (gx#stx-null? _%tl220051220736%_)
                                  (_%__kont223071223072%_
                                   _%hd220050220733%_
                                   _%hd220047220723%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g220041220187%_))))
                          (if (gx#stx-pair? _%tl220051220736%_)
                              (let ((_%e220117220497%_
                                     (gx#syntax-e _%tl220051220736%_)))
                                (let ((_%tl220119220504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e220117220497%_)))
                                      (_%hd220118220501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e220117220497%_))))
                                  (if (gx#stx-null? _%tl220119220504%_)
                                      (_%__kont223069223070%_
                                       _%hd220118220501%_
                                       _%hd220050220733%_)
                                      (if (gx#identifier? _%hd220118220501%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g223431_|
                                               _%hd220118220501%_)
                                              (if (gx#stx-pair?
                                                   _%tl220119220504%_)
                                                  (let ((_%e220140220397%_
                                                         (gx#syntax-e
                                                          _%tl220119220504%_)))
                                                    (let ((_%tl220142220404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e220140220397%_)))
                                                          (_%hd220141220401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e220140220397%_))))
                                                      (if (gx#stx-null?
                                                           _%tl220142220404%_)
                                                          (_%__kont223073223074%_
                                                           _%hd220141220401%_
                                                           _%hd220050220733%_
                                                           _%hd220047220723%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g220041220187%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220041220187%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g220041220187%_)))
                                          (if (gx#stx-datum?
                                               _%hd220118220501%_)
                                              (let ((_%e220155220324%_
                                                     (gx#stx-e
                                                      _%hd220118220501%_)))
                                                (if (equal? _%e220155220324%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%tl220119220504%_)
                                                        (let ((_%e220156220328%_
                                                               (gx#syntax-e
                                                                _%tl220119220504%_)))
                                                          (let ((_%tl220158220335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220156220328%_)))
                        (_%hd220157220332%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220156220328%_))))
                    (if (gx#stx-null? _%tl220158220335%_)
                        (_%__kont223075223076%_
                         _%hd220157220332%_
                         _%hd220050220733%_
                         _%hd220047220723%_)
                        (if (gx#stx-pair? _%tl220158220335%_)
                            (let ((_%e220176220238%_
                                   (gx#syntax-e _%tl220158220335%_)))
                              (let ((_%tl220178220245%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e220176220238%_)))
                                    (_%hd220177220242%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e220176220238%_))))
                                (if (gx#identifier? _%hd220177220242%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g223432_|
                                         _%hd220177220242%_)
                                        (if (gx#stx-pair? _%tl220178220245%_)
                                            (let ((_%e220179220248%_
                                                   (gx#syntax-e
                                                    _%tl220178220245%_)))
                                              (let ((_%tl220181220255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e220179220248%_)))
                                                    (_%hd220180220252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e220179220248%_))))
                                                (if (gx#stx-null?
                                                     _%tl220181220255%_)
                                                    (_%__kont223077223078%_
                                                     _%hd220180220252%_
                                                     _%hd220157220332%_
                                                     _%hd220050220733%_
                                                     _%hd220047220723%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g220041220187%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g220041220187%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g220041220187%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g220041220187%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g220041220187%_))))))
                (let () (declare (not safe)) (_%g220041220187%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g220041220187%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g220041220187%_)))))))
                              (if (gx#stx-null? _%tl220051220736%_)
                                  (_%__kont223071223072%_
                                   _%hd220050220733%_
                                   _%hd220047220723%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g220041220187%_)))))))
                  (if (gx#stx-pair? _%tl220051220736%_)
                      (let ((_%e220117220497%_
                             (gx#syntax-e _%tl220051220736%_)))
                        (let ((_%tl220119220504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220117220497%_)))
                              (_%hd220118220501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220117220497%_))))
                          (if (gx#stx-null? _%tl220119220504%_)
                              (_%__kont223069223070%_
                               _%hd220118220501%_
                               _%hd220050220733%_)
                              (if (gx#identifier? _%hd220118220501%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g223431_|
                                       _%hd220118220501%_)
                                      (if (gx#stx-pair? _%tl220119220504%_)
                                          (let ((_%e220140220397%_
                                                 (gx#syntax-e
                                                  _%tl220119220504%_)))
                                            (let ((_%tl220142220404%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e220140220397%_)))
                                                  (_%hd220141220401%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e220140220397%_))))
                                              (if (gx#stx-null?
                                                   _%tl220142220404%_)
                                                  (_%__kont223073223074%_
                                                   _%hd220141220401%_
                                                   _%hd220050220733%_
                                                   _%hd220047220723%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220041220187%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g220041220187%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g220041220187%_)))
                                  (if (gx#stx-datum? _%hd220118220501%_)
                                      (let ((_%e220155220324%_
                                             (gx#stx-e _%hd220118220501%_)))
                                        (if (equal? _%e220155220324%_ '::)
                                            (if (gx#stx-pair?
                                                 _%tl220119220504%_)
                                                (let ((_%e220156220328%_
                                                       (gx#syntax-e
                                                        _%tl220119220504%_)))
                                                  (let ((_%tl220158220335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e220156220328%_)))
                                                        (_%hd220157220332%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e220156220328%_))))
                                                    (if (gx#stx-null?
                                                         _%tl220158220335%_)
                                                        (_%__kont223075223076%_
                                                         _%hd220157220332%_
                                                         _%hd220050220733%_
                                                         _%hd220047220723%_)
                                                        (if (gx#stx-pair?
                                                             _%tl220158220335%_)
                                                            (let ((_%e220176220238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl220158220335%_)))
                      (let ((_%tl220178220245%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e220176220238%_)))
                            (_%hd220177220242%_
                             (let ()
                               (declare (not safe))
                               (##car _%e220176220238%_))))
                        (if (gx#identifier? _%hd220177220242%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g223432_|
                                 _%hd220177220242%_)
                                (if (gx#stx-pair? _%tl220178220245%_)
                                    (let ((_%e220179220248%_
                                           (gx#syntax-e _%tl220178220245%_)))
                                      (let ((_%tl220181220255%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e220179220248%_)))
                                            (_%hd220180220252%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e220179220248%_))))
                                        (if (gx#stx-null? _%tl220181220255%_)
                                            (_%__kont223077223078%_
                                             _%hd220180220252%_
                                             _%hd220157220332%_
                                             _%hd220050220733%_
                                             _%hd220047220723%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g220041220187%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g220041220187%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g220041220187%_)))
                            (let ()
                              (declare (not safe))
                              (_%g220041220187%_)))))
                    (let () (declare (not safe)) (_%g220041220187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g220041220187%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g220041220187%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g220041220187%_)))))))
                      (if (gx#stx-null? _%tl220051220736%_)
                          (_%__kont223071223072%_
                           _%hd220050220733%_
                           _%hd220047220723%_)
                          (let () (declare (not safe)) (_%g220041220187%_)))))
              (if (gx#stx-pair? _%tl220051220736%_)
                  (let ((_%e220117220497%_ (gx#syntax-e _%tl220051220736%_)))
                    (let ((_%tl220119220504%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e220117220497%_)))
                          (_%hd220118220501%_
                           (let ()
                             (declare (not safe))
                             (##car _%e220117220497%_))))
                      (if (gx#stx-null? _%tl220119220504%_)
                          (_%__kont223069223070%_
                           _%hd220118220501%_
                           _%hd220050220733%_)
                          (if (gx#identifier? _%hd220118220501%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g223431_|
                                   _%hd220118220501%_)
                                  (if (gx#stx-pair? _%tl220119220504%_)
                                      (let ((_%e220140220397%_
                                             (gx#syntax-e _%tl220119220504%_)))
                                        (let ((_%tl220142220404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e220140220397%_)))
                                              (_%hd220141220401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e220140220397%_))))
                                          (if (gx#stx-null? _%tl220142220404%_)
                                              (_%__kont223073223074%_
                                               _%hd220141220401%_
                                               _%hd220050220733%_
                                               _%hd220047220723%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g220041220187%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g220041220187%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g220041220187%_)))
                              (if (gx#stx-datum? _%hd220118220501%_)
                                  (let ((_%e220155220324%_
                                         (gx#stx-e _%hd220118220501%_)))
                                    (if (equal? _%e220155220324%_ '::)
                                        (if (gx#stx-pair? _%tl220119220504%_)
                                            (let ((_%e220156220328%_
                                                   (gx#syntax-e
                                                    _%tl220119220504%_)))
                                              (let ((_%tl220158220335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e220156220328%_)))
                                                    (_%hd220157220332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e220156220328%_))))
                                                (if (gx#stx-null?
                                                     _%tl220158220335%_)
                                                    (_%__kont223075223076%_
                                                     _%hd220157220332%_
                                                     _%hd220050220733%_
                                                     _%hd220047220723%_)
                                                    (if (gx#stx-pair?
                                                         _%tl220158220335%_)
                                                        (let ((_%e220176220238%_
                                                               (gx#syntax-e
                                                                _%tl220158220335%_)))
                                                          (let ((_%tl220178220245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220176220238%_)))
                        (_%hd220177220242%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220176220238%_))))
                    (if (gx#identifier? _%hd220177220242%_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g223432_|
                             _%hd220177220242%_)
                            (if (gx#stx-pair? _%tl220178220245%_)
                                (let ((_%e220179220248%_
                                       (gx#syntax-e _%tl220178220245%_)))
                                  (let ((_%tl220181220255%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e220179220248%_)))
                                        (_%hd220180220252%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e220179220248%_))))
                                    (if (gx#stx-null? _%tl220181220255%_)
                                        (_%__kont223077223078%_
                                         _%hd220180220252%_
                                         _%hd220157220332%_
                                         _%hd220050220733%_
                                         _%hd220047220723%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g220041220187%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g220041220187%_)))
                            (let () (declare (not safe)) (_%g220041220187%_)))
                        (let () (declare (not safe)) (_%g220041220187%_)))))
                (let () (declare (not safe)) (_%g220041220187%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g220041220187%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g220041220187%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g220041220187%_)))))))
                  (if (gx#stx-null? _%tl220051220736%_)
                      (_%__kont223071223072%_
                       _%hd220050220733%_
                       _%hd220047220723%_)
                      (let () (declare (not safe)) (_%g220041220187%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl220051220736%_)
                                              (let ((_%e220117220497%_
                                                     (gx#syntax-e
                                                      _%tl220051220736%_)))
                                                (let ((_%tl220119220504%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220117220497%_)))
                                                      (_%hd220118220501%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220117220497%_))))
                                                  (if (gx#stx-null?
                                                       _%tl220119220504%_)
                                                      (_%__kont223069223070%_
                                                       _%hd220118220501%_
                                                       _%hd220050220733%_)
                                                      (if (gx#identifier?
                                                           _%hd220118220501%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g223431_|
                                                               _%hd220118220501%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl220119220504%_)
                          (let ((_%e220140220397%_
                                 (gx#syntax-e _%tl220119220504%_)))
                            (let ((_%tl220142220404%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e220140220397%_)))
                                  (_%hd220141220401%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e220140220397%_))))
                              (if (gx#stx-null? _%tl220142220404%_)
                                  (_%__kont223073223074%_
                                   _%hd220141220401%_
                                   _%hd220050220733%_
                                   _%hd220047220723%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g220041220187%_)))))
                          (let () (declare (not safe)) (_%g220041220187%_)))
                      (let () (declare (not safe)) (_%g220041220187%_)))
                  (if (gx#stx-datum? _%hd220118220501%_)
                      (let ((_%e220155220324%_ (gx#stx-e _%hd220118220501%_)))
                        (if (equal? _%e220155220324%_ '::)
                            (if (gx#stx-pair? _%tl220119220504%_)
                                (let ((_%e220156220328%_
                                       (gx#syntax-e _%tl220119220504%_)))
                                  (let ((_%tl220158220335%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e220156220328%_)))
                                        (_%hd220157220332%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e220156220328%_))))
                                    (if (gx#stx-null? _%tl220158220335%_)
                                        (_%__kont223075223076%_
                                         _%hd220157220332%_
                                         _%hd220050220733%_
                                         _%hd220047220723%_)
                                        (if (gx#stx-pair? _%tl220158220335%_)
                                            (let ((_%e220176220238%_
                                                   (gx#syntax-e
                                                    _%tl220158220335%_)))
                                              (let ((_%tl220178220245%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e220176220238%_)))
                                                    (_%hd220177220242%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e220176220238%_))))
                                                (if (gx#identifier?
                                                     _%hd220177220242%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g223432_|
                                                         _%hd220177220242%_)
                                                        (if (gx#stx-pair?
                                                             _%tl220178220245%_)
                                                            (let ((_%e220179220248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl220178220245%_)))
                      (let ((_%tl220181220255%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e220179220248%_)))
                            (_%hd220180220252%_
                             (let ()
                               (declare (not safe))
                               (##car _%e220179220248%_))))
                        (if (gx#stx-null? _%tl220181220255%_)
                            (_%__kont223077223078%_
                             _%hd220180220252%_
                             _%hd220157220332%_
                             _%hd220050220733%_
                             _%hd220047220723%_)
                            (let ()
                              (declare (not safe))
                              (_%g220041220187%_)))))
                    (let () (declare (not safe)) (_%g220041220187%_)))
                (let () (declare (not safe)) (_%g220041220187%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g220041220187%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g220041220187%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g220041220187%_)))
                            (let () (declare (not safe)) (_%g220041220187%_))))
                      (let () (declare (not safe)) (_%g220041220187%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%tl220051220736%_)
                                                  (_%__kont223071223072%_
                                                   _%hd220050220733%_
                                                   _%hd220047220723%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220041220187%_)))))))
                                  (if (gx#stx-pair? _%tl220051220736%_)
                                      (let ((_%e220117220497%_
                                             (gx#syntax-e _%tl220051220736%_)))
                                        (let ((_%tl220119220504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e220117220497%_)))
                                              (_%hd220118220501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e220117220497%_))))
                                          (if (gx#stx-null? _%tl220119220504%_)
                                              (_%__kont223069223070%_
                                               _%hd220118220501%_
                                               _%hd220050220733%_)
                                              (if (gx#identifier?
                                                   _%hd220118220501%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g223431_|
                                                       _%hd220118220501%_)
                                                      (if (gx#stx-pair?
                                                           _%tl220119220504%_)
                                                          (let ((_%e220140220397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl220119220504%_)))
                    (let ((_%tl220142220404%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e220140220397%_)))
                          (_%hd220141220401%_
                           (let ()
                             (declare (not safe))
                             (##car _%e220140220397%_))))
                      (if (gx#stx-null? _%tl220142220404%_)
                          (_%__kont223073223074%_
                           _%hd220141220401%_
                           _%hd220050220733%_
                           _%hd220047220723%_)
                          (let () (declare (not safe)) (_%g220041220187%_)))))
                  (let () (declare (not safe)) (_%g220041220187%_)))
              (let () (declare (not safe)) (_%g220041220187%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _%hd220118220501%_)
                                                      (let ((_%e220155220324%_
                                                             (gx#stx-e
                                                              _%hd220118220501%_)))
                                                        (if (equal? _%e220155220324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%tl220119220504%_)
                        (let ((_%e220156220328%_
                               (gx#syntax-e _%tl220119220504%_)))
                          (let ((_%tl220158220335%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e220156220328%_)))
                                (_%hd220157220332%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e220156220328%_))))
                            (if (gx#stx-null? _%tl220158220335%_)
                                (_%__kont223075223076%_
                                 _%hd220157220332%_
                                 _%hd220050220733%_
                                 _%hd220047220723%_)
                                (if (gx#stx-pair? _%tl220158220335%_)
                                    (let ((_%e220176220238%_
                                           (gx#syntax-e _%tl220158220335%_)))
                                      (let ((_%tl220178220245%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e220176220238%_)))
                                            (_%hd220177220242%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e220176220238%_))))
                                        (if (gx#identifier? _%hd220177220242%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g223432_|
                                                 _%hd220177220242%_)
                                                (if (gx#stx-pair?
                                                     _%tl220178220245%_)
                                                    (let ((_%e220179220248%_
                                                           (gx#syntax-e
                                                            _%tl220178220245%_)))
                                                      (let ((_%tl220181220255%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e220179220248%_)))
                    (_%hd220180220252%_
                     (let () (declare (not safe)) (##car _%e220179220248%_))))
                (if (gx#stx-null? _%tl220181220255%_)
                    (_%__kont223077223078%_
                     _%hd220180220252%_
                     _%hd220157220332%_
                     _%hd220050220733%_
                     _%hd220047220723%_)
                    (let () (declare (not safe)) (_%g220041220187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g220041220187%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g220041220187%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g220041220187%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g220041220187%_))))))
                        (let () (declare (not safe)) (_%g220041220187%_)))
                    (let () (declare (not safe)) (_%g220041220187%_))))
              (let () (declare (not safe)) (_%g220041220187%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _%tl220051220736%_)
                                          (_%__kont223071223072%_
                                           _%hd220050220733%_
                                           _%hd220047220723%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g220041220187%_)))))))
                          (let () (declare (not safe)) (_%g220041220187%_)))))
                  (let () (declare (not safe)) (_%g220041220187%_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx220826%_)
        (let* ((_%__stx223324223325%_ _%$stx220826%_)
               (_%g220831220865%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx223324223325%_))))
          (let ((_%__kont223327223328%_
                 (lambda (_%g220833220969%_
                          _%g220834220971%_
                          _%g220835220972%_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _%g220835220972%_
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'make-match-macro)
                                           (cons 'macro:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        '$match-e)
                                       (cons _%g220834220971%_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _%g220833220969%_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'syntax-case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$stx)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (cons 'match:
                                               (gx#datum->syntax '#f 'body))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-apply-expander)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$match-e)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-wrap-source)
                               (cons (cons (gx#datum->syntax '#f 'syntax)
                                           (cons (gx#datum->syntax '#f 'body)
                                                 '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'stx-source)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$stx)
                                                       '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f '_)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'core-apply-expander)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$macro-e)
                         (cons (gx#datum->syntax '#f '$stx) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont223329223330%_
                 (lambda (_%g220848220902%_
                          _%g220849220904%_
                          _%g220850220905%_)
                   (cons _%g220850220905%_
                         (cons _%g220849220904%_
                               (cons _%g220848220902%_
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$stx)
                                                             '())
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'raise-syntax-error)
                           (cons '#f
                                 (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                       (cons (gx#datum->syntax '#f '$stx)
                                             '()))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let ((_%__match223357223358%_
                   (lambda (_%e220836220929%_
                            _%hd220837220933%_
                            _%tl220838220936%_
                            _%e220839220939%_
                            _%hd220840220943%_
                            _%tl220841220946%_
                            _%e220842220949%_
                            _%hd220843220953%_
                            _%tl220844220956%_
                            _%e220845220959%_
                            _%hd220846220963%_
                            _%tl220847220966%_)
                     (let ((_%g220833220969%_ _%hd220846220963%_)
                           (_%g220834220971%_ _%hd220843220953%_)
                           (_%g220835220972%_ _%hd220840220943%_))
                       (if (gx#identifier? _%g220835220972%_)
                           (_%__kont223327223328%_
                            _%g220833220969%_
                            _%g220834220971%_
                            _%g220835220972%_)
                           (let ()
                             (declare (not safe))
                             (_%g220831220865%_)))))))
              (if (gx#stx-pair? _%__stx223324223325%_)
                  (let ((_%e220836220929%_
                         (gx#syntax-e _%__stx223324223325%_)))
                    (let ((_%tl220838220936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e220836220929%_)))
                          (_%hd220837220933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e220836220929%_))))
                      (if (gx#stx-pair? _%tl220838220936%_)
                          (let ((_%e220839220939%_
                                 (gx#syntax-e _%tl220838220936%_)))
                            (let ((_%tl220841220946%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e220839220939%_)))
                                  (_%hd220840220943%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e220839220939%_))))
                              (if (gx#stx-pair? _%tl220841220946%_)
                                  (let ((_%e220842220949%_
                                         (gx#syntax-e _%tl220841220946%_)))
                                    (let ((_%tl220844220956%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e220842220949%_)))
                                          (_%hd220843220953%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e220842220949%_))))
                                      (if (gx#stx-pair? _%tl220844220956%_)
                                          (let ((_%e220845220959%_
                                                 (gx#syntax-e
                                                  _%tl220844220956%_)))
                                            (let ((_%tl220847220966%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e220845220959%_)))
                                                  (_%hd220846220963%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e220845220959%_))))
                                              (if (gx#stx-null?
                                                   _%tl220847220966%_)
                                                  (_%__match223357223358%_
                                                   _%e220836220929%_
                                                   _%hd220837220933%_
                                                   _%tl220838220936%_
                                                   _%e220839220939%_
                                                   _%hd220840220943%_
                                                   _%tl220841220946%_
                                                   _%e220842220949%_
                                                   _%hd220843220953%_
                                                   _%tl220844220956%_
                                                   _%e220845220959%_
                                                   _%hd220846220963%_
                                                   _%tl220847220966%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g220831220865%_)))))
                                          (if (gx#stx-null? _%tl220844220956%_)
                                              (_%__kont223329223330%_
                                               _%hd220843220953%_
                                               _%hd220840220943%_
                                               _%hd220837220933%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g220831220865%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g220831220865%_)))))
                          (let () (declare (not safe)) (_%g220831220865%_)))))
                  (let () (declare (not safe)) (_%g220831220865%_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx220994%_)
        (let* ((_%g220998221013%_
                (lambda (_%g220999221009%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g220999221009%_)))
               (_%g220997221056%_
                (lambda (_%g220999221017%_)
                  (if (gx#stx-pair? _%g220999221017%_)
                      (let ((_%e221002221020%_
                             (gx#syntax-e _%g220999221017%_)))
                        (let ((_%hd221003221024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e221002221020%_)))
                              (_%tl221004221027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e221002221020%_))))
                          (if (gx#stx-pair? _%tl221004221027%_)
                              (let ((_%e221005221030%_
                                     (gx#syntax-e _%tl221004221027%_)))
                                (let ((_%hd221006221034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e221005221030%_)))
                                      (_%tl221007221037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e221005221030%_))))
                                  ((lambda (_%g221000221040%_
                                            _%g221001221042%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%g221001221042%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%g221000221040%_)
                                                       '()))))
                                   _%tl221007221037%_
                                   _%hd221006221034%_)))
                              (_%g220998221013%_ _%g220999221017%_))))
                      (_%g220998221013%_ _%g220999221017%_)))))
          (_%g220997221056%_ _%$stx220994%_))))))
